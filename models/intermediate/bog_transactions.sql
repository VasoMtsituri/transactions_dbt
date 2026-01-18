SELECT
    DATE(transaction_date) AS transaction_date,
    transaction_amount,
    commission,
    settlement_amount,
    operation_type,
    rrn,
    'BOG' AS source_bank
FROM {{ ref("bog_transactions_stg") }}