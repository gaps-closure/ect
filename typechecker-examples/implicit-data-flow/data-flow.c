int foo() {
    int a = 100;
    int c = 0;
    for(int i = 0; i < a; i++) {
        c++;
    }
    return c;
}

int main() {
    return foo();
}