SELECT COUNT(*) FROM retail_sales

-- Cheking null 
SELECT * FROM retail_sales
WHERE 
	quantiy IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR
	category IS NULL
	OR
	quantiy IS NULL
	OR
	total_sale IS NULL;

-- Data cleaning
DELETE FROM retail_sales
WHERE 
	quantiy IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR
	category IS NULL
	OR
	quantiy IS NULL
	OR
	total_sale IS NULL;

-- Data exploration

-- How many sales we have ?
SELECT COUNT(*) as total_sale FROM retail_sales

-- How many unique customers we have ?
SELECT COUNT(DISTINCT customer_id) as total_sale FROM retail_sales

-- How many categories we have ?
SELECT DISTINCT category as total_sale FROM retail_sales

-- Data Analysis $ Business Key problems $ Answers


-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

SELECT * FROM retail_sales
WHERE sale_date = '2022-11-05'

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022

SELECT * FROM retail_sales
WHERE 
	category = 'Clothing' 
	AND quantiy >= 4 
	AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'




