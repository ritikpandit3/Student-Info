create database RCollege;
use RCollege;
create table students
(
roll varchar(50) primary key,
password varchar(50),
s_name varchar(50), 
father_name varchar(50),
mother_name varchar(50),
course varchar(50),
phone varchar(50),
email varchar(50),
aadhar varchar(50),
address varchar(50),
dob varchar(50)
);
select*from students;
create table faculty
(
username varchar(50) primary key,
password varchar(50)
);
insert into faculty values('Ritik','ritik');
insert into faculty values('Shwetank','shwetank');
select*from faculty;
create table contact
(
roll varchar(50) primary key,
password varchar(50),
name varchar(50), 
email varchar(50),
phone varchar(50),
subject varchar(50),
message varchar(50)
);