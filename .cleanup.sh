#! /usr/bin/bash

# ALQ, Hamburg 2023
# Assuming an A100 DGX
# $sudo ./.cleanup.sh

clear


if (($EUID != 0))
  then 
    echo "Please run this scrip with root privileges"
    exit
  else

    ip addr flush ibp12s0
    ip link set dev ibp12s0 down
    ip addr flush ibp18s0
    ip link set dev ibp18s0 down
    ip addr flush ibp75s0
    ip link set dev ibp75s0 down
    ip addr flush ibp84s0
    ip link set dev ibp84s0 down

    ip addr flush ibp141s0
    ip link set dev ibp141s0 down
    ip addr flush ibp148s0
    ip link set dev ibp148s0 down
    ip addr flush ibp186s0
    ip link set dev ibp186s0 down
    ip addr flush ibp204s0
    ip link set dev ibp204s0 down


    echo "cleaned up, verifying"

    ip -br a
fi
