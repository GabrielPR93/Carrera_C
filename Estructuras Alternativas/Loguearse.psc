//Escribe un programa que pida un nombre de usuario y una contrase�a 
//y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema", 
//sino se da un error.

Proceso Loguearse
	Definir usuario,contrasenha como cadenas;
	Escribir "Introduce usuario:";
	Leer usuario;
	Escribir "Introduce contrase�a";
	Leer contrasenha;
	si (usuario=="pepe") y (contrasenha =="asdasd") Entonces
		Escribir "Has entrado al sistema";
	SiNo
		Escribir "Error";
	FinSi
FinProceso
