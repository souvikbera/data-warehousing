CREATE TABLE EventPlanLine
  ( planno CHAR(8) CONSTRAINT plannoRequired NOT NULL,
    lineno CHAR(8) CONSTRAINT linenoRequired NOT NULL,
    TimeStart VARCHAR2(30) CONSTRAINT TimeStartRequired NOT NULL,
    TimeEnd VARCHAR2(30) CONSTRAINT TimeEndRequired NOT NULL,
    NumberFId INT,
    LocNo CHAR(8) CONSTRAINT LocNoRequire NOT NULL,
    ResNo CHAR(8) CONSTRAINT ResNo NOT NULL,
    CONSTRAINT FKplanno FOREIGN KEY (planno) REFERENCES EventPlan,
    CONSTRAINT FKLocNo FOREIGN KEY (Locno) REFERENCES Location
    )

Insert into eventplanline(planno,lineno,timestart,timeend,numberfid,locno,resno)values
('P95','5'	,'26-Oct-2013 13:00'	,'26-Oct-2013 17:00',2,'L101'	,'R104')
