-- Task 1: Xác định sản phẩm có sự thay đổi doanh thu lớn nhất trong các tháng đối với năm 2021

USE `awesome chocolates`;

WITH temp1 AS (
  SELECT 
    month(s.SaleDate) AS Thang,
    p.Product AS San_pham,
    sum(s.Amount) AS total_amount,
    abs(sum(s.Amount) - lag(sum(s.Amount)) OVER (PARTITION BY p.Product ORDER BY month(s.SaleDate))) AS thay_doi
  FROM sales s
  JOIN products p ON s.PID = p.PID
  WHERE year(s.SaleDate) = 2021 AND s.Amount > 0
  GROUP BY Thang, p.Product
),
temp2 AS (
  SELECT 
    Thang,
    San_pham,
    thay_doi,
    MAX(thay_doi) OVER (PARTITION BY Thang) AS thay_doi_lon_nhat
  FROM temp1
)
SELECT 
  Thang,
  San_pham,
  thay_doi
FROM temp2
WHERE thay_doi >= thay_doi_lon_nhat;
