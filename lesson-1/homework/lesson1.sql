Lesson 1: Introduction to SQL Server and SSMS
Easy
Define the following terms: data, database, relational database, and table: Data refers to raw facts, figures, or information it can be seen as numbers, texts, images, or fayles 

List five key features of SQL Server: High Availability of working with databes, being availability data integration and ETL tools, advanced analytics with datas, can be easy connected with any files such as text files or excel,Reliable backup and restore options to prevent data loss and ensure quick recovery when needed.

What are the different authentication modes available when connecting to SQL Server? (Give at least 2):
Windows Authentication( Uses the Windows user  to connect ), SQL Server Authentication( Uses a username and password set up within SQL Server)

Medium
create database SchoolDB
go
create table Students ( StudentID int, Name varchar(50), age int )
select * from Students

Hard
SQL Server-A Relational Database Management System by Microsoft
SSMS (SQL Server Management Studio)-A graphical user interface tool provided by Microsoft
SQL (Structured Query Language)-A programming language used to communicate with relational databases

create database SchoolDB
go
create table Students ( StudentID int, Name varchar(50), age int )
select * from Students
insert into Students ( StudentID, Name , age ) values ( 1, 'John', 35 )
go
select * from Students
