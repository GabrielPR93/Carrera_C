//Crear una subrutina llamada "Login", que recibe un nombre de usuario y una 
//contraseña y te devuelve Verdadero si el nombre de usuario es "usuario1" y la 
//contraseña es "asdasd". Además recibe el número de intentos que se ha intentado 
//hacer login y si no se ha podido hacer login incremente este valor.
//Crear un programa principal donde se pida un nombre de usuario y una contraseña 
//y se intente hacer login, solamente tenemos tres oportunidades para intentarlo.

Funcion flag<-login(usuario,pass,intentos Por Referencia)
	Definir flag Como Logico;
	si usuario="usuario1" y pass="asdasd" Entonces
		flag<-Verdadero;
	SiNo
		flag<-falso;
		intentos<-intentos+1;
	FinSi
FinFuncion

Proceso facebooks
	Definir usuario,pass Como Caracter;
	Definir intentos Como Entero;
	Definir flag Como Logico;
	intentos<-0;
	Repetir
		Escribir "Introduce usuario";
		leer usuario;
		Escribir "Introduce pass";
		leer pass;
		flag<-login(usuario,pass,intentos);
		si flag Entonces
			Escribir "Bienvenido";
		sino 
			Escribir "Error al acceder, intento nº ",intentos;
		FinSi
	Hasta Que flag o intentos=3;
FinProceso
