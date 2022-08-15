#!/bin/bash
source "./env.sh"

starknet-compile $AMM_CAIRO_FILE \
  --output $AMM_COMPILED_FILE \
  --abi $AMM_ABI_FILE

echo "Completed"