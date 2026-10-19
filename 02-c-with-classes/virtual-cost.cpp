#include <iostream>

class Normal
{
    private:
        int _value;
    public:
        Normal() : _value(0) {}

        void increment()
        {
            ++_value;
        }
};

class Virtual
{
    private:
        int _value;
    public:
        Virtual() : _value(0) {}

        virtual ~Virtual() {}

        virtual void increment()
        {
            ++_value;
        }
};

int main()
{
    std::cout << "Normal: "
              << sizeof(Normal) << " bytes\n";
    
    std::cout << "Virtual: "
              << sizeof(Virtual) << " bytes\n";
    
    Virtual obj;
    obj.increment();

    return 0;
}

