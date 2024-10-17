/* Ngày 28/08
Task 1:
		Tính doanh số của từng mặt hàng trong năm 2021, với phân loại sản phẩm dựa trên doanh thu 
        (‘High Value’ nếu doanh thu > 1.600.000, 'Medium Value’ nếu doanh thu từ 1.500.000 đến 1.600.000, còn lại ‘Low Value’).
*/

USE `awesome chocolates`;

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