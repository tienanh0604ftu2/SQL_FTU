/* Ngày 28/08
Task 2:
		Tính tỷ trọng của từng mặt hàng dựa vào phân loại trên
*/

USE `awesome chocolates`;

with temp as (
select
	p.Product as san_pham,
    sum(s.Amount) as Doanh_thu,
    case
		when sum(s.Amount) > 1600000 then 'High Value'
        when sum(s.Amount) between 1500000 and 1600000 then 'Medium Value'
        else 'Low Value'
	end as Phan_loai
from sales s
join products p
on s.PID = p.PID
where year(s.SaleDate) = 2021 and amount > 0
group by san_pham
)

select
	Phan_loai,
    count(*) / (sum(count(*)) over ()) * 100 as Ty_trong
from temp
group by Phan_loai;