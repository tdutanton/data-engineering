-- Overview
-- Total sales, Total profit, Profit ratio, Avg Discount per year
select
	extract('year' from order_date) as sale_year,	
	round(sum(sales), 2) as Sales,
	round(sum(profit), 2) as Profit,
	round((sum(profit) / sum(sales)) * 100, 2) as Profit_Ratio_percent,
	round(avg(discount), 3) as avg_discount
from orders o 
group by sale_year
order by sale_year asc

-- Profit per order 
select
	extract('year' from order_date) as sale_year,
	segment,
	round(sum(profit) / count(distinct order_id), 2) as profit_per_order
from orders o 
group by segment, sale_year
order by segment, sale_year asc

-- Sales per Customer
select
	extract('year' from order_date) as sale_year,
	region,
	round(sum(sales) / count(customer_id), 2) as sales_per_customer
from orders o 
group by sale_year, region
order by region, sale_year

-- Monthly Sales by Segment
-- w/o years
select 
	extract('month' from order_date) as sale_month,
	segment,
	round(sum(sales), 0) as sales 
from orders o 
group by sale_month, segment
order by sale_month, segment asc

-- with years
select
	to_char(order_date, 'MM-YYYY') as sale_date,
	segment,
	round(sum(sales), 0) as sales 
from orders o
group by sale_date, segment
order by segment asc, sale_date asc

-- Monthly Sales by Product Category
select 
	to_char(order_date, 'MM-YYYY') as sale_date,
	category,
	round(sum(sales), 0) as sales
from orders o 
group by sale_date, category 
order by category asc, sale_date asc

-- Sales by Product Category over time
select
	extract(year from order_date) as sale_year, 
	category,
	round(sum(sales), 0) as sales 
from orders o 
group by sale_year, category 
order by sale_year

-- Sales and Profit by Customer, Customer Ranking
-- TOP-20 customers
select
	customer_name,
	round(sum(sales), 0) as sales,
	round(sum(profit), 0) as profit,
	count(distinct order_id) as orders_count
from orders o 
group by customer_name
order by sales desc limit 20

-- Sales per region
select
	region,
	round(sum(sales), 0) as sales 
from orders o 
group by region
order by sales desc