#!/bin/bash

# Set files
AMM_CAIRO_FILE="./src/amm.cairo"
AMM_COMPILED_FILE="./dst/amm_compiled.json"
AMM_ABI_FILE="./dst/amm_sample_abi.json"

# Set network
export STARKNET_NETWORK="alpha-goerli"

# Set wallet
export STARKNET_WALLET=starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount

# Set account id
export ACCOUNT_ID=123


# Set constract address
# 0xe00fe0f75293f08b290aae0b541111342566334a2adf375deb7a99d9fa0f61
export AMM_CONTRACT_ADDRESS="0x00bf275f9ac9408b4b531d7490278b151bd802a31078b2c6dd9d1211452e44a6"

