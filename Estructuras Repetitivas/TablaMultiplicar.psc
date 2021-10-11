//Realizar una algoritmo que muestre la tabla de multiplicar de un número 
//introducido por teclado.
Proceso TablaMultiplicar
	Definir numero,cont como entero;
	cont<-0;
	Escribir "Introduce numero";
	leer numero;
	Repetir
		Escribir numero," x ",cont," = ",numero*cont;
		cont<-cont+1;
	Hasta Que cont>10
	
FinProceso
