SELECT
    `Date` AS transaction_date,
    `Description` AS transaction_description,
    `Paid In` AS settlement_amount,
    `Transaction ID` AS rrn
FROM {{ source("TRANSACTIONS_BQ", "tbc") }}
WHERE `Op Code` = 'MMS'