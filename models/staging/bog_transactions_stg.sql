SELECT
    transaction_date,
    transaction_amount,
    commission,
    settlement_amount,
    operation_type,
    rrn
FROM {{ source("BOG_TRANSACTIONS", "bog") }}