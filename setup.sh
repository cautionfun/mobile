#!/bin/bash

# Update and install dependencies
pkg install -y libcurl4-openssl-dev
pkg install -y libssl-dev 
pkg install -y libjansson
pkg install -y automake
pkg install -y autotools-dev
pkg install -y build-essential
pkg install -y git
# Clone the ccminer source
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git

mv mobile/* ccminer/

cd ccminer

# Make scripts executable and build ccminer
chmod +x build.sh configure.sh autogen.sh 2threads.sh 3threads.sh 4threads.sh 6threads.sh 7threads.sh
./build.sh

echo "Setup complete! Enter 'cd ccminer' then choose your # of threads and run the miner like so: './4threads.sh'"
