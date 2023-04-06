# Life of an RPC call to `_rpc_send_camcmd`

Sources:

- https://github.com/gaps-closure/eop2-closure-mind-demo/tree/main/websrv/.solution
- https://github.com/gaps-closure/hal/tree/master/api
- https://github.com/gaps-closure/hal/tree/master/daemon
- https://gaps-closure.github.io/cdoc#autogeneration

## RPC wrapper layer

- `_rpc_send_camcmd` is invoked with `double pan`, `double tilt`, `double imptime` `char mode`, and `char stab` arguments. The expected return value is an integer.
- Arguments are marshalled into a `request_send_camcmd_datatype` struct defined in `codec.h`:
```
typedef struct _request_send_camcmd_datatype {
  double pan;
  double tilt;
  double imptime;
  int8_t mode;
  int8_t stab;
  trailer_datatype trailer;
} request_send_camcmd_datatype;
```
- The `char` arguments implicitly cast to `int8_t`. A `trailer_datatype` field is included, which is also defined in `codec.h`:
```
typedef struct _trailer_datatype {
  uint32_t seq;
  uint32_t rqr;
  uint32_t oid;
  uint16_t mid;
  uint16_t crc;
} trailer_datatype;
```
- Both structs are packed. The trailer is used at the receiving application endpoint to resolve metadata about the incoming request. `seq` is a sequence number, `rqr` is a request ID, and `oid` is an "object" ID allowing the application to distinguish the incoming data from other requests carrying the same datatype. `crc` is an error correction code. Currently, only `seq` is used.
- A GAPS tag is created for this RPC transaction. The GAPS tag is a struct containing three `uint32_t` fields:
```
typedef struct _tag {
  uint32_t mux;
  uint32_t sec;
  uint32_t typ;
} gaps_tag;
```
- `mux` is an ID for the source and destination application pair. `sec` is an ID for the security level of the data, and `typ` is an ID for the datatype being transferred.
- `my_xdc_asyn_send` is then invoked to send the marshalled data (and constructed GAPS tag).

## HAL API layer

- `my_xdc_asyn_send` is part of the HAL (Hardware Abstraction Layer) API. The HAL provides an interface between the device-independent RPC protocol and the network. Based on the auto-generated HAL configuration and the RPC transaction source and destination, the HAL's device/channel-aware code serializes the incoming marshalled data into a packet and pushes it onto the wire.
- `my_xdc_asyn_send` is defined in `xdcomms.c`. It creates a struct of type `sdh_ha_v1`, which is a "CLOSURE packet" for communication between the application and the HAL:
```
typedef struct _sdh_ha_v1 {
  gaps_tag  tag;
  uint32_t  data_len;
  uint8_t   data[ADU_SIZE_MAX_C];
} sdh_ha_v1;
```
- `my_xdc_asyn_send` invokes `my_gaps_data_encode` to store the GAPS tag, data length, and data (bytes representing the marshalled struct) in the CLOSURE packet.
- `my_gaps_data_encode` looks up the datatype via the GAPS tag, and retrieves the correct serialization function for that datatype (the "codec"). The serialization functions are auto-generated for each cross-domain marshalled datatype and are defined in `codec.c`. In our case, the function called is `request_send_camcmd_data_encode`.
- `request_send_camcmd_data_encode` converts all of the marshalled fields, including the trailer, from host byte order to network byte order (depending on the endianness of the architecture, these may be the same). `float` and `double` fields are serialized into `uint64_t` fields according to the IEEE-754 encoding given in `float754.c` before being arranged in network byte order. Because floating-point data is stored in a new type, a new struct definition is used: `request_send_camcmd_output`. This struct is the same as `request_send_camcmd_datatype`, but with only specified-width byte types:
```
typedef struct _request_send_camcmd_output {
  uint64_t pan;
  uint64_t tilt;
  uint64_t imptime;
  int8_t mode;
  int8_t stab;
  trailer_datatype trailer;
} request_send_camcmd_output;
```
- After serializing the marshalled data into bytes (that is, a `request_send_camcmd_output` struct cast to a void pointer), `my_gaps_data_encode` places it and its length into the packet. Finally, the GAPS tag is copied into the packet, with each field similarly converted to network byte order. Note that unlike the marshalled struct, the GAPS tag struct is not explicitly packed (but according to C's memory alignment rules, there should never be any padding inserted). The same is true of `sdh_ha_v1`.
- Once `my_gaps_data_encode` fills the packet with serialized bytes, `my_xdc_asyn_send` invokes `zmq_send` on a zmq socket with the variable `OUTURI` (When the partitioned application is started, it will always initialize the HAL daemon to listen on `OUTURI`). This asynchronously passes the packet on to the HAL daemon.

## HAL daemon

- The HAL daemon is a service running on the same host as the application endpoint. When it starts, (`daemon/hal.c/hal_init`), it uses a config file to determine the set of devices it can read and write from, and for each device, the file descriptor to read/write, the communication type (e.g. IPC/ZMQ/TTY/TCP/UDP, etc), and the communication model (i.e. the packet format). It also opens all of the devices.
- After configuration, the HAL daemon polls each device it can read from for incoming packets (`daemon/device_read_write.c/read_wait_loop`). From the perspective of the HAL daemon, the application endpoint which makes the RPC call with `zmq_send` is just another device. The communication type is ZMQ, and the packet format is `sdh_ha_v1`, the struct type used for the packet. The HAL daemon's read loop picks up the incoming packet and copies it into a buffer (`daemon/device_read_write.c/read_input_dev_into_buffer`). It then invokes `route_packets` on the buffer.
- `route_packets` first calls `read_pdu_from_buffer` on the buffer.
- `read_pdu_from_buffer` invokes `pdu_from_packet` (`daemon/packetize.c`), which uses the device packet format to convert the buffer from a `sdh_ha_v1` (or whatever other packet format) into HAL's intermediate packet representation, the `pdu`:
```
typedef struct _pdu {
  selector  psel; /* Input device and tag info */
  size_t    data_len;
  uint8_t   *data;
} pdu;
```
- The `psel` field is a `selector`, which includes the device ID and GAPS tag for use by the HAL daemon when routing the packet to its destination. The tag is extracted from the incoming packet format and converted to host byte order (not relevant for messages between the HAL and the application endpoint or "bookend" devices, but necessary for "bump-on-the-wire" devices that may have different endianness from the host). The data is copied directly into the `pdu`, still in network byte order.
- `route_packets` then invokes `halmap_find` (`daemon/map.c`) to recover the destination device from `psel` (the halmap is initialized as part of configuration). Finally, it calls `write_pdu`.
- `write_pdu` uses `pdu_into_packet` (the inverse of `pdu_from_packet`) to convert the `pdu` into the packet format expected at the destination device and re-encode the GAPS tag. Then, it calls `write_buf` to perform the write to the device according to the communication type (e.g. `zmq_send` for ZMQ, `sendto` for UDP, etc).
- At this point, the packet leaves the HAL daemon and is en route to the destination application endpoint. HAL sends packets to "bookend" devices, "bump-in-the-wire" devices, or "host application" devices. A "bookend" device is an intermediate cross-domain guard co-located on the same host as the HAL and the sender application, or at the destination application host. A "bump-in-the-wire" device is an intermediate cross-domain guard located somewhere in the network. A "host application" device is simply the destination application endpoint.

# Which pieces are auto-generated? What auto-generates them?

TK