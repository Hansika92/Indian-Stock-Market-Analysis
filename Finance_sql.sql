CREATE DATABASE stock_market_analysis;
USE stock_market_analysis;
CREATE TABLE stock_prices (
    Date DATE,
    Ticker VARCHAR(20),
    Company VARCHAR(100),
    Open DECIMAL(15,4),
    High DECIMAL(15,4),
    Low DECIMAL(15,4),
    Close DECIMAL(15,4),
    Volume BIGINT,
    PRIMARY KEY (Date, Ticker)
);
USE stock_market_analysis;

SELECT * 
FROM stock_prices
LIMIT 10;
