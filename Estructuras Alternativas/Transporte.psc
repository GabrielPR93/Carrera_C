// Una compa��a de transporte internacional tiene servicio en algunos pa�ses de 
// Am�rica del Norte, Am�rica Central, Am�rica del Sur, Europa y Asia.
// El costo por el servicio de transporte se basa en el peso del paquete 
// y la zona a la que va dirigido...
//Paquetes de m�s de 5 kg no se transportan.

//Zona 	Ubicaci�n 	Costo/gramo
//1 	Am�rica del Norte 	24.00 euros
//2 	Am�rica Central 	20.00 euros
//3 	Am�rica del Sur 	21.00 euros
//4 	Europa 	10.00 euros
//5 	Asia 	18.00 euros

Proceso Transporte
	Definir peso,zona Como Entero;
	Escribir "Introduce kg del paquete ?";
	Leer peso;
	si peso>0 y peso <= 5 Entonces
		Escribir "1.- Am�rica del Norte";
		Escribir "2.- Am�rica Central";
		Escribir "3.- Am�rica del Sur";
		Escribir "4.- Europa";
		Escribir "5.- Asia";
		Escribir "A que zona va dirigido el paquete 1-5 ??";
		Leer zona;
		Segun zona hacer
			1:
				Escribir "Coste: ",peso*24, " euros.";
			2:
				Escribir "Coste: ",peso*20, " euros.";
			3:
				Escribir "Coste: ",peso*21, " euros.";
			4:
				Escribir "Coste: ",peso*10, " euros.";
			5:
				Escribir "Coste: ",peso*18, " euros.";
			De Otro Modo:
				Escribir "Zona incorrecta.";
		FinSegun
	SiNo
		Escribir "El paquete pesa demasiado";
	FinSi
	
FinProceso
