//Hacer un programa que muestre un cronometro, indicando las horas, minutos y segundos.

Proceso Cronometro
	Definir hora,minuto,segundo Como Entero;
	Para hora <- 0 hasta 23 con paso 1 hacer
		Para minuto <- 0 hasta 59 con paso 1 hacer
			Para segundo <- 0 hasta 59 con paso 1 hacer
				Limpiar Pantalla;
				Escribir hora,":",minuto,":",segundo;
				Esperar 1 Segundo;
			finpara 
		finpara
	finpara
FinProceso
