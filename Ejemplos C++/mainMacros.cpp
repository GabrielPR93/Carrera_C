#define DEBUG true 


#include <iostream>
#include <string>
#include "header_example.hpp"

//macro define
#define MY_FST_MACRO "Hello world"


//macro redifine
#define MY_REDEFINED_MACRO(the_variable) #the_variable
#define MY_REDEFINED_MACRO(the_variable, other_variable) (#the_variable#other_variable)

//# operator y ## concatena
#define INIT_10(a) static int my_var_##a = 10;

INIT_10(a)
INIT_10(b)

//undef
#undef INIT_10

//INIT_10(c) // this will now work, since we just did undef it in the previours line


//macros are non-recursive
#define FAC(n) (n>1)?n*FAC(n-1):1

#define SQUARE(x) x*x
//#define SQUARE(x) ((x)*(x))

int main() {

    //macro define
    std::cout << "________DEFINE________" << std::endl;
    std::cout << "MY_FST_MACRO  = " << MY_FST_MACRO << std::endl;

    std::cout << "________CONCAT________" << std::endl;
    //macro concat
    std::cout << "my_var_a = "<< my_var_a << std::endl;
    std::cout << "my_var_b = "<< my_var_b << std::endl;


    std::cout << "________REDEFINE________" << std::endl;
    //macro redefinition
    //std::cout << MY_REDEFINED_MACRO(10) << std::endl; doesnt work, is redifined
    std::cout << "MY_REDEFINED_MACRO(10, 10) = " << MY_REDEFINED_MACRO(10, 10) << std::endl;


    //macro recursive error, doesn't work
    //std::cout << FAC(10) << std::endl;


    std::cout << "________SCOPE________" << std::endl;
    //fun with macros...what is the output
    std::cout << "SQUARE(10)  = " << SQUARE(10)  << std::endl; //10*10 = 100
    std::cout << "SQUARE(5+2) = " << SQUARE(5+2) << std::endl; //7*7 = 49? or 5+2*5+2?


    std::cout << "________CONDITIONAL________" << std::endl;
    //macro conditional compilation
    std::cout << "MY_VAR_MACRO  = " << MY_VAR_MACRO << std::endl;

    std::cout << "________UTILS________" << std::endl;
    //macro utils
    for(auto& s : {__DATE__, __TIME__, __FILE__, std::to_string(__LINE__).c_str()}){
        std::cout << s << std::endl;
    }
    return 0;
}