```markdown
# 📊 Stock Market Analysis Project

## 📌 Project Overview

This is a complete end-to-end data analytics project for stock market analysis. The project includes:

- **Data Pipeline**: Python scripts to download and process stock data from Yahoo Finance.
- **Data Modeling**: dbt models (Staging, Intermediate, Marts) for clean and structured data.
- **Predictive Modeling**: Random Forest model to predict next-day closing prices.
- **Sentiment Analysis**: Average sentiment score from financial news headlines.
- **Interactive Dashboard**: Power BI dashboard with 4 pages for in-depth analysis.

---

## 🛠️ Tools & Technologies

| Category | Tools |
|---|---|
| **Data Extraction** | Python (yfinance, pandas, numpy) |
| **Data Modeling** | dbt, PostgreSQL |
| **Machine Learning** | Scikit-learn (Random Forest) |
| **Sentiment Analysis** | NLTK (VADER) |
| **Visualization** | Power BI |
| **Version Control** | Git, GitHub |

---

## 📂 Project Structure



Stock_Market_Analysis/
├── python/
│   ├── download_data.py         # Download stock data from Yahoo Finance
│   ├── add_predictions.py       # Predict next-day closing prices
│   ├── add_sentiment.py         # Calculate sentiment scores from news
│   └── requirements.txt         # Python dependencies
│
├── dbt/
│   ├── models/
│   │   ├── staging/             # Raw data cleaning and standardization
│   │   ├── intermediate/        # Calculations (returns, metrics)
│   │   └── marts/               # Final tables for Power BI
│   ├── seeds/                   # CSV files for dbt seed
│   └── dbt_project.yml
│
├── powerbi/
│   ├── Stock_Analysis_Dashboard.pbix
│   └── screenshots/             # Dashboard screenshots
│
├── README.md
└── .gitignore



---

## 📊 Dashboard Pages

| Page | Content |
|---|---|
| **1. Overview** | KPIs, Stock Price Trend, Daily Return Trend, Slicers |
| **2. Return & Risk** | Scatter Plot (Risk vs. Return), Donut Chart, Best/Worst Performers |
| **3. Sentiment & Prediction** | Sentiment Bar Chart, Actual vs. Predicted Price |
| **4. Details** | Full Data Table |

---
## 🚀 How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/Data-Analyst-Journey/Stock_Market_Analysis.git
cd Stock_Market_Analysis
```

2. Install Python Dependencies

```bash
pip install -r python/requirements.txt
```

3. Download Data

```bash
cd python
python download_data.py
```

4. Load Data to PostgreSQL

```bash
cd dbt
dbt seed
dbt run
```

5. Open Power BI Dashboard

Open powerbi/Stock_Analysis_Dashboard.pbix and update the data source connection.

---
📈 Key Results

Metric Value
Best Performing Stock [e.g., NVDA]
Worst Performing Stock [e.g., TSLA]
Average Annual Return -41%
Average Volatility [e.g., 25%]
Prediction Accuracy [e.g., MAE: 2.5]

---

🤖 Machine Learning

· Model: Random Forest Regressor
· Features: Lag features (close_lag1, close_lag7)
· Target: Next-day closing price
· Evaluation: Mean Absolute Error (MAE)

---

📊 Sentiment Analysis

· Tool: VADER (Valence Aware Dictionary and sEntiment Reasoner)
· Data Source: Yahoo Finance and Google News RSS
· Output: Average sentiment score per stock (-1 to +1)

---

📷 Dashboard Screenshots

powerbi/screenshots/01_overview.png
powerbi/screenshots/02_return_risk.png
powerbi/screenshots/03_sentiment_prediction.png
powerbi/screenshots/04_details.png

---

👩‍💻 Author

Samaneh Kavianfar
Data Analyst | Python | SQL | dbt | Power BI
LinkedIn | GitHub

---

📄 License

This project is open-source and available under the MIT License.



---
