#!/bin/bash
source "./env.sh"

RESULT=`starknet deploy \
  --contract $AMM_COMPILED_FILE \
  --no_wallet`

CONTRACT_ADDRESS=`echo $RESULT | grep "Contract address" | tr ": " "\n" | awk 'NR==8{ print; exit }'`
TRANSACTION_HASH=`echo $RESULT | grep "Contract address" | tr ": " "\n" | awk 'NR==12{ print; exit }'`

sed -i "s/AMM_CONTRACT_ADDRESS=.*/AMM_CONTRACT_ADDRESS=\"${CONTRACT_ADDRESS}\"/g" env.sh

echo "Contract address: $CONTRACT_ADDRESS"
echo ""
echo "Deployed - please check transaction status using the command (until generate \"block_hash\")"
echo "./99-tx_status.sh $TRANSACTION_HASH"
