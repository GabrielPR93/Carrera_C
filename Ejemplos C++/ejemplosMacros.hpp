#ifndef __MACRO_HEADER_H__ //warding macro
#define __MACRO_HEADER_H__
    //Ejemplos Macros
	// Las macros son substitución de código (Compilacion condicional)

    //compilacion condicional
    #ifdef DEBUG
        #define MY_VAR_MACRO "Hola Mundo"
    #else
        #define MY_VAR_MACRO "Hola Mundo"
    #endif

#endif
