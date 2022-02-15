/*create table returns*/

create table returns(
Returned varchar,
Order_ID varchar
)

/* Import data into orders from csv-file*/
copy returns
from 'C:\Private\edu\data_learn\data-engineering\de101_hw\module_02\returns.csv'
delimiter ';'
csv header

/* Testing */

select * from returns limit 5

select count(returned) from returns