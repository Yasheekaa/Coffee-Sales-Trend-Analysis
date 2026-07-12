-- =====================================================
-- Coffee Sales Trend Analysis | Database Setup & Schema
-- Author: Yashika Singh (GitHub: @Yasheekaa)
-- =====================================================

-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS coffee_shop_sales;
USE coffee_shop_sales;

-- Step 2: Create Table Schema
DROP TABLE IF EXISTS coffee_data;

CREATE TABLE coffee_data (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    hour_of_day INT NOT NULL,
    cash_type VARCHAR(20) NOT NULL,
    `money(Rs)` DECIMAL(10, 2) NOT NULL,
    coffee_name VARCHAR(100) NOT NULL,
    Time_of_Day VARCHAR(20) NOT NULL,
    Weekday VARCHAR(20) NOT NULL,
    Month_name VARCHAR(20) NOT NULL,
    Weekdaysort INT NOT NULL,
    Monthsort INT NOT NULL,
    `Date` VARCHAR(20) NOT NULL,
    `Time` VARCHAR(20) NOT NULL
);

-- Step 3: Base Verification Queries
-- Verify Record Count
SELECT COUNT(*) AS total_records_imported FROM coffee_data;

-- Preview Sample Transactions
SELECT * FROM coffee_data LIMIT 10;

-- Verify Distinct Categories and Values
SELECT DISTINCT coffee_name FROM coffee_data ORDER BY coffee_name;
SELECT DISTINCT cash_type FROM coffee_data;
SELECT DISTINCT Time_of_Day FROM coffee_data;
