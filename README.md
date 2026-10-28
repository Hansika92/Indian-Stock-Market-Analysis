# Indian Stock Market Analytics

### Historical Returns | Risk Assessment | Performance Comparison

## Project Overview

The Indian Stock Market Analytics project is an end-to-end data analytics project designed to evaluate the historical performance and risk characteristics of selected Indian equities in comparison with the Nifty 50 benchmark index.

The project uses Python for data cleaning, exploratory data analysis, and financial performance calculations; SQL for structured data storage and querying; and Microsoft Power BI for interactive visualization and reporting.

The analysis focuses on six market instruments: Reliance Industries, HDFC Bank, TCS, Infosys, ICICI Bank, and the Nifty 50 index. Historical price data is processed to examine price movements, cumulative returns, annualized volatility, maximum drawdown, risk-adjusted performance, and correlations between instruments.

The goal is to demonstrate an end-to-end analytics workflow, from raw financial data to actionable historical insights presented through an interactive dashboard.

## Objectives

* Collect and organize historical stock market data.
* Clean and preprocess the data for analysis.
* Calculate historical returns and performance metrics.
* Compare individual stocks with the Nifty 50 benchmark.
* Evaluate risk using annualized volatility and maximum drawdown.
* Calculate Sharpe ratios to examine historical risk-adjusted returns.
* Investigate correlations between selected stocks and the benchmark.
* Store and query structured data using MySQL.
* Develop an interactive Power BI dashboard for visual analysis.
* Communicate findings through data-driven visualizations.

## Tools and Technologies

| Technology         | Application                                                          |
| ------------------ | -------------------------------------------------------------------- |
| Python             | Data preprocessing, exploratory analysis, and financial calculations |
| Pandas             | Data manipulation and aggregation                                    |
| NumPy              | Numerical calculations                                               |
| yfinance           | Historical market data retrieval                                     |
| Matplotlib         | Data visualization                                                   |
| Seaborn            | Statistical visualization                                            |
| MySQL              | Structured data storage and SQL querying                             |
| Microsoft Power BI | Interactive dashboard development                                    |
| CSV                | Data exchange between analytical tools                               |

## Stocks and Benchmark

The analysis covers the following instruments:

| Ticker       | Company or Instrument     |
| ------------ | ------------------------- |
| RELIANCE.NS  | Reliance Industries       |
| HDFCBANK.NS  | HDFC Bank                 |
| TCS.NS       | Tata Consultancy Services |
| INFY.NS      | Infosys                   |
| ICICIBANK.NS | ICICI Bank                |
| ^NSEI        | Nifty 50 benchmark index  |

The `.NS` suffix identifies the National Stock Exchange listing used by Yahoo Finance. The Nifty 50 is included as a market benchmark for contextual comparison.

## Project Workflow

### 1. Data Collection

Historical market data was obtained through Yahoo Finance using the yfinance Python library. The dataset includes daily price information and trading volume for the selected stocks and benchmark.

The raw data was exported to CSV format for subsequent preprocessing and analysis.

### 2. Data Cleaning and Preprocessing

The raw dataset was inspected and prepared for analysis. The preprocessing workflow included:

* Standardizing date values.
* Organizing data by ticker and trading date.
* Checking the structure and consistency of price and volume columns.
* Preparing cleaned datasets for Python analysis, SQL storage, and Power BI.
* Exporting processed data into reusable CSV files.

### 3. Exploratory Data Analysis

Exploratory analysis was performed to understand price movements, return patterns, and relationships among the selected instruments.

The analysis included historical price comparisons, return calculations, summary statistics, and correlation analysis.

### 4. Financial Performance Analysis

The following metrics were calculated to compare historical performance and risk.

**Total Return**

Measures the percentage change between the first and last adjusted price observations used in the analysis.

Total Return (%) = ((Ending Adjusted Price / Beginning Adjusted Price) - 1) × 100

**Annualized Volatility**

Measures the annualized standard deviation of daily returns. For daily observations, the standard deviation is annualized using the square root of 252 trading days.

Annualized Volatility (%) = Standard Deviation of Daily Returns × √252 × 100

**Maximum Drawdown**

Measures the largest percentage decline from a running historical peak to a subsequent trough.

Drawdown = (Current Price / Previous Running Peak) - 1

Maximum Drawdown is the minimum drawdown observed over the analysis period.

**Sharpe Ratio**

Measures historical excess return relative to return volatility. The calculations in this project use a risk-free rate of zero.

Sharpe Ratio = Mean Daily Return / Standard Deviation of Daily Returns × √252

The Sharpe ratio is a historical risk-adjusted performance measure and does not guarantee future performance.

**Correlation Analysis**

Pearson correlation coefficients were calculated to examine the direction and strength of linear relationships between daily returns. A positive correlation indicates that two instruments tended to move in the same direction, while a negative correlation indicates a tendency to move in opposite directions.

### 5. SQL Analysis

MySQL was used to store structured market data and perform queries for examining stock information and supporting the analytical workflow.

SQL can be used to retrieve instrument-level records, filter observations by date, aggregate market data, and summarize price and performance information.

### 6. Power BI Dashboard

Microsoft Power BI was used to create an interactive dashboard for exploring the historical market data and calculated metrics.

The report is organized around the following analytical views:

* Market overview and key performance indicators.
* Historical price movements and indexed performance comparison.
* Total return rankings.
* Monthly return analysis.
* Risk and volatility comparison.
* Maximum drawdown and Sharpe ratio analysis.
* Stock-level filtering and comparison.

The dashboard is designed to help users compare instruments and understand the relationship between historical performance and risk.

## Key Results

The following results were obtained from the historical dataset used in this project.

### Historical Total Return

| Instrument          | Starting Price | Latest Price | Total Return |
| ------------------- | -------------: | -----------: | -----------: |
| ICICI Bank          |         809.64 |     1,394.20 |       72.20% |
| Nifty 50            |      18,125.40 |    22,600.00 |       24.69% |
| Reliance Industries |       1,178.40 |     1,190.00 |        0.98% |
| HDFC Bank           |         775.31 |       692.80 |      -10.64% |
| TCS                 |       3,024.07 |     2,530.00 |      -16.34% |
| Infosys             |       1,487.23 |     1,153.80 |      -22.42% |

*Prices are expressed in the units returned by the data source. Total returns are based on the adjusted-price series used in the analysis. The observation window is determined by the available dataset.*

ICICI Bank recorded the highest historical return among the selected stocks, while Infosys recorded the lowest. The Nifty 50 delivered a positive return over the same dataset period, providing a benchmark for comparison.

### Risk and Risk-Adjusted Performance

| Instrument          | Annualized Volatility | Maximum Drawdown | Sharpe Ratio |
| ------------------- | --------------------: | ---------------: | -----------: |
| ICICI Bank          |                19.64% |          -22.33% |        0.663 |
| Nifty 50            |                13.88% |          -16.47% |        0.394 |
| Reliance Industries |                22.34% |          -27.18% |        0.121 |
| HDFC Bank           |                21.08% |          -31.04% |       -0.003 |
| TCS                 |                22.87% |          -53.39% |       -0.045 |
| Infosys             |                26.22% |          -48.17% |       -0.066 |

ICICI Bank had the highest Sharpe ratio among the selected instruments in this analysis. The Nifty 50 had lower annualized volatility than each of the selected individual stocks.

TCS experienced the largest maximum drawdown, while Infosys had the highest annualized volatility. These results illustrate why historical returns should be evaluated alongside volatility and downside risk rather than in isolation.

### Correlation Analysis

| Instrument Pair                | Pearson Correlation |
| ------------------------------ | ------------------: |
| TCS – Infosys                  |               0.736 |
| HDFC Bank – Nifty 50           |               0.702 |
| Reliance Industries – Nifty 50 |               0.690 |
| ICICI Bank – Nifty 50          |               0.683 |
| HDFC Bank – ICICI Bank         |               0.509 |
| ICICI Bank – TCS               |               0.225 |

The strongest correlation among the selected stock pairs was observed between TCS and Infosys, with a correlation coefficient of 0.736. This indicates a relatively strong positive linear relationship between their daily returns during the analyzed period.

ICICI Bank and TCS had the weakest correlation among the selected stock pairs, at 0.225. Correlation describes historical co-movement and does not establish causation or guarantee future diversification benefits.

## Key Insights

1. **Historical returns varied substantially:** ICICI Bank outperformed the other selected individual stocks over the analyzed period, while Infosys recorded a negative return.

2. **Higher returns did not automatically mean lower risk:** ICICI Bank had the highest historical return and a positive Sharpe ratio, but its volatility was higher than that of the Nifty 50.

3. **The benchmark showed comparatively lower volatility:** The Nifty 50 recorded lower annualized volatility and a smaller maximum drawdown than the individual stocks in this sample.

4. **Technology stocks showed stronger co-movement:** TCS and Infosys had the strongest pairwise correlation among the selected stocks.

5. **Downside risk differed across instruments:** TCS recorded the largest maximum drawdown, highlighting the importance of assessing peak-to-trough losses alongside average returns.

These observations apply only to the selected instruments and historical period. They should not be interpreted as investment recommendations or predictions of future performance.


## Limitations

* The analysis covers a selected sample of stocks rather than the entire Indian stock market.
* Results depend on the historical period and observations available in the source dataset.
* Historical performance does not predict future returns.
* Correlation does not establish causation.
* Volatility, maximum drawdown, and Sharpe ratios summarize historical behavior and do not capture every investment risk.
* The Sharpe ratio uses a risk-free rate of zero, which is a simplifying assumption.
* Results may change if the dataset is refreshed or the calculation methodology is modified.

## Future Improvements

Potential extensions include:

* Adding more Nifty 50 constituents and sector-level comparisons.
* Extending the analysis to different market cycles.
* Comparing rolling volatility and rolling returns.
* Evaluating beta and other benchmark-relative risk measures.
* Adding portfolio-level allocation and diversification analysis.
* Automating data retrieval and scheduled updates.
* Improving dashboard interactivity and drill-through analysis.
* Building a reproducible pipeline that refreshes the processed datasets.

## Disclaimer

This project is intended for educational and analytical purposes only. It does not constitute financial advice, a recommendation to buy or sell securities, or a prediction of future market performance. All findings are based on historical data and the calculation methods described above.



