-- Task 2: và quốc gia nào có doanh số cao nhất trong từng tháng trong năm 2021 */
USE `awesome chocolates`;

with temp as (
select
	month(s.SaleDate) as Thang,
    g.Geo as Quoc_gia,
    sum(s.Amount) as Doanh_thu,
    max(sum(s.Amount)) over(partition by month(s.SaleDate)) as Doanh_thu_max
from sales s
join geo g
on s.GeoID = g.GeoID
where year(s.SaleDate) = 2021 and s.Amount > 0
group by Thang, Quoc_gia
)

select
	Thang,
    Quoc_gia
from temp
where Doanh_thu >= Doanh_thu_max;
