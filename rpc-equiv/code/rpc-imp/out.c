#include <stdbool.h>

typedef struct tup {
    int fst;
    double snd;
} tup;

int q;

int dbl (int num) {
    int num2;
    num2 = (num + num);
    return num2;
}

int main () {
    int x;
    tup y;
    bool z;
    q = 5;
    x = dbl(q);
    y.fst = (x + q);
    if ((y.fst > 14)) {
    z = true;
} else {
    z = false;
}
    return z;
}