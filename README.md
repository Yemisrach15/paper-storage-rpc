# Paper Storage RPC

The paper storage server is used to store and retrieve the articles that will be presented at the conference. It is called paper_server and is implemented using Sun-RPC. It can be requested by a client program called paper_client. For simplicity, the server stores all papers in main memory.

## Steps to Run

> These are steps to run the program on a linux machine (ubuntu). 

1. Open a terminal and navigate to the root directory.
2. Run the makefile by typing `make`.
3. Start the server by typing `./paper_server`.
4. On another terminal, execute `./paper_client` to get the list of available options.
5. Client can now call procedures defined in the server. 