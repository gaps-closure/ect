// Unreliable, over-the-network RPC call of get_frame(),
// which passes an integer argument and receives a filled buffer.

#define NUM_TRIES 3
#define FRAME_SIZE 5000
#define DST_ADDR "ipc:///tmp/websrvsubgreen"

void _rpc_get_frame(int flag, char* buf, int* err);
void get_frame(int flag, char* buf) {
    for (int i = 0; i < FRAME_SIZE; i++) buf[i] = i * 2;
}

int main() {
    char* buf = malloc(sizeof(char) * FRAME_SIZE);
    int flag = 1;
    int err = 0;
    _rpc_get_frame(flag, buf, &err);

    if (!err) // Do something with the contents of buf
    else      // handle error

    free(buf);
    return 0;
}

///////////////////////////////
// NETWORK ABSTRACTION LAYER //
///////////////////////////////

typedef struct net_context {} net_context;
typedef struct net_socket  {} net_socket;
typedef struct net_packet  {} net_packet;

void net_ctx_new();
void net_ctx_close(net_context* ctx);

void net_socket(char* addr);
void net_connect(net_socket* s, net_context* ctx);
void net_socket_close(net_socket* s);

void net_send(net_packet* p, net_socket* s);
void net_recv(net_packet* p, net_socket* s);

///////////////////////////////
// PER-RPC AUTOGEN FUNCTIONS //
///////////////////////////////

typedef struct get_frame_request_tag {} get_frame_request_tag;

void get_frame_tag_write(get_frame_request_tag* t) {
    // TODO
}

void get_frame_encode(net_packet* p, get_frame_request_tag* t, int flag) {
    // TODO
}

void get_frame_decode(net_packet* p, char* buf) {
    // TODO
}


void _rpc_get_frame(int flag, char* buf, int* err) {

    // Create request packet containing data and tag
    net_packet send_packet;
    get_frame_request_tag send_tag;
    get_frame_tag_write(&send_tag); // Fill tag with metadata and unique identifier

    // Put data (in this case the integer argument), tag, and data length into a packet.
    // In the process, the data is packed and placed in network byte order, and floats
    // are converted to uint64.
    get_frame_encode(&send_packet, &send_tag, flag);
    
    // Make network context and pub/sub sockets
    char* dst_addr = DST_ADDR;
    net_context* ctx = net_ctx_new();
    net_socket* psocket = net_socket(dst_addr);
    net_socket* ssocket = net_socket(dst_addr);
    net_connect(psocket, ctx);
    net_connect(ssocket, ctx);

    // Send and receive
    int num_tries = NUM_TRIES; // Number of attempts (configurable)
    net_packet recv_packet;
    while (num_tries > 0) {
        net_send(&send_packet, psocket); // non-blocking
        int recv_err = net_recv(&recv_packet, ssocket); // blocking
        if (!recv_err) break;
        num_tries--;
    }
    
    // Teardown context
    net_socket_close(psocket);
    net_socket_close(ssocket);
    net_ctx_close(ctx);

    // Report error or deserialize response and copy into buffer
    // (unpack, convert from network byte order, convert int64 to floats)
    if (num_tries == 0) {
        *err = 1;
    }
    else {
        get_frame_decode(&recv_packet, buf);
    }
    return;
}