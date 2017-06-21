
CREATE TABLE facility
(	facno CHAR(8),
	facname VARCHAR2(20)  CONSTRAINT facnameRequired NOT NULL,
CONSTRAINT PKfacility PRIMARY KEY (facno))

select * from facility

insert into facility(facno,facname)
values('F103','Recreation Room');