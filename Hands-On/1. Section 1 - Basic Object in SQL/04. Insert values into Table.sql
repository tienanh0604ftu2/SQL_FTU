use sample2;

truncate table customers;

INSERT INTO Customers (customernumber, lastname, firstname, areacode, address, country)
VALUES 
(12345, 'Nguyen', 'Anh', 71000, '123 Street Name', 'Vietnam'),
(100,'Fang Ying','Sham','418999','sdadasfdfd',default),
(200,'Mei Mei','Tan',default,'adssdsadsd','Thailand'),
(300,'Albert','John',default,'dfdsfsdf',default);

select * from customers;