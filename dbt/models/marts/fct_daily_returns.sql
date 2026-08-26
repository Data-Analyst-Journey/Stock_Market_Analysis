SELECT
    date,
    symbol,
    close,
    daily_return,
    cumulative_return
FROM {{ ref('int_stock_returns') }}
WHERE daily_return IS NOT NULL