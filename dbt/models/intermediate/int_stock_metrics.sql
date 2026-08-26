-- models/intermediate/int_stock_metrics.sql
WITH returns AS (
    SELECT
        symbol,
        daily_return
    FROM {{ ref('int_stock_returns') }}
),

metrics AS (
    SELECT
        symbol,
        COUNT(*) AS days,
        AVG(daily_return) AS avg_daily_return,
        STDDEV(daily_return) AS std_daily_return,
        (EXP(SUM(LN(1 + daily_return))) - 1) AS total_return
    FROM returns
    GROUP BY symbol
)

SELECT
    symbol,
    days,
    avg_daily_return,
    std_daily_return,
    total_return,
    -- (Annualized Return)
    (1 + total_return) * (252.0 / days) - 1 AS annualized_return,
    --   (Annualized Volatility)
    std_daily_return * SQRT(252) AS volatility,
       
    ((1 + total_return) * (252.0 / days) - 1) / (std_daily_return * SQRT(252)) AS sharpe_ratio
FROM metrics