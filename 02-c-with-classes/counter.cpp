#include <iostream>

class Counter
{
    private:
        int _value;
    public:
        Counter() : _value(0) {}

        void increment()
        {
            ++_value;
        }

        void show() const
        {
            std::cout << _value << std::endl;
        }
};

int main()
{
    Counter a;
    Counter b;

    a.increment();
    a.increment();
    b.increment();

    a.show();
    b.show();

    return 0;
}

/*
To convert codes to assembly:
c++ -std=c++98 -O0 -S counter.cpp -o counter.s

to obesrve inline and optimization diff by compiler:
c++ -std=c++98 -O2 -S counter.cpp -o counter_optimized.s
*/