#!/bin/bash
source "./env.sh"

starknet invoke \
    --address ${CONTRACT_ADDRESS} \
    --abi abi.json \
    --function increase_balance \
    --inputs $1

echo "Done"