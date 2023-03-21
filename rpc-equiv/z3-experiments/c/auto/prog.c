//func int int bool
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

// Local function
bool func(int a, int b) {
    bool res = ((a + b) % 2) == 0;
    return res;
}

int main(int argc, char** argv) {

    if(argc != 3) {
        printf("Usage: ./serial a b\n");
    }
    else {
        int a = atoi(argv[1]);
        int b = atoi(argv[2]);
        bool res = func(a, b);
        printf("Sum is even: ");
        if (res) printf("true\n"); else printf("false\n");
    }
}