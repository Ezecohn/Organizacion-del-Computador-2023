.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGH,   480
	.equ SCREEN_HALF_HEIGH, 240
	.equ BITS_PER_PIXEL, 32
             
	.equ GPIO_BASE,    0x3f200000
	.equ GPIO_GPFSEL0, 0x00
	.equ GPIO_GPLEV0,  0x34
    

.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------
	mov x25, GPIO_BASE
	str wzr, [x25, GPIO_GPFSEL0]
	ldr w26, [x25, GPIO_GPLEV0]

comienzo:
//pasto 1//

mov x1, 8         			//seteo tamanio   (alto)
mov x2, 640					// seteo tamanio  (ancho)
movz x10, 0x00, lsl 16
movk x10, 0x8000, lsl 00	    //color marron claro
mov x3, 472		    		// x3 es la coordenada de Y
movz x4, 0				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//pasto 2//

mov x1, 8         			//seteo tamanio   (alto)
mov x2, 640					// seteo tamanio  (ancho)
movz x10, 0x00, lsl 16
movk x10, 0x8000, lsl 00	    //color marron claro
mov x3, 464		    		// x3 es la coordenada de Y
movz x4, 0				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//pasto 3//

mov x1, 8         			//seteo tamanio   (alto)
mov x2, 640					// seteo tamanio  (ancho)
movz x10, 0x00, lsl 16
movk x10, 0x8000, lsl 00	    //color marron claro
mov x3, 456		    		// x3 es la coordenada de Y
movz x4, 0				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

/////// mover objetos ///////////////////


//Gota #1//

    movz x24, 0xFF, lsl 16   // contador
	
    movz x10, 0xFF, lsl 16 
	movk x10, 0xFFFF, lsl 0      // 
	mov x1, 10	      		//seteo tamanio   (ancho)
    mov x2, 2               //medida del alto
	mov x3, 5 				//EJE Y
	mov x4, 0				//EJE X

	mov x11, 97



caida: 
	bl posicion
	bl trianguloinvertido
    ///////muevo gota 2////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 15
    add x3, x3, 2
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 3////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 32
    add x3, x3, 2
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8

    
    /////////////////////////////
    ///////muevo gota 4////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 55
    add x3, x3, 0
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 5////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 77
    add x3, x3, 0
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 6////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 95
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 6////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 110
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 135
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 158
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 175
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 8////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 190
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 9////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 215
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 10////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 235
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 11////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 255
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 12////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 255
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 13////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 272
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 14////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 295
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 15////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 315
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 16////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 337
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 17////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 355
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 18////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 370
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 19////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 395
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 20////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 418
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 21////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 435
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 22////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 455
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 23////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 475
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 24////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 493
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 25////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 515
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 26////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 537
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 27////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 555
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 28////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 575
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 29////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 595
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 30////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 616
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    
    bl gpio
	bl Delay
	bl fondolimpio1

	sub x11,x11,1
	add x3,x3,1 
	cbnz x11, caida

	add x3, x3, 3
	bl bloque1

////////////////////////linea 2 de gotas//////////////////////////////////
//Gota #1//

    
	
    movz x10, 0xFF, lsl 16 
	movk x10, 0xFFFF, lsl 0      // 
	mov x1, 10	      		//seteo tamanio   (ancho)
    mov x2, 2               //medida del alto
	mov x3, 5 				//EJE Y
	mov x4, 0				//EJE X

	mov x11, 100

caida2: 
	bl posicion
	bl trianguloinvertido
    ///////muevo gota 2////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 15
    add x3, x3, 2
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 3////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 32
    add x3, x3, 2
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 4////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 55
    add x3, x3, 0
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 5////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 77
    add x3, x3, 0
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 6////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 95
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 6////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 110
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 135
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 158
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 175
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 8////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 190
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 9////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 215
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 10////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 235
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 11////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 255
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 12////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 255
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 13////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 272
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 14////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 295
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 15////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 315
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 16////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 337
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 17////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 355
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 18////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 370
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 19////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 395
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 20////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 418
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 21////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 435
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 22////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 455
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 23////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 475
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 24////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 493
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 25////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 515
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 26////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 537
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 27////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 555
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 28////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 575
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 29////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 595
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 30////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 616
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    bl gpio
	bl Delay
	bl fondolimpio1

	sub x11,x11,1
	add x3,x3,1 
	cbnz x11, caida2

	add x3, x3, 3
	bl bloque2

////// linea 3 de gotas //////////////////
//Gota #1//

    
	
    movz x10, 0xFF, lsl 16 
	movk x10, 0xFFFF, lsl 0      // 
	mov x1, 10	      		//seteo tamanio   (ancho)
    mov x2, 2               //medida del alto
	mov x3, 5 				//EJE Y
	mov x4, 0				//EJE X

	mov x11, 100

caida3: 
	bl posicion
	bl trianguloinvertido
    ///////muevo gota 2////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 15
    add x3, x3, 2
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 3////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 32
    add x3, x3, 2
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 4////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 55
    add x3, x3, 0
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 5////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 77
    add x3, x3, 0
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    /////////////////////////////
    ///////muevo gota 6////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 95
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 6////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 110
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 135
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 158
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 7////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 175
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 8////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 190
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 9////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 215
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 10////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 235
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 11////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 255
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 12////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 255
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 13////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 272
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 14////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 295
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 15////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 315
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 16////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 337
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 17////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 355
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 18////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 370
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 19////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 395
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 20////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 418
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 21////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 435
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 22////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 455
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 23////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 475
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 24////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 493
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 25////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 515
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 26////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 537
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 27////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 555
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 28////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 575
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 29////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 595
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    ///////muevo gota 30////////
    sub sp,sp,8
    str x4,[sp,#0]
    mov x4, 616
    bl trianguloinvertido
    ldr x4, [sp,#0]
    add sp,sp,8
    ////////////////////////////
    bl gpio
	bl Delay
	bl fondolimpio1

	sub x11,x11,1
	add x3,x3, 4
	cbnz x11, caida3

	add x3, x3, 3
	bl bloque3

ret


/////////////////////////////////////////////////////////////////////////////

//// Delay ////

Delay:
sub sp,sp,8
str x24,[sp,#0]

stay11:
	sub x24, x24, 1
	cbnz x24, stay11

ldr x24, [sp,#0]
add sp,sp ,8

ret


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
fondolimpio1:
	sub sp,sp, #48 
    str x30,[sp,#0]
	str x1, [sp,#8]
	str x4, [sp,#16]
	str x3, [sp,#24]
    str x10, [sp,#32]
    str x2, [sp, #40]

movz x10, 0x40, lsl 0      //
movk x10, 0xFF00, lsl 16   // 

    mov x3, 0
    mov x4, 0
    bl posicion
	mov x2, 310         // Y Size
loop01:
	mov x1, SCREEN_WIDTH         // X Size
loop00:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop00  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop01  // Si no es la última fila, salto

	movz x6, 0x00, lsl 16   	//color verde
	movk x6, 0x8000, lsl 00		//

mov x3, 146 // Y Size
loop02:
    mov x4, SCREEN_WIDTH    // X Size
loop03:
    stur w6, [x0]   // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x4, x4, 1  // Decrementar contador X
    cbnz x4, loop03 // Si no terminó la fila, salto
    sub x3, x3, 1  // Decrementar contador Y
    cbnz x3, loop02 // Si no es la última fila, salto

//////////////////////////////////////////////
// l----------------- LUNA ----------------------------------------------------------
	movz x10, 0x00C2, lsl 16
	movk x10, 0xC3B0, lsl 00


// Montania 1 /////
bl luna

movz x10, 0x3B, lsl 16   	
movk x10, 0x0B0B, lsl 00	
mov x1, 266
mov x2, 4
mov x3, 310
mov x4, 0
bl posicion
bl triangulo

// montania 3 /////


movz x10, 0x3B, lsl 16   	
movk x10, 0x0B0B, lsl 00	
mov x1, 248
mov x2, 4
mov x3, 310
mov x4, 220
bl posicion
bl triangulo


mov x1, 240	      		//seteo tamanio   (alto)
mov x2, 200
mov x3, 0 				//EJE Y
mov x4, 450				//EJE X
movz x10, 0x40, lsl 0      //
movk x10, 0xFF00, lsl 16   // 
bl posicion
bl RectanguloPintado

// Montania 2 /////

movz x10, 0x3B, lsl 16   	
movk x10, 0x170B, lsl 00	
mov x1, 200
mov x2, 5
mov x3, 310
mov x4, 130
bl posicion
bl triangulo

////// Arbol 1 ////////

mov x1, 60         			//seteo tamanio   (alto)
mov x2, 30					// seteo tamanio  (ancho)
movz x10, 0x2A, lsl 16
movk x10, 0x120A, lsl 00	    //color marron claro
mov x3, 390		    		// x3 es la coordenada de Y
movz x4, 50				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//copa arbol 1//

movz x10, 0x17, lsl 16   	//color verde
movk x10, 0x3B0B, lsl 00	
mov x1, 90
mov x2, 4
mov x3, 390
mov x4, 20
bl posicion
bl triangulo


//copa arbol 1 2//

movz x10, 0x17, lsl 16   	//color verde
movk x10, 0x3B0B, lsl 00	
mov x1, 90
mov x2, 4
mov x3, 358
mov x4, 20
bl posicion
bl triangulo

// 	w10 -> Color.
		//	x1 -> Ancho.
		//  x2 -> Cantidad de filas a pintar antes de disminuir en 1 su valor (Altura = x1 * x2).
		// 	x3 -> Pixel Y.
		// 	x4 -> Pixel X.



//Arbol 2//

mov x1, 60         			//seteo tamanio   (alto)
mov x2, 30					// seteo tamanio  (ancho)
movz x10, 0x2A, lsl 16
movk x10, 0x120A, lsl 00	    //color marron claro
mov x3, 370		    		// x3 es la coordenada de Y
movz x4, 140				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//copa arbol 2 1//

movz x10, 0x17, lsl 16   	//color verde
movk x10, 0x3B0B, lsl 00	
mov x1, 90
mov x2, 4
mov x3, 370
mov x4, 110
bl posicion
bl triangulo
	

//copa arbol 2 2//

movz x10, 0x17, lsl 16   	//color verde
movk x10, 0x3B0B, lsl 00	
mov x1, 90
mov x2, 4
mov x3, 344
mov x4, 110
bl posicion
bl triangulo

//Arbol 3//

mov x1, 60         			//seteo tamanio   (alto)
mov x2, 30					// seteo tamanio  (ancho)
movz x10, 0x2A, lsl 16
movk x10, 0x120A, lsl 00	    //color marron claro
mov x3, 395		    		// x3 es la coordenada de Y
movz x4, 230				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//copa arbol 3 1//

movz x10, 0x17, lsl 16   	//color verde
movk x10, 0x3B0B, lsl 00	
mov x1, 90
mov x2, 4
mov x3, 395
mov x4, 200
bl posicion
bl triangulo
	

//copa arbol 3 2//

movz x10, 0x17, lsl 16   	//color verde
movk x10, 0x3B0B, lsl 00	
mov x1, 90
mov x2, 4
mov x3, 369
mov x4, 200
bl posicion
bl triangulo

//triangulito montania 1//

movz x10, 0xFF, lsl 16   	//blanco
movk x10, 0xFFFF, lsl 00	
mov x1, 42
mov x2, 4
mov x3, 86
mov x4, 112
bl posicion
bl triangulo

//triangulito montania 2//

movz x10, 0xFF, lsl 16   	//blanco
movk x10, 0xFFFF, lsl 00	
mov x1, 42
mov x2, 4
mov x3, 105
mov x4, 323
bl posicion
bl triangulo

//triangulito montania 3//

movz x10, 0xFF, lsl 16   	//blanco
movk x10, 0xFFFF, lsl 00	
mov x1, 24
mov x2, 4
mov x3, 37
mov x4, 218
bl posicion
bl triangulo


// casa cuadrado principal ///


mov x1, 110         			//seteo tamanio   (alto)
mov x2, 125						// seteo tamanio  (ancho)
movz x10, 0x61, lsl 16
movk x10, 0x210B, lsl 00	    //color marron claro
mov x3, 340		    		// x3 es la coordenada de Y
movz x4, 430				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

// rectangulo chimenea ///


mov x1, 55         			//seteo tamanio   (alto)
mov x2, 30						// seteo tamanio  (ancho)
movz x10, 0x61, lsl 16
movk x10, 0x210B, lsl 00	    //color marron claro
mov x3, 262	    		// x3 es la coordenada de Y
movz x4, 438				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

// rectangulo puerta ///


mov x1, 88         			//seteo tamanio   (alto)
mov x2, 40						// seteo tamanio  (ancho)
movz x10, 0x8A, lsl 16
movk x10, 0x0808, lsl 00	    //
mov x3, 362	    		// x3 es la coordenada de Y
movz x4, 500				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

// rectangulo ventana ///


mov x1, 40         			//seteo tamanio   (alto)
mov x2, 40						// seteo tamanio  (ancho)
movz x10, 0xFF, lsl 16
movk x10, 0xFFFF, lsl 00	    //
mov x3, 370	    		// x3 es la coordenada de Y
movz x4, 440				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

// rejas ventana ///


mov x1, 40         			//seteo tamanio   (alto)
mov x2, 4						// seteo tamanio  (ancho)
movz x10, 0x00, lsl 16
movk x10, 0x0000, lsl 00	    //
mov x3, 370	    		// x3 es la coordenada de Y
movz x4, 458				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

//rejas ventana //

mov x1, 4         			//seteo tamanio   (alto)
mov x2, 40						// seteo tamanio  (ancho)
movz x10, 0x00, lsl 16
movk x10, 0x0000, lsl 00	    //
mov x3, 388	    		// x3 es la coordenada de Y
movz x4, 440				// x4 es la coordenada de X
mov x19, 4 					//bits per pixel 
bl posicion
bl RectanguloPintado

///

//triangulito casa//

movz x10, 0x8A, lsl 16   	
movk x10, 0x0808, lsl 00	
mov x1, 164
mov x2, 3
mov x3, 340				// Y
mov x4, 410				// X
bl posicion
bl triangulo


// 	w10 -> Color.
		//	x1 -> Ancho.
		//  x2 -> Cantidad de filas a pintar antes de disminuir en 1 su valor (Altura = x1 * x2).
		// 	x3 -> Pixel Y.
		// 	x4 -> Pixel X

    ldr x2, [sp, #40]
    ldr x10, [sp,#32]
	ldr x3, [sp,#24]
	ldr x4, [sp,#16]
	ldr x1, [sp, #8]
	ldr x30,[sp,#0]
    add sp,sp, #32 
ret    

/////////////////////gpio////////////////////////////	
gpio:
    sub sp, sp, 32
	str  x11, [sp, #0]
	str  x9, [sp, #8]
	str  x26, [sp, #16]
	str  x4, [sp, #24]

	mov x25, GPIO_BASE
	str wzr, [x25, GPIO_GPFSEL0]
	ldr w26, [x25, GPIO_GPLEV0]
	and w11, w26, 0b00100000
	cbnz w11, reiniciar
    

	ldr x4, [sp,#24]
	ldr x26, [sp,#16]
	ldr x9, [sp, #8]
	ldr x11,[sp,#0]
    add sp,sp, #32 
    
ret

////////////////////////////////////////////
bloque1:
	sub sp, sp, 32
	str  x30, [sp, #0]
	str  x1, [sp, #8]
	str  x3, [sp, #16]
	str  x4, [sp, #24]

movz x10, 0xFF, lsl 16   	
movk x10, 0xFFFF, lsl 00
mov x1, 8
mov x2, 640
mov x3, 472
mov x4, 0

bl posicion
bl RectanguloPintado

	ldr x4,[sp,#24]
	ldr x3,[sp,#16]
	ldr x1,[sp,#8]
	ldr x30,[sp,#0]
    add sp,sp, 32  
ret
////////////////////////////////////////////////	
bloque2:
	sub sp, sp, 32
	str  x30, [sp, #0]
	str  x1, [sp, #8]
	str  x3, [sp, #16]
	str  x4, [sp, #24]

movz x10, 0xFF, lsl 16   	
movk x10, 0xFFFF, lsl 00
mov x1, 8
mov x2, 640
mov x3, 464
mov x4, 0

bl posicion
bl RectanguloPintado

	ldr x4,[sp,#24]
	ldr x3,[sp,#16]
	ldr x1,[sp,#8]
	ldr x30,[sp,#0]
    add sp,sp, 32  
ret

/////////////

bloque3:
	sub sp, sp, 32
	str  x30, [sp, #0]
	str  x1, [sp, #8]
	str  x3, [sp, #16]
	str  x4, [sp, #24]

movz x10, 0xFF, lsl 16   	
movk x10, 0xFFFF, lsl 00
mov x1, 8
mov x2, 640
mov x3, 456
mov x4, 0

bl posicion
bl RectanguloPintado


	ldr x4,[sp,#24]
	ldr x3,[sp,#16]
	ldr x1,[sp,#8]
	ldr x30,[sp,#0]
    add sp,sp, 32  


//////////////////////////mover/////////////////////////
    movz x10, 0xD3, lsl 16   	
    movk x10, 0x58F7, lsl 00
    mov x1, 40
    mov x2, 40
    mov x3, 300
    mov x4, 240
    bl posicion
    bl RectanguloPintado

lectura:

	mov x25, GPIO_BASE
	str wzr, [x25, GPIO_GPFSEL0]
	ldr w26, [x25, GPIO_GPLEV0]
	and w11, w26, 0b00000010
	cmp w11, 0b00000010
    beq arriba
    
    and w11, w26, 0b00000100
	cmp w11, 0b00000100
    beq izquierda

    and w11, w26, 0b00001000
	cmp w11, 0b00001000
    beq abajo
    
    and w11, w26, 0b00010000
	cmp w11, 0b00010000
    beq derecha

    and w11, w26, 0b00100000
	cmp w11, 0b00100000
    beq cambio_color


sub sp,sp,8
str x24,[sp,#0]
movz x24, 0x2F, lsl 16   // contador

stay12:
	sub x24, x24, 1
	cbnz x24, stay12

ldr x24, [sp,#0]
add sp,sp ,8


    bl lectura
ret
///////////////////////////////
arriba:
 cmp x3, -4
 ble lectura
 sub x3,x3,5
 bl fondolimpio1
 bl posicion
 bl RectanguloPintado
 bl lectura

ret

izquierda:
 sub x4,x4,5
 bl fondolimpio1
 bl posicion
 bl RectanguloPintado
 bl lectura

ret

abajo:
 cmp x3, 480
 bgt lectura
 add x3,x3,5
 bl fondolimpio1
 bl posicion
 bl RectanguloPintado
 bl lectura

ret

derecha:
 add x4,x4,5
 bl fondolimpio1
 bl posicion
 bl RectanguloPintado
 bl lectura

ret

cambio_color:
 add x10, x10, 0X5
 bl posicion
 bl RectanguloPintado
 bl lectura


////////////////////




//////////////

RectanguloPintado:
mov x14, x1 				//salvo en x14 el alto 
siguiente:
	mov x15, x2        		//salvo en x15 el largo
raya:
	stur w10,[x0]	   		// Seteo el color del pixel N
	add x0,x0,4	   			// proximo pixel
	sub x15,x15,1	   		// decrement X counter
	cbnz x15, raya	 		//si no termine de pintar la primera raya pinto el proximo pixel 
	sub x14, x14, 1 		//decrement y counter 
	msub x0, x19, x2, x0    //vuelvo al principio de la linea x0 - x2 * 4	= x0	
	madd x0, x21, x19, x0 	//muevo el puntero al inicio de la proxima linea (640*4+x0)=x0
	cbnz x14, siguiente	


posicion:
sub sp,sp, #16
str x3,[sp,#0]
str x4,[sp,#8]
mov x21 , SCREEN_WIDTH	//seteo x21 con mi largo de pantalla	

mov x0, x20				//seteo x0 en primer pixel
mov x13, xzr			//seteo el x13 en vacio x13 registro auxiliar
madd x13, x3, x21, x4	//en x13 guardo el resultado de 640*x3 (coord de y) + x
lsl x13, x13, 2         //multiplico mi resultado anterior por lo que ocupa cada pixel (4)
add x0,x0, x13			//guardo en x0 lo que calcule en mi registro aux

ldr x4,[sp,#8]  
ldr x3, [sp,#0] 
add sp,sp, #16  
ret

///////////////////////////////////////triangulo///////////////////////////////////////////////////////////////////////////////////////////////////
triangulo:
// 	Parametros:
		// 	w10 -> Color.
		//	x1 -> Ancho.
		//  x2 -> Cantidad de filas a pintar antes de disminuir en 1 su valor (Altura = x1 * x2).
		// 	x3 -> Pixel X.
		// 	x4 -> Pixel Y.

		SUB SP, SP, 8 						// Apuntamos en el stack.
		STR X30, [SP, 0]					// Salvamos en el stack el registro de retorno (x30). 
        BL posicion 			// Calculamos el pixel a dibujar con la función "calcular_pixel". Retorna x0.
		LDR X30, [SP, 0]					// Le asignamos x30 su posición de retorno desde el stack. (Anteriormente fue pisada al llamar calcular_pixel). 			
		ADD SP, SP, 8						// Dejamos el stack como antes.
		
		// Usamos los registros temporales: x9, x11, x12, x13
		mov x13, x0							// x13 = x0 --> A x13 le guardamos la posición de x0 calculada.
		mov x14, x1							// x14 = x1 --> A x14 le asignamos el ancho de la fila.
		
        sub sp, sp, 8
	    str  x11, [sp, #0]

		pintar_triangulo:
			mov x15, x2							// x15 = x2  --> A x15 le asignamos la cantidad de filas a pintar antes de disminuir el ancho de la fila actual.
			pintar_fila:
				mov x11, x14					// x11 = x14 --> A x11 le asignamos el ancho de la fila.
				mov x12, x13					// x12 = x13 --> A x12 le guardamos x13 (En esta parte de la ejecucción a x12 se le guarda el pixel inicial de la fila).
				
				color_triangulo:
					stur w10, [x13]				// Memory[x13] = w10 --> A x13 le asignamos en memoria el color que respresenta w10.
					add x13, x13, 4				// w13 = w13 + 4 --> x13 se mueve un pixel hacia la derecha.
					sub x11, x11, 1				// w11 = w11 - 1 --> x11 le restamos un pixel de ancho.
					cbnz x11, color_triangulo	// Si x11 <= 0 (la fila no se termino de pintar), seguimos pintandola.
					
				mov x13, x12					// En esta parte, ya se termino de pintar la fila. x13 = x12. Volvemos al pixel de origen de la fila.
				sub x13, x13, 2560				// Pasamos a la siguiente fila.
				sub x15, x15, 1					// x15 = x15 - 1. Le restamos 1 a x15 para pintar al siguiente fila del mismo ancho que la anterior.
				cbnz x15, pintar_fila
				
				mov x13, x12				// En esta parte, ya se termino de pintar la fila. x13 = x12. Volvemos al pixel de origen de la fila.
				add x13, x13, 2564			// x13 = x13 + 2562. La constante 2560 es el total de pixeles de una fila, el numero 4 que se suma a 2560 sirve para movernos 
											//	1 pixel (4 posiciones) hacia la derecha. entonces si lo sumamos es como dar un salto de linea movido 1 pixeles a la derecha.
				sub x14, x14, 2				// x14 = x14 - 2. A x14 le restamos 2 para disminuir el ancho de la siguiente fila en 1 pixel.
				cbnz x14, pintar_triangulo
  
                ldr x11, [sp,#0] 
                add sp,sp, #8 
	ret

///////////////////////////////////////////////////////////	

trianguloinvertido:
// 	Parametros:
		// 	w10 -> Color.
		//	x1 -> Ancho.
		//  x2 -> Cantidad de filas a pintar antes de disminuir en 1 su valor (Altura = x1 * x2).
		// 	x3 -> Pixel X.
		// 	x4 -> Pixel Y.

		SUB SP, SP, 8 						// Apuntamos en el stack.
		STR X30, [SP, 0]					// Salvamos en el stack el registro de retorno (x30). 
        BL posicion 			// Calculamos el pixel a dibujar con la función "calcular_pixel". Retorna x0.
		LDR X30, [SP, 0]					// Le asignamos x30 su posición de retorno desde el stack. (Anteriormente fue pisada al llamar calcular_pixel). 			
		ADD SP, SP, 8						// Dejamos el stack como antes.
		
		// Usamos los registros temporales: x9, x11, x12, x13
		mov x13, x0							// x13 = x0 --> A x13 le guardamos la posición de x0 calculada.
		mov x14, x1							// x14 = x1 --> A x14 le asignamos el ancho de la fila.
		
        sub sp, sp, 8
	    str  x11, [sp, #0]

		pintar_triangulo_invertido:
			mov x15, x2							// x15 = x2  --> A x15 le asignamos la cantidad de filas a pintar antes de disminuir el ancho de la fila actual.
			pintar_fila_invertido:
				mov x11, x14					// x11 = x14 --> A x11 le asignamos el ancho de la fila.
				mov x12, x13					// x12 = x13 --> A x12 le guardamos x13 (En esta parte de la ejecucción a x12 se le guarda el pixel inicial de la fila).
				
				color_triangulo_invertido:
					stur w10, [x13]				// Memory[x13] = w10 --> A x13 le asignamos en memoria el color que respresenta w10.
					add x13, x13, 4				// w13 = w13 + 4 --> x13 se mueve un pixel hacia la derecha.
					sub x11, x11, 1				// w11 = w11 - 1 --> x11 le restamos un pixel de ancho.
					cbnz x11, color_triangulo_invertido	// Si x11 <= 0 (la fila no se termino de pintar), seguimos pintandola.
					
				mov x13, x12					// En esta parte, ya se termino de pintar la fila. x13 = x12. Volvemos al pixel de origen de la fila.
				add x13, x13, 2560				// Pasamos a la siguiente fila.
				sub x15, x15, 1					// x15 = x15 - 1. Le restamos 1 a x15 para pintar al siguiente fila del mismo ancho que la anterior.
				cbnz x15, pintar_fila_invertido
				
				mov x13, x12				// En esta parte, ya se termino de pintar la fila. x13 = x12. Volvemos al pixel de origen de la fila.
				add x13, x13, 2564			// x13 = x13 + 2562. La constante 2560 es el total de pixeles de una fila, el numero 4 que se suma a 2560 sirve para movernos 
											//	1 pixel (4 posiciones) hacia la derecha. entonces si lo sumamos es como dar un salto de linea movido 1 pixeles a la derecha.
				sub x14, x14, 2				// x14 = x14 - 2. A x14 le restamos 2 para disminuir el ancho de la siguiente fila en 1 pixel.
				cbnz x14, pintar_triangulo_invertido
  
                ldr x11, [sp,#0] 
                add sp,sp, #8 
	ret
    circulo://radio x7, pos centro en eje x en x8, pos centro en eje y en x9
	sub sp, sp, #72 
	str x0,[sp,#0]
	str x1,[sp, #8]
	str x5, [sp, #16]
	str x30, [sp, #24]
	str x11, [sp, #32]
	str x12, [sp, #40]
	str x13, [sp, #48]
	str x14, [sp, #56]
	str x6, [sp, #54]
	sub x11, x8, x7//x11=y-r
	sub x13, x9, x7//x13=x-r
	add x12, x8, x7//x12=y+r
	add x14, x9, x7//x14=x+r
	cmp x11, xzr
	blt aux_0
vuelvo_de_aux_0:
	mov x5, SCREEN_HEIGH
	cmp x12, x5
	bgt aux_MAX
vuelvo_de_aux_MAX:
    mov x1, x11   // x1 = altura inicial
	mul x7, x7, x7 // x7=r²
        circle_row_loop:
            mov x0, x13  // x0 = ancho inicial

            circle_column_loop:
				sub x5, x0, x9//x5=(ancho-x)
				mul x5, x5, x5//x5=(ancho-x)²
				sub x6, x1, x8//x6=(altura-y)
				mul x6, x6, x6//x6=(altura-y)²
				add x5, x6, x5//x5=(ancho-x)² + x6=(altura-y)²
				cmp x5, x7//(ancho-x)² + x6=(altura-y)² <= r²
				ble aux_paint
			vuelvo_de_aux_paint:

                add x0, x0, #1          // Incrementar el valor de ancho
                cmp x0, x14            // Comparar el valor de ancho con el valor final
                blt circle_column_loop

            add x1, x1, #1          // Incrementar el valor de altura
            cmp x1, x12            // Comparar el valor de altura con el valor final
            blt circle_row_loop
	ldr x0,[sp,#0]
	ldr x1,[sp, #8]
	ldr x5, [sp, #16]
	ldr x30, [sp, #24]
	ldr x11, [sp, #32]
	ldr x12, [sp, #40]
	ldr x13, [sp, #48]
	ldr x14, [sp, #56]
	ldr x6, [sp, #64]
	add sp, sp, #72
    ret //ojo que la funcion cambia los valores de x0,x1,x2 y x5, si hace falta mantenerlos despues los mandamos al stack y devolvemos

	aux_0://pone un 0 en x11
	mov x11, 0x0
	b vuelvo_de_aux_0

aux_MAX:
	mov x12, SCREEN_HEIGH
	b vuelvo_de_aux_MAX

aux_paint:
	BL paint_pixel
	b vuelvo_de_aux_paint


	paint_pixel://colorea el pixel (x0, x1) con el color en x10
	sub sp, sp, #8
	str x5, [sp, #0]
	mov x5, SCREEN_WIDTH
    mul x5, x1, x5         // x5 = altura * SCREEN_WIDTH
    add x5, x5, x0         // x5 = altura * SCREEN_WIDTH + ancho
    lsl x5, x5, #2         // x5 = (altura * SCREEN_WIDTH + ancho) * 4 (para convertir a bytes)
    add x5, x5, x20        // x5 = dirección base del framebuffer + (alto * SCREEN_WIDTH + ancho) * 4
    stur w10, [x5]         // Almacenar el valor de color en la dirección de memoria del píxel
	ldr x5, [sp, #0]       // devuelvo el valor original de x5
	add sp, sp, #8		   // regreso el valor de sp
	ret	
///////////////////////////////////////////////////////////	
luna:
    sub sp, sp, #72 
	str x0,[sp,#0]
	str x1,[sp, #8]
	str x5, [sp, #16]
	str x30, [sp, #24]
	str x11, [sp, #32]
	str x12, [sp, #40]
	str x13, [sp, #48]
	str x14, [sp, #56]
	str x6, [sp, #54]
    movz x10, 0x00C2, lsl 16
	movk x10, 0xC3B0, lsl 00

	mov x2, SCREEN_HEIGH       // Y Size
	mov x11, 5		//diferencia entre la pos del eje x del centro y radio del circulo
	mov x13, 1		//diferencia entre la pos del eje y del centro y radio del circuilo
	mov x14, 30		//suma entre la pos en el eje x del centro del circulo y el radio del circulo
	mov x7,85 		//radio del circulo 
	mov x8,95		//centro en eje y 
	mov x9,323		//centro en eje x	
	bl circulo
    ldr x0,[sp,#0]
	ldr x1,[sp, #8]
	ldr x5, [sp, #16]
	ldr x30, [sp, #24]
	ldr x11, [sp, #32]
	ldr x12, [sp, #40]
	ldr x13, [sp, #48]
	ldr x14, [sp, #56]
	ldr x6, [sp, #64]
	add sp, sp, #72
    ret
// Montania 1 /////



///////////////////////////////////////////////////////////////
	

	//---------------------------------------------------------------


//////////////////////////////////////////////////////////////
	reiniciar:
    bl comienzo

	ret


////////////////////////////////////////////////////    
	// Infinite Loop
InfLoop:
	b InfLoop
    