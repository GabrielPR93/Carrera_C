//Ejercicio 3
//Dados los catetos de un triángulo rectángulo, calcular su hipotenusa.

Proceso Ejercicio3
	Definir cateto1,cateto2,hipotenusa Como Real;
	Escribir "Introduce el cateto 1:";
	Leer cateto1;
	Escribir "Introduce la cateto 2:";
	Leer cateto2;
	hipotenusa <- raiz(cateto1 ^ 2 + cateto2 ^ 2);
	Escribir "La hipotenusa es ",hipotenusa;
FinProceso
