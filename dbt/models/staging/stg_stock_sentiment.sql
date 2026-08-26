SELECT
    symbol,
    sentiment_score
FROM {{ source('stock_db', 'stock_sentiments') }}
WHERE symbol IS NOT NULL