-- search multiple items

use SaleOrder;

select * from customer
where CustomerFirstName in ("John","Sophia","Noah");
