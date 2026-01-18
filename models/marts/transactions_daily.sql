SELECT
  transaction_date,
  sum(settlement_amount) as total_settlement_amount
FROM {{ ref("bog_transactions") }}
GROUP BY transaction_date