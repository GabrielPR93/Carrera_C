//Queremos guardar la temperatura mínima y máxima de 5 días. realiza un programa que de la siguiente información:
// * La temperatura media de cada día
// * El dia con menos temperatura
// * Se lee una temperatura por teclado y se muestran los días cuya temperatura máxima coincide con ella.
//Si no existe ningún día se muestra un mensaje de información.

Proceso TemperaturaMaxMin
	Definir temperatura,tempMedia,tempMax,tempMin,tempPedida como real;
	Dimension temperatura[5,2];
	Definir tamanho,i,j,k,g,h,indiceDia como entero;
	Definir flag Como Logico;
	tamanho<-5;
	tempMedia<-0;
	tempMin<-100;
	indiceDia<--1;
	flag<-Verdadero;
	
	para i<-0 hasta tamanho-1 Con Paso 1 Hacer
		Escribir "Introduce temperatura max";
		leer temperatura[i,0];
		Escribir "Introduce temperatura min";
		leer temperatura[i,1];
		
	FinPara
	j<-0;
	para j<-0 hasta tamanho-1 con paso 1 Hacer //Muestra temperaturas max y min
		Escribir "Dia ",j+1," Temperatura maxima:",temperatura[j,0];
		Escribir "Dia ",j+1," Temperatura minima:",temperatura[j,1];
		Escribir "################################################";
	FinPara
	
	para k<-0 hasta tamanho-1 Con Paso 1 Hacer //Muestra la media de temperatura
		tempMedia<-(temperatura[k,0]+temperatura[k,1])/2;
		Escribir "Dia ",k+1," Temperatura media: ",tempMedia;
	FinPara
	Escribir "################################################";
	
	para g<-0 hasta tamanho-1 con paso 1 Hacer //temperatura minima
		si temperatura[g,1]<tempMin Entonces
			tempMin<-temperatura[g,1];
			indiceDia<-g;
		FinSi
	FinPara
	Escribir "El dia ",indiceDia," es el dia con menor temperatura con ",tempMin;
	Escribir "################################################";
	
	Escribir "Introduce temperatura maxima del dia a buscar";//Temperatura del dia pedido
	leer tempPedida;
	para h<-0 hasta tamanho-1 con paso 1 Hacer
		si temperatura[h,0]=tempPedida Entonces
			Escribir "Dia ",h," - ",temperatura[h,0];
			flag<-falso;
		FinSi
	FinPara
	si flag Entonces
		Escribir "No hay ningun dia con esa temperatura";
	FinSi
FinProceso
