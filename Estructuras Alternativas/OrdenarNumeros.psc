//Algoritmo que pida tres números y los muestre ordenados (de mayor a menor);

Proceso OrdenarNumeros
	Definir numero1,numero2,numero3 Como Entero;
	Escribir "Introduce numero 1";
	leer numero1;
	Escribir "Introduce numero 2";
	Leer numero2;
	Escribir "Introduce numero 3";
	Leer numero3;
	si numero1>numero2 y numero1> numero3 Entonces
		si numero2>numero3 Entonces
			Escribir numero1,numero2,numero3;
		SiNo
			Escribir numero1,numero3,numero2;
		FinSi
	FinSi
	
	si numero2>numero1 y numero2>numero3 Entonces
		si numero1>numero3 Entonces
			Escribir numero2,numero1,numero3;
		SiNo
			Escribir numero2,numero3,numero1;
		FinSi
	FinSi
	
	si numero3>numero1 y numero3>numero2 Entonces
		si numero1>numero2 Entonces
			Escribir numero3,numero1,numero2;
		SiNo
			Escribir numero3,numero2,numero1;
		FinSi
	FinSi
	
FinProceso
