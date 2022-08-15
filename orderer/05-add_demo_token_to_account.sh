#!/bin/bash
source "./env.sh"

starknet invoke \
    --address $AMM_CONTRACT_ADDRESS \
    --abi $AMM_ABI_FILE \
    --function add_demo_token \
    --inputs $1 $2 $3

echo "Done - please check transaction status using the command (until generate \"block_hash\")"
echo "./99-tx_status.sh \$TRANSACTION_HASH"