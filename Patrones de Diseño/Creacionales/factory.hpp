#pragma once

#include <memory>
#include <iostream>

class A
{
    public:
    static std::shared_ptr<A> makeA(int choice);
    virtual void func() = 0;
};

class B : public A
{
    public:
    virtual void func() override //No es obligatorio
    {
        std::cout << "Hola soy B" << std::endl;
    }
};

class C : public A
{
    public:
    virtual void func()
    {
        std::cout << "Hola soy C" << std::endl;
    }
};

class D : public B
{
    public:
    virtual void func()
    {
        std::cout << "Hola soy D" << std::endl;
    }
};

std::shared_ptr<A> A::makeA (int choice)
{
    switch (choice)
    {
        case 1:
            return std::make_shared<D>(D());
        case 2:
            return std::make_shared<C>(C());
        default:
            return std::make_shared<B>(B());
    }
}