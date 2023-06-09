create database payroll_service;
show databases;
use payroll_service;

create table employee_payroll (id int not null auto_increment primary key,
                                      name varchar(20) not null,
       								  salary double not null,
       								  start_date date not null);

insert into employee_payroll values(1 ,"Pratham" ,60000, '2023-02-21');
       insert into employee_payroll values(2 ,"Anuroop" ,56000, '2022-12-01');
       insert into employee_payroll values(4, "Santosh" ,50000, '2020-06-20');
       insert into employee_payroll values(3,"Bhagi" ,70000, '2021-10-15');

select * from employee_payroll;
select salary from employee_payroll where name = "Bhagi";

select * from employee_payroll where start_date between cast('2021-09-09' AS Date) and Date(now());

alter table employee_payroll 
add gender varchar(10) not null;

update employee_payroll set gender = 'M' where name ='Pratham' or name ='Anuroop' or name = 'Santosh';
update employee_payroll set gender = 'F' where name = 'Bhagi';
select * from employee_payroll;

insert into employee_payroll values (5, "sushma",80000,'2022-08-22','F');
insert into employee_payroll values (6,"kumari", 67000, '2022-01-20','F');
select SUM(salary) from employee_payroll where gender = 'M' group by gender;

select Avg(salary) from employee_payroll where gender = 'F' group by gender;

select min(Salary) from employee_payroll where gender = 'M' group by gender;

select max(Salary) from employee_payroll where gender = 'M' group by gender;
select count(Salary) from employee_payroll where gender = 'M' group by gender;