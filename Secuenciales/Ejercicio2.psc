//Ejercicio 2
//Calcular el perímetro y área de un rectángulo dada su base y su altura.

Proceso Ejercicio2
	Definir ladoA,ladoB Como Real;
	Definir perimetro,area como Real;
	Escribir "Introduce lado A";
	Leer ladoA;
	Escribir  "Introduce lado B";
	Leer ladoB;
	area<-ladoA*ladoB;
	perimetro<-2*(ladoA+ladoB);
	Escribir "El area es: ",area;
	Escribir "El perimetro es: ",perimetro;
FinProceso
