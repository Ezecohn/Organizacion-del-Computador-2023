.ifndef _gpiom_
.equ _gpiom_, 0
.include "constantes.s"


movimiento:
    sub sp, sp, 40
    stur x14, [sp, 0]
    stur x11, [sp, 8]
    stur x12, [sp, 16]
    stur x13, [sp, 24]
    stur lr, [sp, 32]


    // Lee el estado de los GPIO 0 - 31
	ldr w14, [x9, GPIO_GPLEV0]
	mov w11,wzr
	// ---------- W -----------------------------------------------------
	and w11, w14, 0b00000010 // Mascara para w en w11
	cbz w11, end_w 		// Si w fue presionada, imprime a bomber 1 pixel hacia arriba
		cmp x2, -5
		add x10, x10, 0xF
        ble end_w 
       
	end_w:
	// ---------- A -----------------------------------------------------
	and w11, w14, 0b00000100 // Mascara para a en w11
	cbz w11, end_a 		// Si a fue presionada, imprime a bomber 1 pixel hacia la izquierda
		
	end_a:
	// ---------- S -----------------------------------------------------
	and w11, w14, 0b00001000 // Mascara para s en w11
	
	cbz w11, end_s 		// Si s fue presionada, imprime a bomber 1 pixel hacia abajo
		
	end_s:
	// ---------- D -----------------------------------------------------
	and w11, w14, 0b00010000 // Mascara para d en w11
	cbz w11, end_d 		// Si d fue presionada, imprime a bomber 1 pixel hacia la derecha
	sub x8,x8,10	
	end_d:

	
	mov x19,0XFFF
	lsl x19,x19,12
   delayteclil:
	sub x19,x19,1
	cbnz x19,delayteclil

    
    ldur x14, [sp, 0]
    ldur x11, [sp, 8]
    ldur x12, [sp, 16]
    ldur x13, [sp, 24]
    ldur lr, [sp, 32]
    add sp, sp, 40
ret




.endif
