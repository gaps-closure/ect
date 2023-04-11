# Behavioral specification

In this section, we specify how and where XDCOMMS is initialized in a partitioned application, and the control flow of the XDCOMMS code through its two entry points: when an RPC wrapper function is called by the host application or a handler receives a message from another application. We then detail the necessary behavior of each function involved using pre- and post-condition contracts.