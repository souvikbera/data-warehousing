CREATE TABLE resourcetbl
(	resno CHAR(8),
	resname  VARCHAR2(30) CONSTRAINT resnameRequired NOT NULL,
	rate VARCHAR2(10) CONSTRAINT  rateRequired NOT NULL,
CONSTRAINT PKresourcetbl PRIMARY KEY(resno)  )

select * from resourcetbl;

insert into resourcetbl values
('R105','food service','$10.00')