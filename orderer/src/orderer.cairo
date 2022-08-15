%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2
from starkware.cairo.common.math import assert_le, assert_nn_le, unsigned_div_rem
from starkware.starknet.common.syscalls import storage_read, storage_write

const POOL_UPPER_BOUND = 2 ** 30
const ACCOUNT_BALANCE_BOUND = 1073741  # 2**30 // 1000.

# A map from account and token type to the corresponding balance of that account.
@storage_var
func tx_ids(order : felt) -> (tx_id : felt):
end

@storage_var
func tx_order() -> (order : felt):
end

@view
func is_valid_order{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(
    tx_id : felt
) -> (is_valid : felt):
    let (current_tx_order) = tx_order.read()
    let (current_order_tx_id) = tx_ids.read(current_tx_order)

    return assert_eq(current_order_tx_id, txId)
end
