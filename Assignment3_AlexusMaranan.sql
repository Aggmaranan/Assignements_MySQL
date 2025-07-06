drop database employeemanagement;
create database employeemanagement;
use employeemanagement;

create table Department (
id int primary key, Name varchar(50)
);

create table Employee (
EmpID int primary key, Name varchar(50), Age int, DeptID int,
foreign key (DeptID) references Department(ID)
);

insert into Department (ID, Name) values
(1, 'CS'),
(2, 'EE'),
(3, 'Physics');

insert into Employee (EmpID, Name, Age, DeptID) values
(1, 'Mark', 40, 1),
(2, 'David', 50, 2),
(3, 'John', 45, 1),
(4, 'Richard', 30, NULL);

create view EmployeeDepartment as select E.EmpID, E.Name as EmpName, E.Age, D.Name as DeptName
from Employee E
left join department D on E.DeptID = D.ID;

select * from  EmployeeDepartment;