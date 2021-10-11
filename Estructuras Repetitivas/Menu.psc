//Realizar un ejemplo de menú, donde podemos escoger las distintas opciones hasta 
//que seleccionamos la opción de "Salir".

Proceso Menu
	Definir opcion como entero;
	Repetir
		Limpiar Pantalla;
		Escribir "1.- Juegos";
		Escribir "2.- Peliculas";
		Escribir "3.-Viajes";
		Escribir "4.- Salir";
		leer opcion;
		Segun opcion Hacer
			1:Escribir "Estas en juegos";
			2:Escribir "Estas en peliculas";
			3:Escribir "Estas en viajes";
			4:Escribir "Adios";
			De Otro Modo:
				Escribir "Seleccion no valida";
		FinSegun
		Escribir "Presiona una tecla para continuar";
        Esperar Tecla;
	Hasta Que opcion==4 
	
FinProceso
