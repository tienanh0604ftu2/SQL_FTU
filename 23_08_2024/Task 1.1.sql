-- Task 1: Hãy cho biết doanh số tháng nào cao nhất trong năm 2021
USE `awesome chocolates`;

select
	month(SaleDate) as Thang,
    sum(Amount) as Doanh_thu
from sales
where year(SaleDate) = 2021 and amount > 0
group by Thang
order by Doanh_thu desc
limit 1;

