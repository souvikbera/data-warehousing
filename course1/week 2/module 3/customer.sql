CREATE TABLE customer
(	custno CHAR(8),
	custname VARCHAR2(30)  CONSTRAINT custnameRequired NOT NULL,
	address VARCHAR2(30) CONSTRAINT addressRequired NOT NULL,
	internal char(1) CONSTRAINT intenalRequired NOT NULL,
  contact VARCHAR2(30) CONSTRAINT contactRequired NOT NULL,
	phone VARCHAR2(10) CONSTRAINT phoneRequired NOT NULL,
  city VARCHAR2(20) CONSTRAINT cityRequired NOT NULL,
  state VARCHAR2(10) CONSTRAINT stateRequired NOT NULL,
  zip VARCHAR2(10) CONSTRAINT zipRequired NOT NULL,
CONSTRAINT PKcustomer PRIMARY KEY (custno))

select * from customer

insert into customer(CustNo, CustName, Address,Internal,Contact,Phone,City,State,Zip) 
values('C105','High School Football','123AnyStreet','N','Coach Bob','4441234','Louisville','CO','80027');
