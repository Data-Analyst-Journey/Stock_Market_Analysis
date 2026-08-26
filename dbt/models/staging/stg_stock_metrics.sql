SELECT
    "Symbol" AS symbol,
    "Total_Return" AS total_return,
    "Annualized_Return" AS annualized_return,
    "Volatility" AS volatility,
    "Sharpe_Ratio" AS sharp_ratio,
    "Days" AS days
FROM {{ ref('stock_metrics') }}
WHERE "Symbol" IS NOT NULL
  AND "Total_Return" IS NOT NULL