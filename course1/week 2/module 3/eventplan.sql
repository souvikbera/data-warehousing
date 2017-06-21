CREATE TABLE EventPlan
  ( planno CHAR(8),
    eventno CHAR(8),
    workdate DATE CONSTRAINT workdateRequired NOT NULL,
    notes VARCHAR2(30) CONSTRAINT notesRequire NOT NULL,
    activity VARCHAR2(30) CONSTRAINT activityRequire NOT NULL,
    empno CHAR(8),
    CONSTRAINT PKEventPlan PRIMARY KEY (planno),
    CONSTRAINT FKeventno FOREIGN KEY (eventno) REFERENCES EventRequest,
    CONSTRAINT FKempno FOREIGN KEY (empno) REFERENCES Employee
    )

select * from eventplan

insert into eventplan(planno,eventno,workdate,notes,activity,empno)values('
P95'	,'E101'	,'26-Oct-2013'	,'Extra security'	,'Setup'	,'E102')
