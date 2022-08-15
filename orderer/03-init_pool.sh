#!/bin/bash
source "./env.sh"

starknet invoke \
    --address $AMM_CONTRACT_ADDRESS \
    --abi $AMM_ABI_FILE \
    --function init_pool \
    --inputs $1 $2

echo "Done - please check transaction status using the command (until generate \"block_hash\")"
echo "./99-tx_status.sh \$TRANSACTION_HASH"