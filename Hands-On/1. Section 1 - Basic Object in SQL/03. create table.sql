-- create table
/* identity(1,1) nghĩa là giá trị của customerid sẽ tự động tăng lên cho mỗi bản ghi mới 
bắt đầu từ 1 (số đầu tiên là giá trị khởi điểm, số thứ hai là khoảng tăng). */

use sample2;

create table Customers (
customerID int auto_increment primary key,
customernumber int not null unique check (customernumber > 0),
lastname varchar(50) not null,
firstname varchar(50) not null,
areacode int default 71000,
address varchar(50),
country varchar(50) default "Malaysia"
); 

