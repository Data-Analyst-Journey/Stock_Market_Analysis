WITH daily_returns AS (
    SELECT
        date,
        symbol,
        close,
        LAG(close) OVER (PARTITION BY symbol ORDER BY date) AS previous_close,
        (close / LAG(close) OVER (PARTITION BY symbol ORDER BY date) - 1) AS daily_return
    FROM {{ ref('stg_stock_data') }}
)

SELECT
    date,
    symbol,
    close,
    previous_close,
    daily_return,
    -- (Cumulative Return)
    SUM(daily_return) OVER (PARTITION BY symbol ORDER BY date) AS cumulative_return
FROM daily_returns
WHERE daily_return IS NOT NULL