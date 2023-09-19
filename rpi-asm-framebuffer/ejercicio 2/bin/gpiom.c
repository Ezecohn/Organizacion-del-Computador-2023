// KUDOS
// - https://cs.unibo.it/~davide.berardi6/post/20201204-1.html
// - https://github.com/berdav/qemu-rpi-gpio

#include <sys/socket.h>
#include <sys/un.h>
#include <termios.h>
#include <unistd.h>

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include "key.conf.h"

#define GPIO_BASE 0x3f200000
#define GPSET0    0x1c
#define GPCLR0    0x28
#define GPLEV0    0x34

#define ASCII_ESC 27

static const char *SOCK_FILE = "/tmp/qtest.sock";

ssize_t writel(int sockfd, uint64_t address, uint32_t value) {
    char message[64] = { 0 };
    snprintf(message, sizeof(message), "writel 0x%lX 0x%X\n", address, value);

    return write(sockfd, message, strlen(message));
}

ssize_t set(int sockfd, char gpionum) {
    uint64_t address = GPIO_BASE + GPSET0 + gpionum / 32;
    uint32_t gpio = 1 << (gpionum % 32);

    return writel(sockfd, address, gpio);
}

ssize_t clear(int sockfd, char gpionum) {
    uint64_t address = GPIO_BASE + GPCLR0 + gpionum / 32;
    uint32_t gpio = 1 << (gpionum % 32);

    return writel(sockfd, address, gpio);
}

void loop(int sockfd) {
    struct termios old_term, new_term;
    tcgetattr(STDIN_FILENO, &old_term);

    // send input character-by-character without need of LF or EOF
    new_term = old_term;
    new_term.c_cc[VMIN] = 0;
    new_term.c_cc[VTIME] = 1;
    new_term.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &new_term);

    bool should_clear = true;
    ssize_t read_data = 0;
    unsigned char prev = 0, curr = 0;
    while (curr != ASCII_ESC) {
        prev = curr;
        read_data = read(STDIN_FILENO, &curr, sizeof(curr));

        if (read_data == 0 && should_clear) {
            clear(sockfd, GPIO_MAP[prev]);
            prev = curr = 0;
        } else if (prev != curr) {
            write(STDOUT_FILENO, &curr, sizeof(curr));
            clear(sockfd, GPIO_MAP[prev]);
            set(sockfd, GPIO_MAP[curr]);
        }

        should_clear = read_data > 0;
    }

    // restore terminal
    tcsetattr(STDIN_FILENO, TCSANOW, &old_term);
}

int main(void) {
    int sockfd = socket(AF_UNIX, SOCK_STREAM, 0);

    if (sockfd < 0) {
        fprintf(stderr, "unable to create socket\n");
        _exit(1);
    }

    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(addr));

    addr.sun_family = AF_UNIX;
    strncpy(addr.sun_path, SOCK_FILE, sizeof(addr.sun_path));

    int conn_success = connect(sockfd, (const struct sockaddr *) &addr, sizeof(addr));

    if (conn_success < 0) {
        fprintf(stderr, "unable to connect to unix socket at %s\n", SOCK_FILE);
        _exit(1);
    }

    loop(sockfd);

    close(sockfd);
}
