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




