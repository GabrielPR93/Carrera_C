//Un alumno desea saber cual será su calificación final en la materia de Algoritmos. Dicha calificación se compone de los siguientes porcentajes:
	
    //55% del promedio de sus tres calificaciones parciales.
    //30% de la calificación del examen final.
   //15% de la calificación de un trabajo final.

Proceso Ejercicio_10
	Definir notaParcial1,notaParcial2,notaParcial3,examenFinal,trabajoFinal como real;
	Definir notaTotal como real;
	Escribir "Introduce notaParcial 1";
	Leer notaParcial1;
	Escribir "Introduce notaParcial 2";
	Leer notaParcial2;
	Escribir "Introduce notaParcial 3";
	Leer notaParcial3;
	Escribir "Introduce nota del Examen Final";
	Leer examenFinal;
	Escribir "Introduce nota del trabajo final";
	Leer trabajoFinal;
	notaTotal<-((notaParcial1+notaParcial2+notaParcial3)/3)*0.55+0.3*examenFinal+0.15*trabajoFinal;
	Escribir "La nota final es: ",notaTotal;
	
FinProceso
