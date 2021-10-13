//Crea un programa que compruebe un DNI que le pasaremos y diga si dicho DNI es válido o no.

Funcion letra <- CalculoLetra(num)						//Calcula la letra del DNI
	Definir letra Como Caracter;
	Definir Todasletras Como Caracter;
	Todasletras <- "TRWAGMYFPDXBNJZSQVHLCKE";
	letra <- subcadena(Todasletras,num%23,num%23);
FinFuncion

Funcion valido<- ValidarDNI(dni)						//Valida el DNI
	Definir numero Como Entero;
	Definir valido Como Logico;
	Definir letra como Caracter;
	letra<-subcadena(dni,8,8);
	numero<-ConvertirANumero(subcadena(dni,0,7));
	valido<-Mayusculas(letra)=CalculoLetra(numero);
FinFuncion

Proceso Ejer_DNI 											//Principal
	Definir elDni Como Caracter;
	Escribir sin saltar "DNI:";
	Leer elDni;
	//Mienstras el dni sea inválido o su longitud no sea de 9 caracteres, vuelvo a pedirlo.
	Mientras no ValidarDNI(elDni) o Longitud(elDni)<>9 Hacer
		Escribir "Error en el DNI, vuelve a intentarlo";
		Escribir sin saltar "DNI:";
		Leer elDni;
	FinMientras
	Escribir "DNI correcto ";
FinProceso