
//Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo de viaje hasta llegar a otra ciudad B es de T segundos. 
//Escribir un algoritmo que determine la hora de llegada a la ciudad B.

Proceso Ejercicio_17
	Definir hh,mm,ss,hhLlegada,mmLLegada,ssLlegada,segundosTotales como enteros;
	Definir t como entero;
	Escribir "Introduce hora de salida";
	Leer hh;
	Escribir "Introduce minuto de salida";
	Leer mm;
	Escribir "Introduce segundos de salida";
	Leer ss;
	Escribir "Introduce segundos de viaje";
	Leer t;
	segundosTotales<-hh*3600+mm*60+ss+t;
	hhLlegada<-(trunc(segundosTotales/3600));
	mmLLegada<-trunc((segundosTotales%3600)/60);
	ssLlegada<-(segundosTotales%3600)%60;
	Escribir "La hora de llegada es ",hhLlegada,":",mmLLegada,":",ssLlegada;
	
FinProceso
