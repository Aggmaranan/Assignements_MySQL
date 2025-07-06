create database EmployeeManagement;
use EmployeeManagement;

create table Department (
DeptID int primary key, DeptName varchar(100)
);

create table Employee (
EmpID int primary key, EmpName varchar(100),
Age int, CityName varchar(100), DeptID int,
foreign key (DeptID) references Department(DeptID)
);

insert into Department (DeptID, DeptName) values
(1, 'IT'), (2, 'HR'), (3, 'Finance'),
(4, 'Marketing');

insert into Employee (EmpID, EmpName, Age, CityName,
DeptID) values
(1, 'Eugene', 24, 'Pennsylvania', 2),
(2, 'Oliver', 24, 'Towson', 1),
(3, 'Patrick', 24, 'Melbourne', 1),
(4, 'Richard', 24, 'Miami', 1),
(5, 'Henry', 23, 'Miami', 3),
(6, 'Aled', 25, 'Cathedral City', 4);

select EmpName from employee
where EmpName like '%d%';

select DeptName from Department
where DeptName is not null;

select EmpName from employee
where Age <> 40;

