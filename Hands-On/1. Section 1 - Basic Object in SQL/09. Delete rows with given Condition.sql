/*
- delete record from a table
- if not put "Where", delete all records

*/

use sample2;

delete
from customers
where country = "Vietnam" or country = "Thailand";

select * from customers;