/* Create table Orders*/

create table orders (
Row_ID int,
Order_ID varchar,
Order_Date date,
Ship_Date date,
Ship_Mode varchar,
Customer_ID varchar,
Customer_Name varchar,
Segment varchar,
Country varchar,
City varchar,
State varchar,
Postal_Code varchar,
Region varchar,
Product_ID varchar,
Category varchar,
Sub_Category varchar,
Product_Name varchar,
Sales decimal,
Quantity int,
Discount decimal,
Profit decimal
)

/* Import data into orders from csv-file*/
copy orders
from 'C:\Private\edu\data_learn\data-engineering\de101_hw\module_02\orders.csv'
delimiter ';'
csv header

/*testing*/
select * from orders limit 5

select sum(sales) from orders

