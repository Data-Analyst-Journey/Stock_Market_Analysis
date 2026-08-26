WITH daily_returns AS (
    SELECT
        date::DATE AS date,
        symbol,
        close,
        daily_return,
        cumulative_return
    FROM {{ ref('fct_daily_returns') }}
),

predictions AS (
    SELECT
        date::DATE AS date,
        symbol,
        predicted_close
    FROM {{ ref('stg_stock_predictions') }}
),

sentiment AS (
    SELECT
        symbol,
        sentiment_score
    FROM {{ ref('stg_stock_sentiment') }}
)

SELECT
    d.date,
    d.symbol,
    d.close,
    d.daily_return,
    d.cumulative_return,
    p.predicted_close,
    s.sentiment_score
FROM daily_returns d
LEFT JOIN predictions p
    ON d.date = p.date
    AND d.symbol = p.symbol
LEFT JOIN sentiment s
    ON d.symbol = s.symbol
WHERE d.date IS NOT NULL