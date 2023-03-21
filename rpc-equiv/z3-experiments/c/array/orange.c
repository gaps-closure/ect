#include <stdio.h>
#include <stdlib.h>
#include "green.c"

// RPC wrapper for f()
int* _rpc_f(int* pair) {

    // Marshal arguments
    int m_pair[2] = {
        pair[0] + pair[1],
        pair[0] - pair[1]
    };

    // Cross-domain sendrecv
    int* m_result = _handler_f(m_pair);

    // Unmarshal received data
    int* result = malloc(2 * sizeof(int));
    result[0] = m_result[0] - 5;
    result[1] = m_result[1] + 5;
    free(m_result);

    // Return unmarshaled result
    return result;
}

int main(int argc, char** argv) {

    if(argc != 3) {
        printf("Usage: ./orange a b\n");
    }
    else {
        int pair[2] = { atoi(argv[1]), atoi(argv[2]) };
        // int* swapped = f(pair); // Local version
        int* swapped = _rpc_f(pair); // "Cross-domain" version
        printf("Swapped: %d %d\n", swapped[0], swapped[1]);
        free(swapped);
    }
}