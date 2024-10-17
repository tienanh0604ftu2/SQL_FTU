-- like (search something)

-- (underscore sign) _ is only specific for one character only
-- (percent sign) % represents zero, one, or multiple characters
use SaleOrder;
select * from customer
where CustomerFirstName like "_o%"
order by CustomerLastName;
