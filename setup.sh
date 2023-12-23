#!/bin/bash

# Update and install dependencies
pkg install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git

# Clone the ccminer source
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer

# Make scripts executable and build ccminer
chmod +x build.sh configure.sh autogen.sh
./build.sh

echo "Setup complete! Run './ccminer -a verus -o stratum+tcp://pool.verus.io:9999 -u <YourAddress>.<YourWorkerName> -p x' to start mining."
