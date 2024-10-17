-- view specific row
-- top: show only two first rows

use SaleOrder;

select top 2 * from customer;

-- top 40 percent: also means show the first two
select top 40 percent * from customer;