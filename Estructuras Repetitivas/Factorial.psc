//Crea una aplicaci�n que pida un n�mero y calcule su factorial (El factorial de 
//un n�mero es el producto de todos los enteros entre 1 y el propio n�mero y se 
//representa por el n�mero seguido de un signo de exclamaci�n. 
//Por ejemplo 5! = 1x2x3x4x5=120)

Proceso Factorial
	Definir numero,acumulador,cont como entero;
	cont<-1;
	acumulador<-1;
	Escribir "Introduce numero";
	Leer numero;
	mientras cont <= numero Hacer
		acumulador<-acumulador*cont;
		cont<-cont+1;
	FinMientras
	Escribir "El factorial de ",numero," es ",acumulador;
FinProceso
