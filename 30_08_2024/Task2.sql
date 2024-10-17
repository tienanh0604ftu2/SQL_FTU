-- Task 2: Tỷ trọng đóng góp của từng nhân viên trong năm 2021 so với mặt bằng chung trung bình
USE `awesome chocolates`;

with temp as (
select 
	p.Salesperson as Nhan_vien,
    case
		when sum(s.Amount) - avg(sum(s.Amount)) over () > 0 then sum(s.Amount) - avg(sum(s.Amount)) over ()
		else 0
	end as hon_trung_binh
from sales s
join people p
on s.SPID = p.SPID
where year(s.SaleDate) = 2021 and s.Amount > 0
group by Nhan_vien
)

select
	Nhan_vien,
    hon_trung_binh / sum(hon_trung_binh) over () * 100 as Ty_trong
from temp
where hon_trung_binh > 0
order by Ty_trong desc;
