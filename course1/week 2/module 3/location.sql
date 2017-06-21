CREATE TABLE location
  ( locno CHAR(8) NOT NULL,
    facno CHAR(8)NOT NULL,
    locname VARCHAR2(20) CONSTRAINT locnameRequired NOT NULL,
    CONSTRAINT PKlocation PRIMARY KEY (locno),
    CONSTRAINT FKfacno FOREIGN KEY (facno) REFERENCES facility
    )
    
    
    select * from location
    
    insert into location(locno,facno,locname) values
    ('L106','F100','Pedestrian Gate')

