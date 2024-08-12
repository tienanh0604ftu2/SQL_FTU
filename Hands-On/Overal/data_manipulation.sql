use hands_on;

insert into Students (StudentID, Name, Age, Gender)
values
(1, "Anh", 10, "Nam");

update Students
Set Gender = "Nữ"
where StudentID = 1;

delete from Students
where StudentID = 1;