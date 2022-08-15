#!/bin/bash
source "./env.sh"

starknet call \
    --address ${CONTRACT_ADDRESS} \
    --abi abi.json \
    --function get_balance

echo "Done"