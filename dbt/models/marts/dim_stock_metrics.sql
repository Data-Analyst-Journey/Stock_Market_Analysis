SELECT
    symbol,
    days,
    avg_daily_return,
    std_daily_return,
    total_return,
    annualized_return,
    volatility,
    sharpe_ratio
FROM {{ ref('int_stock_metrics') }}
WHERE symbol IS NOT NULL
  AND total_return IS NOT NULL