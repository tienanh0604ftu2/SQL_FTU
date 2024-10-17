-- Ngày 27/08
-- Task: hãy cho biết tỷ lệ tăng trưởng về doanh số từng tháng trong năm 2021
USE `awesome chocolates`;

with temp as (
	select
		month(SaleDate) as Thang,
        sum(Amount) as Doanh_thu,
        lag(sum(Amount)) over(order by month(SaleDate)) as doanh_thu_truoc
    from sales
    where year(SaleDate) = 2021 and Amount > 0
    group by Thang
)


select
	Thang,
    (Doanh_thu - doanh_thu_truoc) / doanh_thu_truoc * 100 as Percentage
from temp;