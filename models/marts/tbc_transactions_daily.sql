SELECT
  transaction_date,
  sum(settlement_amount) as total_settlement_amount
FROM {{ ref("tbc_transactions") }}
GROUP BY transaction_date