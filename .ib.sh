#! /usr/bin/bash

# ALQ, Hamburg 2023
# Assuming an A100 DGX
# $sudo ./.ib.sh

clear

# if dgx01

ip ad ad 192.168.1.1/24 dev ibp12s0
ip link set ibp12s0 up
ip ad ad 192.168.2.1/24 dev ibp18s0
ip link set ibp18s0 up
ip ad ad 192.168.3.1/24 dev ibp75s0
ip link set ibp75s0 up
ip ad ad 192.168.4.1/24 dev ibp84s0
ip link set ibp84s0 up

ip ad ad 192.168.5.1/24 dev ibp141s0
ip link set ibp141s0 up
ip ad ad 192.168.6.1/24 dev ibp148s0
ip link set ibp148s0 up
ip ad ad 192.168.7.1/24 dev ibp186s0
ip link set ibp186s0 up
ip ad ad 192.168.8.1/24 dev ibp204s0
ip link set ibp204s0 up

# else

#! /usr/bin/bash

# ALQ, Hamburg 2023
# Assuming an A100 DGX
# $sudo ./p7.sh

clear

ip ad ad 192.168.1.2/24 dev ibp12s0
ip link set ibp12s0 up
ip ad ad 192.168.2.2/24 dev ibp18s0
ip link set ibp18s0 up
ip ad ad 192.168.3.2/24 dev ibp75s0
ip link set ibp75s0 up
ip ad ad 192.168.4.2/24 dev ibp84s0
ip link set ibp84s0 up

ip ad ad 192.168.5.2/24 dev ibp141s0
ip link set ibp141s0 up
ip ad ad 192.168.6.2/24 dev ibp148s0
ip link set ibp148s0 up
ip ad ad 192.168.7.2/24 dev ibp186s0
ip link set ibp186s0 up
ip ad ad 192.168.8.2/24 dev ibp204s0
ip link set ibp204s0 up

ip -br a

ip -br a
