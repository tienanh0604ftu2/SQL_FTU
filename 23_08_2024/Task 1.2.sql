-- Task 1: Hãy cho biết doanh số tháng nào cao nhất trong năm 2021
USE `awesome chocolates`;

with temp as (
select
	month(SaleDate) as Thang,
    sum(Amount) as Doanh_so,
    max(sum(Amount)) over() as Doanh_so_max
from sales
where year(SaleDate) = 2021 and amount > 0
group by Thang
)

select
	Thang,
    Doanh_so
from temp
where Doanh_so >= Doanh_so_max


