//Algoritmo que pida un número y diga si es positivo, negativo o 0.

Proceso PositivoNegativo
	Definir numero como entero;
	Escribir "Introduce numero";
	Leer numero;
	si numero <> 0 Entonces
		si numero >0 Entonces
			Escribir "El numero es positivo";
		SiNo
			Escribir "El numero es negativo";
		FinSi
		
	SiNo
		Escribir "El numero es 0";
	FinSi
FinProceso
