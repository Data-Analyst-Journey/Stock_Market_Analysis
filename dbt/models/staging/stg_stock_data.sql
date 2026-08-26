SELECT
    "Date" AS date,
    "Symbol" AS symbol,
    "Open" AS open,
    "High" AS high,
    "Low" AS low,
    "Close" AS close,
    "Volume" AS volume
FROM {{ ref('stock_data') }}
WHERE "Close" IS NOT NULL
  AND "Volume" > 0