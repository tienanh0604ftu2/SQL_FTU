-- save table to another table - temporary table

-- into file_name: save result in another table (BASE TABLE)

USE SaleOrder;

DROP TEMPORARY TABLE IF EXISTS Temp_Table;


-- Tạo bảng tạm (temporary table)
CREATE TEMPORARY TABLE Temp_Table (
    CustomerFirstName VARCHAR(50)
);

-- Chèn dữ liệu vào bảng tạm
INSERT INTO Temp_Table (CustomerFirstName)
SELECT DISTINCT CustomerFirstName 
FROM customer
ORDER BY CustomerFirstName;

-- Xem dữ liệu trong bảng tạm
SELECT * FROM Temp_Table;
