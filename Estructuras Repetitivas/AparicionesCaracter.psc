//Pide una cadena y un car�cter por teclado (valida que sea un car�cter) 
//y muestra cuantas veces aparece el car�cter en la cadena.

Proceso AparicionesCaracter
	
	Definir cadena,caracter Como Caracter;
	Definir cont,cont1 Como Entero;
	cont1<-0;
	cont<-0;
	Escribir "Introduce cadena";
	leer cadena;
	Repetir
		Escribir "Introduce caracter";
		leer Caracter;
	Hasta Que Longitud(caracter)==1;
	mientras cont1<Longitud(cadena) hacer 
		si caracter==SubCadena(cadena,cont1,cont1) Entonces
			cont<-cont+1;
		FinSi
		cont1<-cont1+1;
	FinMientras
	Escribir "El caracter esta ",cont," veces";
FinProceso
