//Realizar un programa que dada una cadena de caracteres por caracteres, genere 
//otra cadena resultado de invertir la primera.

Proceso InvertirCadena
	Definir cadena,invertida Como Caracter;
	Definir cont como Entero;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cadena;
	invertida<-"";
	Para cont<-Longitud(cadena)-1 hasta 0 Con Paso -1 Hacer
		invertida<-concatenar(invertida,Subcadena(cadena,cont,cont));
	FinPara
	Escribir "La cadena invertida es:",invertida;
FinProceso