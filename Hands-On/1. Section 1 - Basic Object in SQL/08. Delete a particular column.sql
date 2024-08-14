-- delete a columns

use sample2;

alter table customers
drop column PhoneNumber;

select * from customers;