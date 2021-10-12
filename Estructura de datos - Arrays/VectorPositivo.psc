//Programa que declare un vector de diez elementos enteros y pida números para 
//rellenarlo hasta que se llene el vector o se introduzca un número negativo. 
//Entonces se debe imprimir el vector (sólo los elementos introducidos).

Proceso VectorPositivo
	Definir vector,i,tamanhoVector,j como entero;
	Dimension vector[5];
	tamanhoVector<-5;
	i<-0;
	j<-0;
	Repetir
		Escribir "Introduce numero";
		Leer vector[i];
		i<-i+1;
	Hasta Que i=tamanhoVector o vector[i-1]<0
	j<-0;
	mientras j<=tamanhoVector-1 y vector[j]>=0 Hacer
		Escribir vector[j];
		j<-j+1;
	FinMientras
FinProceso
