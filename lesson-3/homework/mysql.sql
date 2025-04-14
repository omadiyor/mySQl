BULK INSERT is a command in SQL Server used to quickly import large volumes of data from a data file (like .csv or .txt) into a database table or view. It reads the data directly from a file and inserts it into a SQL Server table with high performance and minimal overhead.
create table school (id int, name varchar(50))
bulk insert school
from 'C:\Users\Victus\OneDrive\Desktop\school.txt'
with (
FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
select*from school

1. CSV (Comma-Separated Values)
2. TXT (Text Files)
3. XML (eXtensible Markup Language)
4. JSON (JavaScript Object Notation)

NULL means no value, unknown, or missing data.
NOT NULL means the column must have a value — it cannot be left blank or missing.

he IDENTITY property in SQL Server is used to automatically generate numeric values for a column, typically used as a primary key.
It helps in auto-incrementing values without having to manually specify them during INSERT operations.

PRIMARY KEY is used to uniquely identify each row in a table. It doesn't allow NULLs and there can only be one per table.
UNIQUE KEY also enforces uniqueness, but it allows NULLs (usually one NULL), and you can have multiple UNIQUE constraints in a table.


 FOREIGN KEY in SQL Server is a constraint used to enforce a link between two tables. It ensures that the values in one column (or set of columns) must match values in another table’s PRIMARY KEY or UNIQUE column.

create table school (id int, name varchar(50))
bulk insert school
from 'C:\Users\Victus\OneDrive\Desktop\school.txt'
with (
FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
select*from school

create table products (ProductId int primary key, ProductName varchar(50), price decimal(10,2))
insert into products values (1, 'pen', 124500), (2, 'pencil', 154843), (3, 'notebook', 100255)
select*from products

ALTER TABLE Products
ADD CONSTRAINT UQ_productName  UNIQUE (name )

create table Category ( CatID int primary key, CatName varchar (50) unique)
insert into Category values (1, 'mechanical')
insert into Category values (2, 'electronical')
insert into Category values (3, 'manual')
select*from Category

alter table products 
add constraint Fk_constraint_name foreign key (CategoryID) references Category(CatID)
 
 select*from products
 select*from Category

 alter table products 
 add constraint CHK_price check (price>0)

 alter table products
 add Stock int not null default(0)


 create table customers ( CustID int primary key, CustName varchar(50), age int, check (age>18))
 drop table Customers

 create table transactions (trID int identity(100,10), trDate datetime)
 insert into transactions values ( 2025)
 select*from transactions

 create table OrderDetailes (orderID int, productID int , quantity int, price decimal(10,2), primary key (orderID, productiD))

 create table Employees ( EmpID int primary key, name varchar(50) unique )

