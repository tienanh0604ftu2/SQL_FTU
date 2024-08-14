use sample2;

update customers
set PhoneNumber = "12348763"
where customerID = 2;

select customerID, PhoneNumber from customers;
