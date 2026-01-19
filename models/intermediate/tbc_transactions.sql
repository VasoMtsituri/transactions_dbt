SELECT
    transaction_date,
    SAFE_CAST(SPLIT(transaction_description, ',')[SAFE_OFFSET(3)] AS NUMERIC) AS transaction_amount,
    SAFE_CAST(SPLIT(transaction_description, ',')[SAFE_OFFSET(3)] AS NUMERIC) - settlement_amount AS commission,
    settlement_amount,
    SPLIT(transaction_description, ',')[SAFE_OFFSET(2)] AS operation_type,
    rrn,
    'TBC' AS source_bank
FROM {{ ref("tbc_transactions_stg") }}