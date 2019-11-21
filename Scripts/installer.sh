REPO=github.com/tendermint/tendermint
# change this to a specific release or branch
BRANCH=master
GO_VERSION=1.12

sudo apt-get update -y
sudo apt-get install -y make

# get and unpack golang
curl -O https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
tar -xvf go$GO_VERSION.linux-amd64.tar.gz

# move go folder and add go binary to path
sudo mv go /usr/local
echo "export GOPATH=\$PATH/go" >> ~/.bashrc
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc
# create the go directory, set GOPATH, and put it on PATH
mkdir go
echo  "export GOPATH=$HOME/go"  >>  ~/.profile
echo  "export PATH=\$PATH:\$GOPATH/bin"  >>  ~/.profile
source  ~/.profile

# get the code and move into repo
go get $REPO
cd "$GOPATH/src/$REPO"
git checkout $BRANCH

make get_tools
make get_vendor_deps
make install
make build
