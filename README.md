
# Welcome to Tendermint !  
  
## Background Prerequisite  
Below resource are recommendation for the topic you want to check out.  
**Blockchain & Cryptocurrencies:**  
- Blockchain Basics ([Video]([[https://www.youtube.com/watch?v=bBC-nXj3Ng4](https://www.youtube.com/watch?v=bBC-nXj3Ng4)](https://www.youtube.com/watch?v=bBC-nXj3Ng4](https://www.youtube.com/watch?v=bBC-nXj3Ng4))))  
- Blockchain Demo([Video]([[https://www.youtube.com/watch?v=_160oMzblY8;%20https://www.youtube.com/watch?v=xIDL_akeras](https://www.youtube.com/watch?v=_160oMzblY8;%20https://www.youtube.com/watch?v=xIDL_akeras)](https://www.youtube.com/watch?v=_160oMzblY8;%20https://www.youtube.com/watch?v=xIDL_akeras](https://www.youtube.com/watch?v=_160oMzblY8;%20https://www.youtube.com/watch?v=xIDL_akeras))))  
- Bitcoin and Cryptocurrencies ([Princeton Course]([[https://www.coursera.org/learn/cryptocurrency)](https://www.coursera.org/learn/cryptocurrency))](https://www.coursera.org/learn/cryptocurrency)%5D(https://www.coursera.org/learn/cryptocurrency)))):  
- Week 1 : Introduction to Crypto and Cryptocurrencies  
- Week 2: How Bitcoin Achieves Decentralization  
- Week 3: Mechanics of Bitcoin  
- Week 4: Bitcoin Mining  
  
**Understanding Byzantine fault in Distributed System:**  
- [CS198.2x Week 1] Distributed Systems & Consensus [ [Playlist]([[https://www.youtube.com/playlist?list=PLZvgWu86XaWkpnQa6-OA7DG6ilM_RnxhW](https://www.youtube.com/playlist?list=PLZvgWu86XaWkpnQa6-OA7DG6ilM_RnxhW)](https://www.youtube.com/playlist?list=PLZvgWu86XaWkpnQa6-OA7DG6ilM_RnxhW](https://www.youtube.com/playlist?list=PLZvgWu86XaWkpnQa6-OA7DG6ilM_RnxhW))) ]:  
- Video 1-4 : Introduction Distributed System & Safety and Liveness  
- Video 5: Cap Theorem  
- Video 6 -11 : Consensus & [PBFT]([[http://pmg.csail.mit.edu/papers/osdi99.pdf](http://pmg.csail.mit.edu/papers/osdi99.pdf)](http://pmg.csail.mit.edu/papers/osdi99.pdf%5D(http://pmg.csail.mit.edu/papers/osdi99.pdf)))  
- Video 12 -14: Proof of stack ( Tendermint uses)  
  
**Practical Byzantine Fault Tolerance(pBFT)** [[Blog]([[https://www.geeksforgeeks.org/practical-byzantine-fault-tolerancepbft/](https://www.geeksforgeeks.org/practical-byzantine-fault-tolerancepbft/)](https://www.geeksforgeeks.org/practical-byzantine-fault-tolerancepbft/%5D(https://www.geeksforgeeks.org/practical-byzantine-fault-tolerancepbft/))) and [Paper]([[http://pmg.csail.mit.edu/papers/osdi99.pdf](http://pmg.csail.mit.edu/papers/osdi99.pdf)](http://pmg.csail.mit.edu/papers/osdi99.pdf%5D(http://pmg.csail.mit.edu/papers/osdi99.pdf))) ]  
Let's get dive into Tendermint !  
  
# What is Tendermint?  
  
Tendermint is software for securely and consistently replicating an application on many machines. By securely, we mean that Tendermint works even if up to 1/3 of machines fail in arbitrary ways. By consistently, we mean that every non-faulty machine sees the same transaction log and computes the same state. Secure and consistent replication is a fundamental problem in distributed systems.  
> **Note:** I will **highlight** main points of tendermint. Take overview here and for details :  
> For better insight read this [blog]([[https://blockgeeks.com/guides/tendermint/](https://blockgeeks.com/guides/tendermint/)](https://blockgeeks.com/guides/tendermint/%5D(https://blockgeeks.com/guides/tendermint/))) (Recommended)  
For Detailed documentation click [here]([[https://tendermint.com/docs/introduction/introduction.html](https://tendermint.com/docs/introduction/introduction.html)](https://tendermint.com/docs/introduction/introduction.html%5D(https://tendermint.com/docs/introduction/introduction.html))) (website) or [here]([[https://buildmedia.readthedocs.org/media/pdf/tendermint/v0.21.0/tendermint.pdf)*](https://buildmedia.readthedocs.org/media/pdf/tendermint/v0.21.0/tendermint.pdf)*](https://buildmedia.readthedocs.org/media/pdf/tendermint/v0.21.0/tendermint.pdf)*%5D(https://buildmedia.readthedocs.org/media/pdf/tendermint/v0.21.0/tendermint.pdf)*))  
  
  
## **Monolithic Architecture vs Modular Architecture**  
  
Monolithic architecture means that everything is composed all in one piece. When software is deemed “monolithic” the components are interconnected and interdependent with each other and the design is more self-contained. In this case, the architecture is more tightly-coupled and the associated components must be all present in order for the code to be executed or compiled.  
  
While this makes the system it was created for more robust, you can’t really derive from it and create custom codes. It is not the most flexible of systems. Plus, there is another problem with this system. If any component of the program needs to be updated, the whole application will have to be reworked. This is not really the most ideal of situations now, is it?  
  
On the other hand, we have modular architecture. Unlike Monolithic, the layers are not that linked to each other. So, while it may not be as robust, it is quite easy to update the whole application by working with the different separate modules.  
  
## **Tendermint’s Architecture and Goals**  
  
Tendermint utilizes the modular architecture. Their goals are as follows:  
  
- Provide the networking and consensus layers of a blockchain as a platform where different decentralized applications can be built  
- Developers only need to worry about the application layer of the blockchain, saving all the hours that they would have wasted working on the consensus and the networking layer as well.  
- Tendermint also includes the Tendermint consensus protocol which is the Byzantine fault tolerant consensus algorithm used within the Tendermint Core engine  
  
Let’s look at how Tendermint’s architecture will look:  
  
![Ultimate Guide to Tendermint ]([[https://drive.google.com/open?id=1HYz69k3wpefoMmKB5w-M6lWjfmYbdDst](https://blockgeeks.com/wp-content/uploads/2019/02/image6.jpg)](https://drive.google.com/open?id=1HYz69k3wpefoMmKB5w-M6lWjfmYbdDst](https://blockgeeks.com/wp-content/uploads/2019/02/image6.jpg)))  
  
As you can see, the application is connected to Tendermint Core via a socket protocol called the APCI or Application Blockchain Interface. Since Tendermint Core and the Application running on it run in separate UNIX processes, they need to have a method to speak with each other. ABCI helps these two in their communication.  
  
  
Unlike other blockchain and consensus solutions, which come pre-packaged with built in state machines, where you can't reuse/extract the code for consensus part . Tendermint be used as a plug-and-play replacement for the consensus engines of other blockchain software. Tendermint Core handles all the p2p and consensus stuff, and just forwards transactions to the application when they need to be validated, or when they’re ready to be committed to a block.  
  
Tendermint is block-chain provider and can't do anything without app (For our purpose we will use kv_store/dummy app) mounted on it.  
So basically, Tendermint consists of two chief technical components and now let's see there responsibility:  
  
Tendermint Core would be responsible for  
- Sharing blocks and transactions between nodes  
- Establishing a canonical/immutable order of transactions (the blockchain)  
  
The application will be responsible for  
- Maintaining the UTXO database  
- Validating cryptographic signatures of transactions  
- Preventing transactions from spending non-existent transactions  
- Allowing clients to query the UTXO database.  
  
Now look at Tendermint core with details below.  
  
## **Consensus Overview**  
Tendermint is an easy-to-understand, mostly asynchronous, BFT consensus protocol. The protocol follows a simple state machine that looks like this:  
  
![Consensus Overviewt ]([[https://drive.google.com/open?id=1XGlNje1fwLtrixlMe1tp0jIneLkd17zp](https://tendermint.com/docs/assets/img/consensus_logic.e9f4ca6f.png)](https://drive.google.com/open?id=1XGlNje1fwLtrixlMe1tp0jIneLkd17zp](https://tendermint.com/docs/assets/img/consensus_logic.e9f4ca6f.png)))  
Participants in the protocol are called **validators**; they take turns proposing blocks of transactions and voting on them. Blocks are committed in a chain, with one block at each **height**. A block may fail to be committed, in which case the protocol moves to the next **round**, and a new validator gets to propose a block for that height. Two stages of voting are required to successfully commit a block; we call them **pre-vote** and **pre-commit**. A block is committed when more than 2/3 of validators pre-commit for the same block in the same round.  
  
Now lets see how ABCI facilitates interaction of Tendermint core (consensus) and App.  
  
  
## **ABCI**  
The ABCI consists of 3 primary message types that get delivered from the core to the application. The application replies with corresponding response messages.  
  
The messages are specified here: [ABCI Message Types]([[https://github.com/tendermint/tendermint/blob/develop/abci/README.md#message-types](https://github.com/tendermint/tendermint/blob/develop/abci/README.md#message-types)](https://github.com/tendermint/tendermint/blob/develop/abci/README.md#message-types](https://github.com/tendermint/tendermint/blob/develop/abci/README.md%23message-types))).  
  
The **DeliverTx** message is the work horse of the application. Each transaction in the blockchain is delivered with this message. The application needs to validate each transaction received with the**DeliverTx** message against the current state, application protocol, and the cryptographic credentials of the transaction. A validated transaction then needs to update the application state — by binding a value into a key values store, or by updating the UTXO database, for instance.  
  
The **CheckTx** message is similar to **DeliverTx**, but it's only for validating transactions. Tendermint Core's mempool first checks the validity of a transaction with **CheckTx**, and only relays valid transactions to its peers. For instance, an application may check an incrementing sequence number in the transaction and return an error upon **CheckTx** if the sequence number is old. Alternatively, they might use a capabilities based system that requires capabilities to be renewed with every transaction.  
  
The **Commit** message is used to compute a cryptographic commitment to the current application state, to be placed into the next block header. This has some handy properties. Inconsistencies in updating that state will now appear as blockchain forks which catches a whole class of programming errors. This also simplifies the development of secure lightweight clients, as Merkle-hash proofs can be verified by checking against the block hash, and that the block hash is signed by a quorum.  
  
## **Tendermint in Nutshell**  
  
![Tendermint in nut cell ]([[https://tendermint.com/docs/assets/img/tm-transaction-flow.258ca020.png](https://tendermint.com/docs/assets/img/tm-transaction-flow.258ca020.png)](https://tendermint.com/docs/assets/img/tm-transaction-flow.258ca020.png%5D(https://tendermint.com/docs/assets/img/tm-transaction-flow.258ca020.png)))  
  
If you reach till here and can't fully get this image, then you must check this [Video]([[https://www.youtube.com/watch?v=9krAQzN6tbc&list=RDQM3U0MZx1FJS0&start_radio=1](https://www.youtube.com/watch?v=9krAQzN6tbc&list=RDQM3U0MZx1FJS0&start_radio=1)](https://www.youtube.com/watch?v=9krAQzN6tbc&list=RDQM3U0MZx1FJS0&start_radio=1](https://www.youtube.com/watch?v=9krAQzN6tbc&list=RDQM3U0MZx1FJS0&start_radio=1))). Try to understand Tendermint in Nutshell.  
  
## Installation and basic implementation  
  
- First make sure you have Go installed. If yes, you may skip the part below!  
```sh  
REPO=[[github.com/tendermint/tendermint](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint))    
# change this to a specific release or branch  
BRANCH=master  
GO_VERSION=1.12  
  
sudo apt-get update -y  
sudo apt-get install -y make  
  
# get and unpack golang  
curl -O [[https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz](https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz)](https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz%5D(https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz))    
tar -xvf go$GO_VERSION.linux-amd64.tar.gz  
  
# move go folder and add go binary to path  
sudo mv go /usr/local  
echo "export GOPATH=\$PATH/go" >> ~/.bashrc  
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.bashrc  
source ~/.bashrc  
  
# create the go directory, set GOPATH, and put it on PATH  
mkdir go  
echo "export GOPATH=$HOME/go" >> ~/.profile  
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.profile  
source ~/.profile  
```  
  
  
- The turn is up for tendermint.  
```sh  
# get the code and move into repo  
go get $REPO  
cd "$GOPATH/src/$REPO"  
git checkout $BRANCH  
```  
- Build it! Note in Siemens Internal network get_tools function rarely gets installed on any network you select, Either it's Bridge/NAT.  
```  
make get_tools  
make get_vendor_deps  
make install  
make build  
```  
  
## SINGLE NODE USING DOCKER  
- We would use tm-bench for benchmarking  
- So back to the docker part  
```  
$ mkdir tmp //wherever you are!  
$ cd tmp  
tmp$ chmod 777 ./  
tmp$ docker pull tendermint/bench  
tmp$ docker pull tendermint/tendermint  
tmp$ docker run -it --rm -v "/full/path/to/tmp:/tendermint" tendermint/tendermint init  
tmp$ docker run -it --rm -v "/full/path/to/tmp:/tendermint" -p "26657:26657" --name=tm tendermint/tendermint node --proxy_app=kvstore  
```  
- In another terminal  
```  
$ docker run -it --rm --link=tm tendermint/bench tm:26657  
```  
- OUTPUTS  
```  
Stats Avg StdDev Max Total  
Txs/sec 807 874 2000 8071  
Blocks/sec 0.500 0.500 1 5  
```  
  
- Average 807 TX/Sec on localhost.  
  
  
# Docker Compose  
With Docker Compose, you can spin up local testnets with a single command.  
Requirements : Installed tendermint, docker, docker-compose  
Detailed steps for testnet click [here](Build%20the%20tendermint%20binary%20and,%20optionally,%20the%20tendermint/localnode%20docker%20image).  
  
## Run a testnet  
To start a 4 node testnet run:  
```sh  
cd $GOPATH/src/[[github.com/tendermint/tendermint](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint))    
# Build the linux binary in ./build  
make build-linux  
# (optionally) Build tendermint/localnode image  
make build-docker-localnode  
make localnet-start  
```  
You can open Makefile and see what each of `build-linux` , `build-docker-localnode` , `localnet-start` but our main focus is on `localnet-start`  
  
****Lets see code flow and understand how it works:****  
Open your Makefile in Tendermint directory (`cd $GOPATH/src/[[github.com/tendermint/tendermint`](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint)))  
search `localnet-start` . You can find the piece of code below :  
```sh  
#Run a 4-node testnet locally  
localnet-start: localnet-stop  
@if ! [ -f build/node0/config/genesis.json ]; then docker run --rm -v $(CURDIR)/build:/tendermint:Z tendermint/localnode testnet --v 4 --o . --populate-persistent-peers --starting-ip-address 192.167.10.2 ; fi  
  
docker-compose up  
```  
So, it calls docker-compose.yml file and creates 4 validator node( `--v 4 --o`). Now let's look at compose file (sample one node container):  
```go  
services:  
node0:  
container_name: node0  
image: "tendermint/localnode"  
environment:  
- ID=0  
- LOG=${LOG:-tendermint.log}  
ports:  
- 26656-26657:26656-26657  
volumes:  
- ./build:/tendermint:Z  
networks:  
localnet:  
ipv4_address: 192.167.10.2  
```  
The nodes bind their RPC servers to ports 26657, 26660, 26662, and 26664 on the host.  
The nodes of the network expose their P2P and RPC endpoints to the host machine on ports 26656-26657, 26659-26660, 26661-26662, and 26663-26664 respectively  
  
After you start run test net, in another terminal run `docker ps` and you can see 4 container for corresponding to 4 node created. The `make localnet-start` creates files for a 4-node testnet in `./build`. Go to build file (`cd $GOPATH/src/[[github.com/tendermint/tendermint/build`](http://github.com/tendermint/tendermint/build)](http://github.com/tendermint/tendermint/build%5D(http://github.com/tendermint/tendermint/build))) and you can see directory for each node.  
  
## Run a Multiple Nodes in Docker Compose  
Before jumping into Multiple node first try to successfully run the above 4 node testnet.  
### Changes in Makefile  
Find the piece of code below in the Makefile.  
```sh  
localnet-start: localnet-stop  
@if ! [ -f build/node0/config/genesis.json ]; then docker run --rm -v $(CURDIR)/build:/tendermint:Z tendermint/localnode testnet --v 4 --o . --populate-persistent-peers --starting-ip-address 192.167.10.2 ; fi.  
docker-compose up  
```  
Change it by below piece of code to run 5 validators and 3 non-validators network. Set the validator node as per your requirement. See the change : `--v 4 --o` to `--v 5 --n 3 --o`  
```  
localnet-start: localnet-stop  
@if ! [ -f build/node0/config/genesis.json ]; then docker run --rm -v $(CURDIR)/build:/tendermint:Z tendermint/localnode testnet --v 5 --n 3 --o . --populate-persistent-peers --starting-ip-address 192.167.10.2 ; fi  
docker-compose up  
```  
### Changes in docker_compose.yml  
Run the below python code and it asks for the `num_node`(Number of validator node ) to be created. Paste the output of the code in Makefile.  
```python  
num_node=int(input())  
c=0  
st="tendermint/localnode"  
print("version: '3'")  
print()  
print("services:")  
for i in range(num_node):  
print(" node"+str(i)+":")  
print(" container_name: node"+str(i))  
print(" image: "+"\""+st+"\"")  
print(" environment:")  
print(" - ID="+str(i))  
print(" - LOG=${LOG:-tendermint.log}")  
print(" ports:")  
print(" - "+str(26656+c)+"-"+str(26657+c)+":26656-26657")  
print(" volumes:")  
print(" - ./build:/tendermint:Z")  
print(" networks:")  
print(" localnet:")  
print(" ipv4_address: 192.167.10."+str(2+i))  
print()  
print()  
c+=2  
print("networks:")  
print(" localnet:")  
print(" driver: bridge")  
print(" ipam:")  
print(" driver: default")  
print(" config:")  
print(" -")  
print(" subnet: [[192.167.10.0/16](http://192.167.10.0/16)](http://192.167.10.0/16%5D(http://192.167.10.0/16))")  
print()  
```  
### Start localnet  
Before running it, don't forget to cleanup the old files and then run as below:  
```  
cd $GOPATH/src/[[github.com/tendermint/tendermint](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint))    
  
# Clear the build folder  
sudo rm -rf ./build/node*  
tendermint unsafe_reset_all  
  
make localnet-start  
```  
### Benchmarking - tm bench  
Now for benchmarking Open the new terminal, start tm bench as follow:  
```  
cd $GOPATH/src/[[github.com/tendermint/tendermint/tools/tm-bench](http://github.com/tendermint/tendermint/tools/tm-bench)](http://github.com/tendermint/tendermint/tools/tm-bench%5D(http://github.com/tendermint/tendermint/tools/tm-bench))    
go build  
./tm-bench  
./tm-bench -T 10 -s 40 -r 1000 localhost:26657  
```  
Usage: You can set variable as below:  
  
```  
tm-bench [-c 1] [-T 10] [-r 1000] [-s 250] [endpoints]  
  
Examples:  
tm-bench localhost:26657  
Flags:  
-T int  
Exit after the specified amount of time in seconds (default 10)  
-c int  
Connections to keep open per endpoint (default 1)  
-r int  
Txs per second to send in a connection (default 1000)  
-s int  
Size per tx in bytes  
-v Verbose output  
```  
## Error Encountered  
ERROR - 1:  
If you get peer dialing failed. This mean network is not in syn. Check if you updated the docker-compose.yml file. Number of container should be equal to the number of validator initialized. Second possible reason could be Large number of validators.  
![Consensus Overviewt ]([[https://matrix.org/_matrix/media/v1/download/matrix.org/eodaMYvRhTlDzJZQyDwoUdFP](https://matrix.org/_matrix/media/v1/download/matrix.org/eodaMYvRhTlDzJZQyDwoUdFP)](https://matrix.org/_matrix/media/v1/download/matrix.org/eodaMYvRhTlDzJZQyDwoUdFP%5D(https://matrix.org/_matrix/media/v1/download/matrix.org/eodaMYvRhTlDzJZQyDwoUdFP)))  
  
ERROR - 2: This is a network error ( you are behind the proxy)  
![Consensus Overviewt ]([[https://matrix.org/_matrix/media/v1/thumbnail/matrix.org/dxAudbnmOJfXAuAlrpxNZQBv?width=800&height=600](https://matrix.org/_matrix/media/v1/thumbnail/matrix.org/dxAudbnmOJfXAuAlrpxNZQBv?width=800&height=600)](https://matrix.org/_matrix/media/v1/thumbnail/matrix.org/dxAudbnmOJfXAuAlrpxNZQBv?width=800&height=600](https://matrix.org/_matrix/media/v1/thumbnail/matrix.org/dxAudbnmOJfXAuAlrpxNZQBv?width=800&height=600)))  
ERROR -3:  
```  
trevor@ipfs-droplet:~/tendermint$ sudo tendermint node --proxy_app=kvstore  
  
NOTE[03-13|15:03:43] Loaded PrivValidator module=types file=/home/trevor/.tendermint/priv_validator.json privValidator="PrivValidator{C9AF69E487CFC01E7C4D6180F87344E164FAF1C6 LH:0, LR:0, LS:0}"  
panic: runtime error: index out of range  
  
goroutine 1 [running]:  
[[github.com/tendermint/go-common.Connect(0x7ffd7ef5e8ca](http://github.com/tendermint/go-common.Connect(0x7ffd7ef5e8ca)](http://github.com/tendermint/go-common.Connect(0x7ffd7ef5e8ca%5D(http://github.com/tendermint/go-common.Connect(0x7ffd7ef5e8ca)), 0x7, 0xb, 0xb, 0xc42004b5b8, 0x4110d0)  
/build/tendermint-J_eVDl/tendermint-0.8.0+git20170113.0.764091d/obj-x86_64-linux-gnu/src/[[github.com/tendermint/go-common/net.go:11](http://github.com/tendermint/go-common/net.go:11)](http://github.com/tendermint/go-common/net.go:11%5D(http://github.com/tendermint/go-common/net.go:11)) +0xc5  
[[github.com/tendermint/abci/client.(*socketClient).OnStart(0xc42007f220](http://github.com/tendermint/abci/client.(*socketClient).OnStart(0xc42007f220)](http://github.com/tendermint/abci/client.(*socketClient).OnStart(0xc42007f220%5D(http://github.com/tendermint/abci/client.(*socketClient).OnStart(0xc42007f220)), 0xc42004b5d8, 0x413327)  
/build/tendermint-J_eVDl/tendermint-0.8.0+git20170113.0.764091d/obj-x86_64-linux-gnu/src/[[github.com/tendermint/abci/client/socket_client.go:68](http://github.com/tendermint/abci/client/socket_client.go:68)](http://github.com/tendermint/abci/client/socket_client.go:68%5D(http://github.com/tendermint/abci/client/socket_client.go:68)) +0x3e  
[[github.com/tendermint/go-common.(*BaseService).Start(0xc42007f220](http://github.com/tendermint/go-common.(*BaseService).Start(0xc42007f220)](http://github.com/tendermint/go-common.(*BaseService).Start(0xc42007f220%5D(http://github.com/tendermint/go-common.(*BaseService).Start(0xc42007f220)), 0xc42007f220, 0xc42004b660, 0xc42001b9c0)  
/build/tendermint-J_eVDl/tendermint-0.8.0+git20170113.0.764091d/obj-x86_64-linux-gnu/src/[[github.com/tendermint/go-common/service.go:96](http://github.com/tendermint/go-common/service.go:96)](http://github.com/tendermint/go-common/service.go:96%5D(http://github.com/tendermint/go-common/service.go:96)) +0x2c2  
[[github.com/tendermint/abci/client.NewSocketClient(0x7ffd7ef5e8ca](http://github.com/tendermint/abci/client.NewSocketClient(0x7ffd7ef5e8ca)](http://github.com/tendermint/abci/client.NewSocketClient(0x7ffd7ef5e8ca%5D(http://github.com/tendermint/abci/client.NewSocketClient(0x7ffd7ef5e8ca)), 0x7, 0xc42007c400, 0x0, 0x0, 0xc42004b708)  
/build/tendermint-J_eVDl/tendermint-0.8.0+git20170113.0.764091d/obj-x86_64-linux-gnu/src/[[github.com/tendermint/abci/client/socket_client.go:57](http://github.com/tendermint/abci/client/socket_client.go:57)](http://github.com/tendermint/abci/client/socket_client.go:57%5D(http://github.com/tendermint/abci/client/socket_client.go:57)) +0x23c  
[[github.com/tendermint/abci/client.NewClient(0x7ffd7ef5e8ca](http://github.com/tendermint/abci/client.NewClient(0x7ffd7ef5e8ca)](http://github.com/tendermint/abci/client.NewClient(0x7ffd7ef5e8ca%5D(http://github.com/tendermint/abci/client.NewClient(0x7ffd7ef5e8ca)), 0x7, 0xac2e46, 0x6, 0x0, 0x2, 0xc42001b980, 0x4, 0x4)  
```  
  
  
Only option for such panic Error:  
1. Remove everything old  
  
```  
rm -rf ~/.tendermint  
rm -rf $GOPATH/src/[[github.com/tendermint/tendermint](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint))    
rm -rf $GOPATH/bin/tendermint  
  
```  
  
2. Install go [[[https://golang.org/doc/install](https://golang.org/doc/install)](https://golang.org/doc/install%5D(https://golang.org/doc/install))](https://golang.org/doc/install%5D(https://golang.org/doc/install)%5D(https://golang.org/doc/install%5D(https://golang.org/doc/install)))    
3. Install Tendermint Core [[[https://tendermint.com/docs/introduction/install.html#install-tendermint](https://tendermint.com/docs/introduction/install.html#install-tendermint)](https://tendermint.com/docs/introduction/install.html#install-tendermint](https://tendermint.com/docs/introduction/install.html%23install-tendermint))](https://tendermint.com/docs/introduction/install.html#install-tendermint](https://tendermint.com/docs/introduction/install.html%23install-tendermint)](https://tendermint.com/docs/introduction/install.html%23install-tendermint](https://tendermint.com/docs/introduction/install.html%23install-tendermint)))    
  
ERROR -4  
This is Network error basically. you have to retry by deleting the folder it has been trying to clone. Like in this case it shows error while installing gogo/protobuf. Go back to `cd $GOPATH/src/[[github.com](http://github.com/)]([http://github.com/)`](http://github.com/)) find the folder delete it. and come back to `cd $GOPATH/src/[[github.com/tendermint/tendermint`](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint)) directory and try running command again.  
```sh  
ubuntu@ubuntu:~/go/src/[[[github.com/tendermint/tendermint$](http://github.com/tendermint/tendermint$)](http://github.com/tendermint/tendermint$%5D(http://github.com/tendermint/tendermint$))](http://github.com/tendermint/tendermint$%5D(http://github.com/tendermint/tendermint$)%5D(http://github.com/tendermint/tendermint$%5D(http://github.com/tendermint/tendermint$))) make get_tools  
--> Installing tools  
./scripts/get_tools.sh  
--> Installing golang/dep (22125cfaa6ddc71e145b1535d4b7ee9744fefff2)...  
~/go/src/[[[github.com/golang/dep](http://github.com/golang/dep)](http://github.com/golang/dep%5D(http://github.com/golang/dep))](http://github.com/golang/dep%5D(http://github.com/golang/dep)%5D(http://github.com/golang/dep%5D(http://github.com/golang/dep))) ~/go/src/[[[github.com](http://github.com/)]([http://github.com/)]([http://github.com/](http://github.com/)](http://github.com/)%5D(%5Bhttp://github.com/%5D(http://github.com/)))  
/home/ubuntu/go/src/[[[github.com/golang/dep](http://github.com/golang/dep)](http://github.com/golang/dep%5D(http://github.com/golang/dep))](http://github.com/golang/dep%5D(http://github.com/golang/dep)%5D(http://github.com/golang/dep%5D(http://github.com/golang/dep)))    
~/go/src/[[[github.com](http://github.com/)]([http://github.com/)]([http://github.com/](http://github.com/)](http://github.com/)%5D(%5Bhttp://github.com/%5D(http://github.com/)))  
--> Done  
  
--> Installing gogo/protobuf (61dbc136cf5d2f08d68a011382652244990a53a9)...  
ERROR: no such directory gogo/protobuf/protoc-gen-gogo  
Makefile:81: recipe for target 'get_tools' failed  
make: *** [get_tools] Error 1  
```  
[[https://github.com/tendermint/tendermint/issues/1217#issuecomment-500312683](https://github.com/tendermint/tendermint/issues/1217#issuecomment-500312683)](https://github.com/tendermint/tendermint/issues/1217#issuecomment-500312683](https://github.com/tendermint/tendermint/issues/1217%23issuecomment-500312683))    
[[https://github.com/tendermint/tendermint/issues/3425](https://github.com/tendermint/tendermint/issues/3425)](https://github.com/tendermint/tendermint/issues/3425%5D(https://github.com/tendermint/tendermint/issues/3425))    
Sometime you need to clean install go, as It happens that go is installed with not all packages .  
[https://askubuntu.com/questions/742078/uninstalling-go-golang](https://askubuntu.com/questions/742078/uninstalling-go-golang)  
  
## Automated script  
All the installation, setting up network and Bench marking have been code by 3 scripts. Must change the permission of the script before running it. `chmod +x script_name.sh`  
  
1. Installer:  
This is an automated script which you should run on fresh Ubuntu system. It will set up go & Tendermint along with you can use docker compose to start local test-nets. Make sure Docker compose is installed.  
```  
#!/bin/bash  
REPO=[[github.com/tendermint/tendermint](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint))    
# change this to a specific release or branch  
BRANCH=master  
GO_VERSION=1.12  
  
sudo apt-get update -y  
sudo apt-get install -y make  
  
# get and unpack golang  
curl -O [[https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz](https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz)](https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz%5D(https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz))    
tar -xvf go$GO_VERSION.linux-amd64.tar.gz  
  
# move go folder and add go binary to path  
sudo mv go /usr/local  
echo "export GOPATH=\$PATH/go" >> ~/.bashrc  
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.bashrc  
source ~/.bashrc  
  
# create the go directory, set GOPATH, and put it on PATH  
mkdir go  
echo "export GOPATH=$HOME/go" >> ~/.profile  
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.profile  
source ~/.profile  
  
# get the code and move into repo  
go get $REPO  
cd "$GOPATH/src/$REPO"  
git checkout $BRANCH  
  
make get_tools  
make get_vendor_deps  
make install  
make build  
  
cd $GOPATH/src/[[github.com/tendermint/tendermint](http://github.com/tendermint/tendermint)](http://github.com/tendermint/tendermint%5D(http://github.com/tendermint/tendermint))    
# Build the linux binary in ./build  
make build-linux  
make build-docker-localnode  
```  
2. init_network:  
This script file removes any existing old files. It takes 2 Argument. first argument is the number of node it had previously run, by default (initial installation give 4). Second argument is the current number of node you want as the validator node. Ex : `./init_network.sh 4 5` . It automatically generates docker-compose.yml file using `genMakefile.py` make sure it is present in the same directory.  
```  
#!/bin/bash  
echo "Removing compose file"  
rm docker-compose.yml  
echo "Updating compose file"  
python genMakefile.py $2 >> docker-compose.yml  
echo "Updating Makefile file"  
sed -i "s/--v $1 --o/--v $2 --o/g" Makefile  
tendermint unsafe_reset_all  
sudo rm -rf ./build/node*  
  
echo "Starting Network"  
make localnet-start  
```  
3. init_bench.sh:  
Make sure go is properly installed. Start your network and after blocks start getting committed into the blockchain, Run this script in another terminal. This would generate report for throughput and latency for varying txs size. You can modify it for other parameter. Run it as: `./inti_bench.sh >> output.txt` to store output in file.  
  
```  
#!/bin/bash  
cd tools/tm-bench  
go build  
echo "Testing for -T 50 -r 1000 -s 50 Node :$1"  
./tm-bench -T 50 -r 1000 -s 50 localhost:26657  
echo ""  
echo "Testing for -T 50 -r 1000 -s 100 Node :$1"  
./tm-bench -T 50 -r 1000 -s 100 localhost:26657  
echo ""  
echo "Testing for -T 50 -r 1000 -s 250 Node :$1"  
./tm-bench -T 50 -r 1000 -s 250 localhost:26657  
echo ""  
echo "Testing for -T 50 -r 1000 -s 500 Node :$1"  
./tm-bench -T 50 -r 1000 -s 500 localhost:26657  
echo ""  
echo "Testing for -T 50 -r 1000 -s 750 Node :$1"  
./tm-bench -T 50 -r 1000 -s 750 localhost:26657  
echo  
```  
## Conclusion  
  
After Testing tendermint on various parameter, the result shows that tendermint has a limit of 30 Nodes, after adding more node on top of it results in P2P Network breakdown. Also if I increase benchmarking and “peer dialup timeout” time then it shows a little transection getting passed the consensus. When it comes to throughput, on increasing number of nodes, throughput decrease exponentially. But still for smaller number of validators, tendermint has relative high throughput compared to other consensus algorithm. Since it has a modular structure, it is good block-chain provider to run your own blockchain application on the top
