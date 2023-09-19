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

	movz x10, 0x40, lsl 0      //
    movk x10, 0xFF00, lsl 16   // 


	mov x2, 310         // Y Size
loop1:
	mov x1, SCREEN_WIDTH         // X Size
loop0:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4    // Siguiente pixel
	sub x1,x1,1    // Decrementar contador X
	cbnz x1,loop0  // Si no terminó la fila, salto
	sub x2,x2,1    // Decrementar contador Y
	cbnz x2,loop1  // Si no es la última fila, salto

	movz x6, 0x00, lsl 16   	//color verde
	movk x6, 0x8000, lsl 00		//

mov x3, 170 // Y Size
loop2:
    mov x4, SCREEN_WIDTH    // X Size
loop3:
    stur w6, [x0]   // Colorear el pixel N
    add x0, x0, 4  // Siguiente pixel
    sub x4, x4, 1  // Decrementar contador X
    cbnz x4, loop3 // Si no terminó la fila, salto
    sub x3, x3, 1  // Decrementar contador Y
    cbnz x3, loop2 // Si no es la última fila, salto

//////////////////////////////////////////////

// Montania 1 /////

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

movz x10, 0xFF, lsl 16   	//color verde
movk x10, 0xFFFF, lsl 00	
mov x1, 42
mov x2, 4
mov x3, 86
mov x4, 112
bl posicion
bl triangulo

//triangulito montania 2//

movz x10, 0xFF, lsl 16   	//color verde
movk x10, 0xFFFF, lsl 00	
mov x1, 42
mov x2, 4
mov x3, 105
mov x4, 323
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
		// 	x4 -> Pixel X.


//////////////////////

gpio:			
	mov x25, GPIO_BASE
	str wzr, [x25, GPIO_GPFSEL0]
	ldr w26, [x25, GPIO_GPLEV0]
	and w11, w26, 0b00000010
	cmp w11, 0b00000010
    beq cambiar_color

	sub sp,sp,8
str x24,[sp,#0]
movz x24, 0x2F, lsl 16   // contador

stay12:
	sub x24, x24, 1
	cbnz x24, stay12

ldr x24, [sp,#0]
add sp,sp ,8

	bl gpio

ret


	


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
		STUR X30, [SP, 0]					// Salvamos en el stack el registro de retorno (x30).
		BL posicion 			// Calculamos el pixel a dibujar con la función "calcular_pixel". Retorna x0.
		LDR X30, [SP, 0]					// Le asignamos x30 su posición de retorno desde el stack. (Anteriormente fue pisada al llamar calcular_pixel). 			
		ADD SP, SP, 8						// Dejamos el stack como antes.
		
		// Usamos los registros temporales: x9, x11, x12, x13
		mov x13, x0							// x13 = x0 --> A x13 le guardamos la posición de x0 calculada.
		mov x14, x1							// x14 = x1 --> A x14 le asignamos el ancho de la fila.
		
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
ret

/////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////
	cambiar_color:
	//triangulito casa//

	add x10, x10, 1

	mov x1, 164
	mov x2, 3
	mov x3, 340				// Y
	mov x4, 410				// X
	bl posicion
	bl triangulo
	bl gpio

	ret

///////////////////////////////////////////////////////////	


	//---------------------------------------------------------------
	// Infinite Loop
InfLoop:
	b InfLoop
	