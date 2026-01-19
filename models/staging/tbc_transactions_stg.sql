SELECT
    `Date` AS transaction_date,
    `Description` AS transaction_description,
    SAFE_CAST(`Paid In` AS NUMERIC) AS settlement_amount,
    `Transaction ID` AS rrn
FROM {{ source("TRANSACTIONS_BQ", "tbc") }}
WHERE `Op Code` = 'MMS'