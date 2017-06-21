CREATE TABLE EventRequest
  ( eventno CHAR(8),
    dateheld DATE CONSTRAINT dateheldRequired NOT NULL,
    datereq DATE CONSTRAINT datereqRequired NOT NULL,
    facino CHAR(8)CONSTRAINT facinoRequired NOT NULL,
    custno CHAR(8)CONSTRAINT custnoRequired NOT NULL,
    dateauth DATE,
    status VARCHAR2(10) CONSTRAINT statusRequired NOT NULL,
    estcost VARCHAR2(10) CONSTRAINT estcostRequired NOT NULL,
    estaudience VARCHAR2(10) CONSTRAINT estaudienceRequired NOT NULL,
    budno CHAR(8),
    CONSTRAINT PKEventRequest PRIMARY KEY (eventno),
    CONSTRAINT FKfacino FOREIGN KEY (facino) REFERENCES Facility,
    CONSTRAINT FKcustno FOREIGN KEY (custno) REFERENCES Customer
    )
 
select * from eventrequest

insert into eventrequest(eventno,dateheld,datereq,facino,custno,dateauth,status,estcost,estaudience,budno)values
('E107'	,'23-Nov-2013'	,'28-Jul-2013'	,'F100'	,'C105'	,'31-Jul-2013'	,'Denied'	,'$10,000.00'	,'5000','')	