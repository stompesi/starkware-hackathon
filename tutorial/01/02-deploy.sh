#!/bin/bash
source "./env.sh"

CONTRACT_ADDRESS=`starknet deploy \
  --contract compiled_contract.json \
  --no_wallet \
| grep "Contract address" | tr ": " "\n" | awk 'NR==4{ print; exit }'`

sed -i "s/CONTRACT_ADDRESS=.*/CONTRACT_ADDRESS=\"${CONTRACT_ADDRESS}\"/g" env.sh

echo "Contract address: $CONTRACT_ADDRESS"
echo "Deployed"