-- Task 3: Tỷ trọng các đơn hàng có doanh số lớn hơn doanh số trung bình

with temp as (
select
	case
		when Amount - avg(Amount) over () > 0 then 1
        else 0
	end as phan_loai
from sales
where year(SaleDate) = 2021 and Amount > 0
)

select
	sum(phan_loai) / count(*) * 100 as Phan_tram
from temp;