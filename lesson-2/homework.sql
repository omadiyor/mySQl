create table Employees (EmpID int, name varchar(50), salary decimal(10,2) )
go
insert into Employees values ( 1, 'John' , 12000 )
insert into Employees values ( 2, 'Sara' , 15000 )
insert into Employees values ( 3, 'Jack' , 20000 )
select*from Employees
delete from Employees
where EmpID = 2
truncate table Employees
drop table Employees

alter table Employees 
alter column Name Varchar(100)
alter table Employees 
add Department varchar (50)
alter table Employees 
alter column salary float

create table departments ( empid int primary key, depname varchar(50))
select*from departments

truncate table Employees 

insert into departments values ( 1, 'HR' )
alter table departments
add salary decimal(10,2)
insert into departments values ( 2, 'sales', 4000)
insert into departments values ( 3, 'marketing', 5000)
insert into departments values ( 4, 'accounting', 13000)
UPDATE departments
set depname = 'management'
where salary=5000

delete departments

exec sp_rename 'departments', 'StaffMumber'
select*from StaffMumber
drop table StaffMumber 




create table Products ( [product id] int primary key, [product name] varchar(50), category varchar(50), price decimal(10,3))
select*from Products

alter table Products 
add StockQuantity int default (50)

EXEC sp_rename 'category', 'ProductCategory', 'COLUMN'; 
insert into Products values ( 1,'laptop', 'technological devices', 12500, 50) 
insert into Products values ( 2, 'mobile phone', 'technological devices', 1245, 50)
insert into Products values ( 3, 'paper', 'paper boxes', 4578, 50)
insert into Products values ( 4, 'avto parts', 'avto commodity', 789564, 50)
insert into Products values ( 5, 'bread', 'food products', 458, 50)

select*into Products_backup 
from Products

select*from Products_backup

exec sp_rename 'Products', 'Inventory' 

select*from inventory

alter table inventory
drop constraint chk_Price

alter table inventory 
alter column price float 

alter table Inventory
add ProductCode int identity(100,5)
