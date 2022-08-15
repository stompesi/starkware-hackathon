#!/bin/bash
source "./env.sh"

starknet tx_status --hash $1

echo "Done"