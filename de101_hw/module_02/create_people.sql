/* Create table Persons*/

create table people (
Region varchar,
Person varchar
)

/* Import data into orders from csv-file*/
copy people 
from 'C:\Private\edu\data_learn\data-engineering\de101_hw\module_02\people.csv'
delimiter ';'
csv header

/* Testing*/

select * from people