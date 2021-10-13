//Crea una funci�n "calcularMaxMin" que recibe una arreglo con valores n�merico y devuelve el valor m�ximo y el m�nimo.
//Crea un programa que pida 3 n�meros por teclado y muestre el m�ximo y el m�nimo, utilizando la funci�n anterior.

Funcion calcularMaxMin(vector,tamanho,max Por Referencia,min Por Referencia)
	Definir cont Como Entero;
	max<-vector[0];
	min<-vector[0];
	
	para cont<-0 Hasta tamanho-1 Con Paso 1 Hacer
		si vector[cont]>max Entonces
			max<-vector[cont];
		FinSi
		si vector[cont]<min Entonces
			min<-vector[cont];
		FinSi
	FinPara
FinFuncion

Proceso maximoMinimo
	Definir temperaturas,i,tempMax,tempMin Como Entero;
	Definir num,j Como Entero;
	Definir numeros Como Entero;
	Dimension temperaturas[5];
	Dimension numeros[3];
	para i<-0 hasta 4 Con Paso 1 Hacer //se rellena el vector
		temperaturas[i]<-Aleatorio(0,10);
	FinPara
	calcularMaxMin(temperaturas,5,tempMax,tempMin); //llamada a la funcion
	Escribir "La temperatura maxima es: ",tempMax;
	Escribir "La temperatura minima es: ",tempMin;
	Escribir "----------------------------------------";
	
	para j<-0 hasta 2 con paso 1 Hacer //2� parte del programa
		Escribir "Introduce numero";
		leer num;
		numeros[j]<-num;
	FinPara
	calcularMaxMin(numeros,3,tempMax,tempMin);
	Escribir "La temperatura maxima es: ",tempMax;
	Escribir "La temperatura minima es: ",tempMin;
	
	
FinProceso
