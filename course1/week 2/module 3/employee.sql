CREATE TABLE Employee
(	empno CHAR(8),
	empname VARCHAR2(30)  CONSTRAINT empnameRequired NOT NULL,
	department VARCHAR2(30) CONSTRAINT departmentRequired NOT NULL,
	email VARCHAR2(30) CONSTRAINT emailRequired NOT NULL,
	phoneno VARCHAR2(10) CONSTRAINT phonenoRequired NOT NULL,
CONSTRAINT PKEmployee PRIMARY KEY (empno))

select * from employee

insert into employee(empno,empname,department,email,phoneno) values
('E103','Alan Adminstrator','Administration','alan@colorado.edu','3-3333');
