#!/bin/bash
source "./env.sh"

starknet call \
    --address $AMM_CONTRACT_ADDRESS \
    --abi $AMM_ABI_FILE \
    --function get_account_token_balance \
    --inputs $1 $2
