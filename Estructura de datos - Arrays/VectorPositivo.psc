//Programa que declare un vector de diez elementos enteros y pida n�meros para 
//rellenarlo hasta que se llene el vector o se introduzca un n�mero negativo. 
//Entonces se debe imprimir el vector (s�lo los elementos introducidos).

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
