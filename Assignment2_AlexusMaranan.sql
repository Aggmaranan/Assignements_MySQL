drop database EmployeeTable;
create database EmployeeTable;
use EmployeeTable;


create table Department (
ID int primary key, Name varchar(50)
);

create table Employee (
EmpID int primary key, Name varchar(50), Age int, DeptID int, foreign key (DeptID) 
references Department(ID) 
);

insert into Department (ID, Name) values
(1, 'CS'), (2, 'EE'), (3, 'Physics');

insert into Employee (EmpID, Name, Age, DeptID) values
(1, 'Mark', 40, 1), (2, 'David', 50, 2), (3, 'John', 45, 1), (4, 'Richard', 30, NULL);

select EmpID, E.Name, Age, D.Name as DeptName from Employee E
left join Department D on E.DeptID = D.ID
union
select EmpID, E.Name, Age, D.Name as DeptName from Employee E
right join Department D on E.DeptID = D.ID;

