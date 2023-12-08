USE nibin;

SELECT * FROM laptop;

# Count of the laptops
SELECT COUNT(*) AS laptop_count FROM laptop;

# Distinct company names
SELECT DISTINCT Company FROM laptop;

# laptops with touchscreen and Ram > 8GB
SELECT * FROM laptop
WHERE TouchScreen = 1 AND Ram > 8;

# Avg. weight of laptops by company-wise
SELECT Company, AVG(Weight) AS avg_weight 
FROM laptop
GROUP BY Company;

# Laptops by screen resolution in Desc order
SELECT * FROM laptop
ORDER BY Screen DESC;

# Avg. price of laptops with Gpu
SELECT AVG(Price) AS avg_price_with_gpu
FROM laptop 
WHERE Gpu IS NOT NULL;

# Laptop with highest Ram
SELECT * FROM laptop
ORDER BY Ram DESC LIMIT 1;

# Total wieght of laptops for each company with touch screen
SELECT Company, SUM(Weight) AS total_weight 
FROM laptop 
WHERE TouchScreen = 1 
GROUP BY Company;

# Min., Avg., Max. price of each company
SELECT Company, Min(Price) AS min_price, AVG(Price) AS avg_price, MAX(Price) AS max_price
FROM Laptop 
GROUP BY Company;

# Laptops for each type of Operating system
SELECT Os, COUNT(*) AS laptop_count
FROM laptop
GROUP BY Os;

# Laptops with price > Avg. price
SELECT * FROM laptop
WHERE Price > (
			    SELECT AVG(Price) FROM laptop
                );
                
# Laptop with a similar Cpu type as that with the highest Ram
SELECT * FROM laptop
WHERE Cpu = (SELECT Cpu FROM laptop
             ORDER BY Ram DESC LIMIT 1);