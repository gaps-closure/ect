
// Original function
int* f(int* pair) {
    int* swapped = malloc(2 * sizeof(int));
    swapped[0] = pair[1];
    swapped[1] = pair[0];
    return swapped;
}

// Handler for f()
int* _handler_f(int* m_pair) {

    // Unmarshaling on handler side
    int pair[2] = {
        (m_pair[0] + m_pair[1]) / 2,
        (m_pair[0] - m_pair[1]) / 2
    };

    // Call the original function
    int* result = f(pair);

    // Marshal the result
    int* m_result = malloc(2 * sizeof(int));
    m_result[0] = result[0] + 5;
    m_result[1] = result[1] - 5;
    free(result);

    // "Send" marshaled result back to client
    return m_result;
}