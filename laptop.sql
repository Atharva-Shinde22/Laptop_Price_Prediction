USE nibin;

SELECT * FROM laptop;

# Count of total laptops
SELECT COUNT(*) AS laptop_count FROM laptop;

# distinct company names
SELECT DISTINCT Company FROM laptop;


# laptops with thouch screen and Ram > 8 GB
SELECT * FROM laptop 
WHERE TouchScreen = 1 AND Ram > 8;


# Avg. weights of laptop company wise
SELECT Company, AVG(Weight) AS avg_weight
FROM laptop
GROUP BY Company;


# Laptops screen with Ppi(Pixels/inch) wise in desc order
SELECT * FROM laptop
ORDER BY Ppi DESC;


# Avg. price of laptop with a Gpu
SELECT AVG(Price) AS avg_price 
FROM laptop 
WHERE Gpu IS NOT NULL;


# laptops with the highest prices
SELECT * FROM laptop
ORDER BY Price DESC;


# laptop with highest Ram
SELECT * FROM laptop
ORDER BY Ram DESC
LIMIT 1;


# Total wieght of laptop company wise with touchscreen
SELECT Company, SUM(Weight) AS total_weight FROM laptop
WHERE TouchScreen = 1 
GROUP BY Company;


# Min. , Avg. , Max. price company wise
SELECT Company, MIN(Price) AS min_price, 
                AVG(Price) AS avg_price, 
                MAX(Price) AS max_price
FROM laptop
GROUP BY Company;


# Count of Laptops operating system wise
SELECT Os, COUNT(*) AS laptop_count
FROM laptop 
GROUP BY Os;


# laptops with price > Avg. price
SELECT * FROM laptop
WHERE Price > ( SELECT AVG(Price) AS avg_price
			    FROM laptop );
                
                
# Laptops with similar Cpu type as the laptops with the highest ram
SELECT * FROM laptop
WHERE Cpu = ( SELECT Cpu 
              FROM laptop
              ORDER BY Ram
              DESC LIMIT 1 );
              
              
# Avg. price of laptops with SSD
SELECT AVG(Price) AS avg_price_with_ssd
FROM laptop
WHERE SSD IS NOT NULL;


# Total Ips and Avg. ppi company wise
SELECT Company, COUNT(Ips) AS total_ips, 
                AVG(Ppi) AS avg_ppi
FROM laptop
GROUP BY Company;


# Avg. price of laptop with touchscreen by Gpu wise
SELECT Gpu, AVG(Price) AS avg_price
FROM laptop
WHERE Gpu IS NOT NULL
GROUP BY Gpu;


# Highest Avg. ram compny wise
SELECT Company, AVG(Ram) AS avg_ram
FROM laptop
GROUP BY Company
ORDER BY avg_ram DESC
LIMIT 1;


# Laptop with SSD and HDD company wise
SELECT Company, COUNT(*) AS num_laptop
FROM laptop
WHERE SSD IS NOT NULL AND HDD IS NOT NULL
GROUP BY Company;


      


					  
                      