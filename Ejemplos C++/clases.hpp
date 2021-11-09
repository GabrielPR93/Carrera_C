#ifndef __EXAMPLES_CLASES_HPP__
#define __EXAMPLES_CLASES_HPP__

#include <iostream>

//Ejemplos de las clases

class AwesomeClass
{
private:                    //Atributos
    int* m_private_attr;
protected:
    int* m_protected_attr;
public:
    int* m_public_attr;


    AwesomeClass() :                    //Constructor por defecto (nullptr--> valor por defecto)
        m_private_attr      (nullptr),
        m_protected_attr    (nullptr),
        m_public_attr       (nullptr)
    {}

    AwesomeClass(const int& a, const int& b, const int& c) :  //Constructor con la inicializacion de los atributos
            m_private_attr      (new int(a)),
            m_protected_attr    (new int(b)),
            m_public_attr       (new int(c))
    {}

    ~AwesomeClass()                                         //Destructor
    {
        for (auto p: {m_public_attr, m_protected_attr, m_private_attr})
        {
            delete p;
        }
    }

    int get_private_attr() const //importante, si no se modifica la clase, la funcion es const
    {
        return *m_private_attr;
    }

    void set_private_attr(const int& n)
    {
        if(m_private_attr) *m_private_attr = n;
    }

    void print_values() const 
    {
        std::cout   << "["
                    << *m_private_attr
                    << ", "
                    << *m_protected_attr
                    << ", "
                    << *m_public_attr
                    << "]"
                    << std::endl;
    }
};

void class_example()
{
    AwesomeClass c(1, 2, 3);
    c.print_values();
    c.set_private_attr(10);
    c.print_values();
    int a = c.get_private_attr();
    a += 10;
    std::cout << "a: " << a << std::endl;
    c.print_values();
}
#endif
