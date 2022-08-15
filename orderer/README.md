### Compile

./01-compile.sh

### Deploy

./02-compile.sh

### Init pool (todo: change stark wallet...)

- instead using the explorer (https://goerli.voyager.online/contract/CONTRACT_ADDRESS#writeContract)
  - CONTRACT_ADDRESS is deployed contract address

./03-init_pool.sh [A_TOKEN_AMOUNT] [B_TOKEN_AMOUNT]

### Check pool info

- $TOKEN_NUMBER is 1 or 2

./04-get_pool_token_balance.sh [TOKEN_NUMBER]

### Add demo token to an account (todo: change stark wallet...)

- Instead using the explorer (https://goerli.voyager.online/contract/CONTRACT_ADDRESS#writeContract)

  - CONTRACT_ADDRESS is deployed contract address

./05-add_demo_token_to_account [ACCOUNT_NUMBER] [A_TOKEN_AMOUNT] [B_TOKEN_AMOUNT]

### Check account token amount

- $TOKEN_NUMBER is 1 or 2

./06-get_account_token_balance.sh [ACCOUNT_NUMBER] [TOKEN_NUMBER]

### Swap (todo: change stark wallet...)

- Instead using the explorer (https://goerli.voyager.online/contract/CONTRACT_ADDRESS#writeContract)
  - CONTRACT_ADDRESS is deployed contract address

./07-swap.sh [ACCOUNT_NUMBER] [TOKEN_NUMBER] [TOKEN_AMOUNT]
