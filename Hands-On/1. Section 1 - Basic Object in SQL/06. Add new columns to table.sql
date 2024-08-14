-- Add new column to table

use sample2;

alter table customers
add PhoneNumber Varchar(20);

select * from customers;