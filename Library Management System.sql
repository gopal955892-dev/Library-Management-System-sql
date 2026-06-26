create database Libary_managemen_system;
use Libary_managemen_system;
create table Student(
Student_id int primary key,
Student_name varchar(50),
Course varchar(50),
city varchar(50)
);

create table Books(
Books_id int primary key,
Book_name varchar(50),
Author varchar(50),
Price int
);

create table Issue_book(
Issue_id int primary key,
Student_id int,
Books_id int,
 Issue_date date,
 return_date date,
  foreign key(Student_id)references Student(Student_id),
   foreign key(Books_id)references Books(Books_id)
  );
  
  insert into Student
  (Student_id,Student_name,Course,city)
  value
  (1,'Rahul','BCA','Ahamdabd'),
  (2,'Aman','BBA','Surat'),
  (3,'Neha','BCA','Rajkot'),
  (4,'Priya','MCA','Vadodara'),
  (5,'Karan','BCA','Ahamdabd');
  
  
  insert into Books
  (Books_id,Book_name,Author,Price)
  value
  (101,'C programming','Dennis',500),
  (102,'Python Basics','Guido',700),
  (103,'DBMS','Navathe',650),
  (104,'java','james',800),
  (105,'Data structure','Mark',900);
  
  insert into Issue_book
  (Issue_id,Student_id,Books_id,Issue_date,return_date)
  value
  (1,1,101,curdate()-10,curdate()-2),
  (2,2,103,curdate()-8,curdate()-1),
  (3,1,104,curdate()-6,null),
  (4,3,102,curdate()-4,null),
  (5,5,105,curdate()-2,null);
  
  show databases;
  use Libary_managemen_system;
  
  show tables;
  
  SELECT*FROM Issue_book;
  
  select*from Books
  where Price > 700;
  
  show databases;
  use libary_managemen_system;
  show tables;
  select*from Student;
  
-- ahamdabad students

  select*from Student
  where city='Ahamdabd';
  
  -- show student names with issued book name
  select*
  from Student
  inner join Issue_book
  on Student.Student_id=Issue_book.Student_id;
  
  -- show books that are not returned yet
  select*
  from Issue_book
  where return_date is null;
  
  -- show how many books each studen issued
  select Student_id,count(*)
  from Issue_book
  group by Student_id;

select*from Student;
