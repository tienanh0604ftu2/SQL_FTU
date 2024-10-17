-- sort result (by default is ascending)

use SaleOrder;

-- sort result (by default is ascending)
select customerfirstname, customerlastname from customer
order by customerfirstname desc ;


select customerfirstname, customerlastname from customer
order by 2,1 desc;

-- Order By Based on column no. without typing column name
-- Order by second selected columns first, and order by remain column (2,1)


-- distinct: only show unique value
select 
distinct CustomerFirstName 
from customer
order by CustomerFirstName desc;

