Proceso Tabla
	
	Definir matriz Como Entero;
	Dimension matriz[5,5];
	Definir fila,columna,numFilas,numColumna,total como Entero;
	numFilas<-5;
	numColumna<-5;
	
	Para fila<-0 hasta numFilas-1 Hacer
		Para columna<-0 hasta numColumna-1 Hacer
			Escribir Sin Saltar "Introduce numero de fila ",fila+1," y columna ",columna+1;
			Leer matriz[fila,columna];
		FinPara
	FinPara

	Para fila<-0 hasta numFilas-1 Hacer 	//Suma de las filas
		total<-0;
		Para columna<-0 hasta numColumna-1 Hacer
			total<-total+ matriz[fila,columna];
		FinPara
		Escribir "Suma de las filas: ",fila+1," es ",total;
	FinPara

	Para columna<-0 hasta numColumna-1 Hacer 	//Suma de las columnas
		total<-0;
		Para fila<-0 hasta numFilas-1 Hacer
			total<-total+ matriz[fila,columna];
		FinPara
		Escribir "Suma de las columnas: ",columna+1," es ",total;
	FinPara
FinProceso	