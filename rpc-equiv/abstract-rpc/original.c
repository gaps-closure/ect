// Original, unpartitoned invocation of get_frame(),
// which passes an integer argument and receives a filled buffer.


#define FRAME_SIZE 5000



void get_frame(int flag, char buf[static FRAME_SIZE]) {
    for (int i = 0; i < FRAME_SIZE; i++) buf[i] = i * 2;
}

int main() {
    char buf[FRAME_SIZE];
    int flag = 1;

    get_frame(arg, buf);

    // Do something with the contents of buf


    return 0;
}