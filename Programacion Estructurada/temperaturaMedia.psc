//Crear una funci�n que calcule la temperatura media de un d�a a partir de la temperatura m�xima y m�nima.
//Crear un programa principal, que utilizando la funci�n anterior, vaya pidiendo la temperatura m�xima y m�nima de cada d�a y vaya mostrando la media.
//El programa pedir� el n�mero de d�as que se van a introducir.

Funcion tempMedia <- calculoTempMedia (tempMaxima,tempMInima) //Funcion de calcular la temperatura media
	Definir tempMedia Como Real;
	tempMedia<-(tempMaxima+tempMinima)/2;	
FinFuncion

Proceso temperaturaMedia 									//Principal
	Definir tempMax,tempMIn,cant Como Real;
	Definir cont Como Entero;
	cont<-0;
	Escribir "Cuantos dias vas a introducir ?";
	leer cant;
	Repetir
		Escribir "Introduce temperatura maxima";
		leer tempMax;
		Escribir "Introduce temperatura minima";
		Leer tempMIn;
		Escribir "La temperatura media es de: ",calculoTempMedia(tempMax,tempMIn);
		cont<-cont+1;
	Hasta Que cont=cant;
	
FinProceso

