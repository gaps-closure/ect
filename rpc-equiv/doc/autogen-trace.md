## RPC overview / trace

Sourced from:

- https://github.com/gaps-closure/eop2-closure-mind-demo/tree/main/websrv/.solution
- https://github.com/gaps-closure/hal/tree/master/api
- https://gaps-closure.github.io/cdoc#autogeneration

#### Green side

In the original, function `get_frame` is called with a buffer argument. The `get_frame` function fills the buffer with frame data. What happens in the partition?

- On the Green side, function `_rpc_get_frame` is called, with a buffer and an error argument.
- `_rpc_get_frame` creates two GAPS tags, and calls `my_tag_write` for each:
    - `my_tag_write` (`xdcomms.c`) simply populates the GAPS tag fields (`mux`, `sec`, and `typ`, all uint32) with the passed arguments. The arguments used are defined per RPC call (e.g. `MUX_REQUEST_GET_FRAME`) but the integers used are not necessarily distinct from other RPC calls.
- It keeps track of some status ints (`req_counter`, `last_processed_result`, `last_processed_error`, `inited`, `result`).
- It creates two sockets, `psocket` and `ssocket`
- It creates two data structures (request and response) of type `request_get_frame_datatype` and `response_get_frame_datatype`. These are defined in `codec.h`, and correspond to wrapper types around the data being sent. Their fields are the fields of the data being passed, plus an additional _trailer_ field of type `trailer_datatype` containing metadata.
- `my_xdc_register` is called several times to register pairs of encode/decode functions. No matter which RPC call we are inside, every RPC is registered (e.g. in `_rpc_get_frame` we invoke `my_xdc_register` on the encode/decode functions for `get_frame`, `get_metadata`, `run_videoproc`, and `send_camcmd`). Each call is passed _mycmap_, an array of `codec_map` structs which is filled by the register calls.
    - `my_xdc_reigster` (`xdcomms.c`) populates one codec map, at the position in mycmap given by the third argument to `my_xdc_register`, which is a unique integer per RPC function. The codec map valid bit is set to 1, and the encode and decode function pointers are stored in it.
- A fresh ZMQ context is created (`zmq_ctx_new()`).
- The two created sockets are initialized with the ZMQ context, using `my_xdc_pub_socket()` and `my_xdc_sub_socket()`, followed by a 1 second sleep to make sure the sockets have joined.
    - Both of these functions call the ZMQ function `zmq_socket` to get a socket back of type `ZMQ_PUB` or `ZMQ_SUB`, and then call `zmq_connect` to connect the socket to the given URI. They assert that no error occurs during connection. The URIs (one for pub, one for sub) are given as hardcoded `#define` statements: `ipc:///tmp/websrvsubgreen`
- In a loop while there are tries remaining (the number of tries is hard-coded to be 1), it calls `my_xdc_asyn_send`, passing in the publishing socket, the wrapper data structure, the tag, and the codec map. After this, it calls `my_xdc_recv`, passing the sub socket, the response data structure, the other tag, and the codec map.
    - `my_xdc_asyn_send` (`xdcomms.c`) creates a packet, which is a struct of type `sdh_ha_v1` containing fields for the tag, the data, and the data length, and calls `my_gaps_data_encode` to place the wrapped data (casted to a void pointer and now called the `adu`) and the tag in the packet. Finally, it calls `zmq_send` with the provided socket to send the filled packet, and reports any errors that occur.
        - `my_gaps_data_encode` consults the codec map (indexed by the data type given in the gaps tag) for the encode function associated with `get_frame`. This function places the `adu` in the packet in network byte order and computes the length of the data. Then `my_tag_encode` and `my_len_encode` are used to serialize and place both the tag and the computed data length into the packet in the same way. Encoding involves using `htonl` to convert longs to network byte order, and in the case of the `adu`, casting it back to the wrapper data structure, and then moving each field into a _different_ wrapper data structure in which floating point data is stored in a machine-agnostic uint64 format. This new wrapper struct (`request_get_frame_output`, defined in `codec.h`) is placed in the packet. Float conversions are handled by `float754.c`, which uses the IEEE-754 format to turn doubles into uint64 (and put the uint64 into network byte order) and back again.
    - `my_xdc_recv` creates a packet, calls `zmq_recv` with the given sub socket and the empty packet, and calls `my_gaps_data_decode` to get back the adu, its size, and the tag from the received packet.
- The ZMQ sockets are closed, and the ZMQ context is shut down.
- The contents of the received buffer from the response data structure (the adu) are copied into the buffer that was passed as an argument to `_rpc_get_frame`. If a response was never received, the error argument is set.
- Finally note that there is initialization code on the green side. When the program begins, `_master_rpc_init()` is called. However, unless using LEGACY_XDCOMMS, this function only sets the logging level, so it can easily be omitted from the basic case.

#### Orange side

- The Orange side, in contrast to the Green side, is a receiver, i.e, the entry point of the unpartitioned application is now on the Green side. So when the Orange program is run, it begins by simply calling `_slave_rpc_loop()`. This function uses the pthreads library to create one thread for each RPC receiver.
These threads run indefinitely until the program is quit. We are specifically interested in the thread
which watches for `get_frame` messages by running the `_wrapper_request_get_frame` function; this function
runs an infinite loop in which it calls `_handle_request_get_frame` on each iteration.
    - TK: very similar to green overview.

## Data manipulation and control flow changes summary

By summarizing the set of transformations applied to the data and the changes to control flow in the presence of RPC code, we give a bird's eye view of what program semantics our verification technique must be able to handle.
    - TK.

## Verification implications

The ZMQ library provides a model of a robust abstraction layer. As it is used in the auto-generated code, it only provides low-level socket connections, sends, and receives. The complete interface consists of:
    - `zmq_ctx_new()` and `zmq_ctx_shutdown()` for managing ZMQ context.
    - `zmq_socket()`, `zmq_connect()`, and `zmq_close()` for setup and teardown of socket connections.
    - `zmq_send()` and `zmq_recv()` for sending a receiving data on connected sockets.

Trusting the correctness of a generic network interface while verifying all of the auto-generated code that relies on it is a complex task but is more likely to be theoretically interesting, and practically useful. We would like to verify that a given auto-generated artifact is correct (rather than proving the generator correct in general).

To sidestep the issue of concurrency as a first cut, we can tackle verification separately on the master and worker side, making assumptions about the common network interface. TK.

## Questions

- Why does the async send and receive loop appear twice, even when LEGACY XDCOMMS is not defined?
- How does auto-generation distinguish between arguments needed by the receive and pointer arguments to be filled by the receiver (i.e. they are not passed)?
- Why is the number of tries hardcoded as 1? does it ever change?
- Can we delete the ifdefs losslessly for a test case?
- What is the purpose of mux, sec, typ in the gaps tag? Why are they not unique?
- Where do the URIs (`ipc:///tmp/websrvsubgreen`) come from?
- What's the difference between the non-blocking and the blocking sub socket? This is a recent change.
- Why does `len_encode` use `ntohl` instead of `htonl`?
- Why is the cmap filled on each call when only one encoding function is used?