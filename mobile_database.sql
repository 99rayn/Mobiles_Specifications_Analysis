-- What are the most and least expensive mobile phones in each country? --
SELECT 
    "Company_Name", 
    "Model_Name", 
    "Launched_Price_Pakistan", 
    "Launched_Price_India", 
    "Launched_Price_China", 
    "Launched_Price_USA", 
    "Launched_Price_Dubai"
FROM mobiles_data
ORDER BY "Launched_Price_Pakistan" DESC LIMIT 1;

-- How Do Prices Vary Across Different Countries for the Same Model? --

SELECT 
    "Model_Name", 
    "Launched_Price_Pakistan", 
    "Launched_Price_India", 
    "Launched_Price_China", 
    "Launched_Price_USA", 
    "Launched_Price_Dubai"
FROM mobiles_data
ORDER BY "Model Name";

-- Average Battery Capacity for Phones Launched in Different Years --

SELECT 
"Launched_Year", 
AVG("Battery_Capacity") AS avg_battery_capacity
FROM mobiles_data
GROUP BY "Launched_Year"
ORDER BY "Launched_Year";

-- Trend in RAM Size Over the Years --

SELECT 
"Launched_Year", 
AVG("RAM") AS avg_ram
FROM mobiles_data
GROUP BY "Launched_Year"
ORDER BY "Launched_Year";

-- Which Brand Has the Most Expensive Flagship Phone? --

SELECT "Company_Name", "Model_Name", MAX("Launched_Price_USA") AS highest_price
FROM mobiles_data
GROUP BY "Company_Name", "Model_Name"
ORDER BY highest_price DESC LIMIT 1;


-- What is the Most Common Screen Size Among Brands? --

SELECT "Company_Name", "Screen_Size", COUNT(*) AS count
FROM mobiles_data
GROUP BY "Company_Name", "Screen_Size"
ORDER BY count DESC LIMIT 5;

-- Is There a Correlation Between Battery Capacity and Price? --

SELECT CORR("Battery_Capacity", "Launched_Price_USA") AS correlation
FROM mobiles_data;

-- Do Higher RAM and Better Processors Correlate with Higher Prices? --
 
SELECT CORR("RAM", "Launched_Price_USA") AS ram_correlation
FROM mobiles_data;
