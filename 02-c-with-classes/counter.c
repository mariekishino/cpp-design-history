#include <stdio.h>

typedef struct s_counter
{
    int value;
}  Counter;

void counter_init(Counter *self)
{
    self->value = 0;
}

void counter_increment(Counter *self)
{
    self->value++;
}

void counter_show(const Counter *self)
{
    printf("%d\n", self->value);
}

int main(void)
{
    Counter a;
    Counter b;

    counter_init(&a);
    counter_init(&b);

    counter_increment(&a);
    counter_increment(&a);
    counter_increment(&b);

    counter_show(&a);
    counter_show(&b);

    return 0;
}