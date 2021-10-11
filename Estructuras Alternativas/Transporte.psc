// Una compañía de transporte internacional tiene servicio en algunos países de 
// América del Norte, América Central, América del Sur, Europa y Asia.
// El costo por el servicio de transporte se basa en el peso del paquete 
// y la zona a la que va dirigido...
//Paquetes de más de 5 kg no se transportan.

//Zona 	Ubicación 	Costo/gramo
//1 	América del Norte 	24.00 euros
//2 	América Central 	20.00 euros
//3 	América del Sur 	21.00 euros
//4 	Europa 	10.00 euros
//5 	Asia 	18.00 euros

Proceso Transporte
	Definir peso,zona Como Entero;
	Escribir "Introduce kg del paquete ?";
	Leer peso;
	si peso>0 y peso <= 5 Entonces
		Escribir "1.- América del Norte";
		Escribir "2.- América Central";
		Escribir "3.- América del Sur";
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
