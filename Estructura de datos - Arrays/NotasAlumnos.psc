//Se quiere realizar un programa que lea por teclado las 5 notas obtenidas por un 
//alumno (comprendidas entre 0 y 10). A continuación debe mostrar todas las notas, 
//la nota media, la nota más alta que ha sacado y la menor.

Proceso NotasAlumnos
	Definir notas,maxNota,minNota,i,j,todas Como Entero;;
	Dimension notas[5];
	Definir notaMedia Como Real;
	maxNota<-0;
	minNota<-10;
	todas<-0;
	para i<-0 Hasta 4 Hacer //Introduce las notas
		repetir 
			Escribir "Introduce nota";
			leer notas[i];
		Hasta Que notas[i]>=0 y notas[i]<=10
	FinPara
	
	
	para j<-0 hasta 4 Hacer //Todas las notas
		Escribir notas[j];
		si notas[j]>maxNota Entonces //maxima
			maxNota<-notas[j];
		FinSi
		si notas[j]<minNota Entonces //minima
			minNota<-notas[j];
		FinSi
		todas<-todas+notas[j]; //media
		notaMedia<-todas/5;
	FinPara
	Escribir "Nota maxima: ",maxNota;
	Escribir "Nota minima: ",minNota;
	Escribir "Nota media: ",notaMedia;
FinProceso
