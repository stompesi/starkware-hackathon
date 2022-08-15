#!/bin/bash
source "./env.sh"

starknet-compile ./src/contract.cairo \
  --output compiled_contract.json \
  --abi abi.json

echo "Completed"