SELECT
    date,
    symbol,
    predicted_close
FROM {{ source('stock_db','stock_predictions') }}
WHERE symbol IS NOT NULL