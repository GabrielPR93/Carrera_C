#ifndef __EXAMPLES_ESTRUCTURAS_HPP__
#define __EXAMPLES_ESTRUCTURAS_HPP__

#include <iostream>

//Diferentes ejemplos de las esstructuras del curso

struct MyFstStruct
{
    int m_value;

    MyFstStruct()        : m_value(0)   {}
    MyFstStruct(int val) : m_value(val) {}
    void add_to_value(const int& val){m_value += val;}
};

union Vector2D
{
    struct {float x, y;};
    float   vector[2];
    //Constructores
    Vector2D(const float& _x, const float& _y) : x(_x), y(_y){}
    Vector2D(const float vars[2])
    {
        vector[0] = vars[0];
        vector[1] = vars[1];
    }
};


void struct_example()
{
    MyFstStruct s(10);
    std::cout << "MyFstStruc value" << std::endl;
    std::cout << s.m_value << std::endl;
    std::cout << "MyFstStruc add 10 to value" << std::endl;
    s.add_to_value(10);
    std::cout << s.m_value << std::endl;

}


void union_example()
{
    struct TestStruct
    {
        float x, y;      
        float vector[2]; 
    };
    
    std::cout << "TestStruct size : "<< sizeof(TestStruct) << std::endl; //Ocuparia el doble al apuntar a la dirección de memoria (4 floats).
    std::cout << "Vector2D   size : "<< sizeof(Vector2D)   << std::endl; //2 floats
    Vector2D u1(10, 10);//build by x y constructor
    Vector2D u2({50, 50}); //build by array constructor
    std::cout << "Union access by xy   : "<< u1.x << ", "<< u1.y << std::endl;
    std::cout << "Union access by array: "<< u1.vector[0] << ", "<< u1.vector[1]   << std::endl;
    std::cout << "Union access u1.vector = u2.vector by array: "<< std::endl;
    u1.vector[0] = u2.vector[0];
    u1.vector[1] = u2.vector[1];
    std::cout << "Union access by xy   : "<< u1.x << ", "<< u1.y << std::endl;
}


void all_structures_examples()
{
    std::cout << "Struct example: " << std::endl;
    struct_example();
    std::cout << "Union example: " << std::endl;
    union_example();
}

enum MyEnum 
{
    Lunes = 3,
    Martes = 5, 
    Miercoles,
    Jueves  
};
//No se pueden comparar los MyEnum con MyClassEnum

enum class MyClassEnum    //Sin comparaciones de enteros  
{
    Lunes,
    Martes, 
    Miercoles,
    Jueves  
    
};
#endif //EXAMPLES_ESTRUCTURAS_HPP
