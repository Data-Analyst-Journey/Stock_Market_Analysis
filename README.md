```markdown
# 📊 Stock Market Analysis Project

## 📌 Project Overview

This project is a complete end-to-end data pipeline for stock market analysis. It is designed to help investors, analysts, and decision‑makers better understand market trends, assess risk, and make data‑driven investment decisions. The pipeline covers everything from raw data ingestion to predictive modeling and an interactive dashboard.

## 💼 Business Value

This project was built to answer real business questions and deliver measurable value:

- **Risk Identification**: By calculating volatility and annualized returns, the dashboard helps investors identify which stocks carry the most risk and which offer the best reward.
- **Predictive Insights**: The Random Forest model predicts next-day closing prices, enabling proactive decision‑making rather than reactive analysis.
- **Sentiment Awareness**: Sentiment analysis on financial news provides a gauge of market perception, helping to anticipate price movements driven by public sentiment.
- **Transparency**: The 4‑page Power BI dashboard consolidates all key metrics in one place, making it easy for stakeholders to monitor performance, compare stocks, and track changes over time.

In short, this project turns raw market data into actionable insights — helping stakeholders save time, reduce risk, and make more informed decisions.

## 🛠️ Tools & Technologies

| Category | Tools |
|---|---|
| **Data Extraction** | Python (yfinance, pandas, numpy) |
| **Data Modeling** | dbt, PostgreSQL |
| **Machine Learning** | Scikit-learn (Random Forest) |
| **Sentiment Analysis** | NLTK (VADER) |
| **Visualization** | Power BI |
| **Version Control** | Git, GitHub |

## 📂 Project Structure

```

Stock_Market_Analysis/
├── python/
│ ├── download_data.py # Download stock data from Yahoo Finance
│ ├── add_predictions.py # Predict next-day closing prices
│ ├── add_sentiment.py # Calculate sentiment scores from news
│ └── requirements.txt # Python dependencies
├── dbt/
│ ├── models/
│ │ ├── staging/ # Raw data cleaning and standardization
│ │ ├── intermediate/ # Calculations (returns, metrics)
│ │ └── marts/ # Final tables for Power BI
│ ├── seeds/ # CSV files for dbt seed
│ └── dbt_project.yml
├── powerbi/
│ ├── Stock_Analysis_Dashboard.pbix
│ └── screenshots/ # Dashboard screenshots
├── README.md
└── .gitignore

```

## 📊 Dashboard Pages

| Page | Content |
|---|---|
| **1. Overview** | KPIs, Stock Price Trend, Daily Return Trend, Slicers |
| **2. Return & Risk** | Scatter Plot (Risk vs. Return), Donut Chart, Best/Worst Performers |
| **3. Sentiment & Prediction** | Sentiment Bar Chart, Actual vs. Predicted Price |
| **4. Details** | Full Data Table |

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

📷 Dashboard Screenshots

powerbi/screenshots/01_overview.png
powerbi/screenshots/02_return_risk.png
powerbi/screenshots/03_sentiment_prediction.png
powerbi/screenshots/04_details.png

👩‍💻 Author

Samaneh Kavianfar
Data Analyst | Python | SQL | dbt | Power BI
LinkedIn | GitHub

📄 License

This project is open-source and available under the MIT License.
