// Reliable (e.g. no network communication) RPC call of get_frame(),
// which passes an integer argument and receives a filled buffer.


#define FRAME_SIZE 5000
#define DST_ADDR "ipc:///tmp/websrvsubgreen"

void _rpc_get_frame(int flag, char* buf);
void get_frame(int flag, char buf[static FRAME_SIZE]) {
    for (int i = 0; i < FRAME_SIZE; i++) buf[i] = i * 2;
}

int main() {
    char buf[FRAME_SIZE];
    int flag = 1;

    _rpc_get_frame(arg, buf);

    // Do something with the contents of buf


    return 0;
}

///////////////////////////////
// NETWORK ABSTRACTION LAYER //
///////////////////////////////

typedef struct net_context {} net_context;
typedef struct net_socket  {} net_socket;
typedef struct net_packet  {} net_packet;

net_context* net_ctx_new();
void net_ctx_close(net_context* ctx);

net_socket* net_socket(char* addr);
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

void _rpc_get_frame(int flag, char* buf) {

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
    net_packet recv_packet;
    net_send(&send_packet, psocket); // non-blocking
    net_recv(&recv_packet, ssocket); // blocking

    // Teardown context
    net_socket_close(psocket);
    net_socket_close(ssocket);
    net_ctx_close(ctx);

    // Deserialize response and copy into buffer
    // (unpack, convert from network byte order, convert int64 to floats)
    get_frame_decode(&recv_packet, buf);
    return;
}