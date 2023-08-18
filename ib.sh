#! /usr/bin/bash

# ALQ, Hamburg 2023
# Assuming an A100 DGX
# $sudo ./practice7.sh

clear

PS3='Please enter your choice: '
options=("Cleanup" "Set DGX1 IP for IPoIB" "Set DGX2 IP for IPoIB" "Verify IP" "Quit")
select opt in "${options[@]}"
do
case $opt in
"Cleanup")
                 echo "cleaning up the IP(oIB) configuration from the 8 IB cluster interfaces"
  ./cleanup.sh
                  break
                  ;;
                "Set DGX1 IP for IPoIB")
                  echo "setting IP(oIB) configuration for DGX1 practice 7"
                  ./.ib.sh
                  break
                  ;;
                "Set DGX2 IP for IPoIB")
                  echo "setting IP(oIB) configuration for DGX2 practice 7"
                  ./.ib.sh
                  break
                  ;;
                "Verify IP")
                  clear
                  ip -br a
                  ibdev2netdev
                  break
                  ;;
                "Quit")
                  break
                  ;;
                *) echo "invalid option $REPLY";;
         esac
done
