//Crear una función que calcule la temperatura media de un día a partir de la temperatura máxima y mínima.
//Crear un programa principal, que utilizando la función anterior, vaya pidiendo la temperatura máxima y mínima de cada día y vaya mostrando la media.
//El programa pedirá el número de días que se van a introducir.

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

