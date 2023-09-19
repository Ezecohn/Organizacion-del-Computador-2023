// byte -> GPIO look-up-table
// refer to https://www.raspberrypi.com/documentation/computers/raspberry-pi.html
// for more info on GPIOs

static const char GPIO_MAP[256] = {
    ['w'] = 1,
    ['a'] = 2,
    ['s'] = 3,
    ['d'] = 4,
    [' '] = 5,
};
