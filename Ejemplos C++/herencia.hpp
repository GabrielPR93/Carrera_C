#ifndef __EXAMPLES_HERENCIA_HPP__
#define __EXAMPLES_HERENCIA_HPP__

#include <functional>
#include <iostream>
#include <vector>
#include <string>

//Ejemplos Herencia 

class A
{
public:
    A(int val = 0):m_value(val){}
    friend class B; //se puede acceder desde la clase B
    int get_val() const {return m_value;}
private:
    int m_value;
};

class B
{
public:
    A m_fiend;

    B() : m_fiend(10) {}
    void add_one_to_friend() {m_fiend.m_value += 1;}

};

void test_friends()
{
    A a;
    //a.m_value = 10;//ERROR cannot acces
    B b;
    std::cout << "A within B value: " << b.m_fiend.get_val() << std::endl;
    b.add_one_to_friend();
    std::cout << "B acces A and modifies its private value: " << b.m_fiend.get_val() << std::endl;
}

class Animal{
public:
    std::string type_str;
    Animal(std::string s): type_str(s){}

     virtual void animal_sound() //virtual para poder ser sobreescrito
    {
        std::cout << "SonidoAnimal";
    }; 
};

class Dog   : public Animal
{
public:
    Dog() : Animal("Dog"){}
    
     virtual void animal_sound()
    {
        std::cout << "Guauuuu guauuuu";
    }; 
};

class Cat : public Animal
{
public:
    Cat() : Animal("Cat"){}
};

class Horse : public Animal
{
public:
    Horse() : Animal("Horse"){}
};

void test_polymorphism()
{
    std::vector<Animal> animals;
    animals.push_back(Cat());
    animals.push_back(Dog());
    animals.push_back(Horse());
    for (auto& a: animals) {
        std::cout << "Animal type: " << a.type_str << std::endl;
    }
}

#endif
