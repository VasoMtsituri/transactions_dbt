SELECT
  transaction_date,
  operation_type,
  sum(settlement_amount) as total_settlement_amount
FROM {{ ref("tbc_transactions") }}
GROUP BY transaction_date, operation_type