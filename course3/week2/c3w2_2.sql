select name,calquarter,zip,sum(extcost),count(*) as sumtrans
from inventory_fact f,date_dim d,cust_vendor_dim c
where transtypekey=5 and calyear between 2011 and 2012 and f.custvendorkey=c.custvendorkey and f.datekey=d.datekey
group by grouping sets((name,calquarter,zip),(name,calquarter),(name,zip),(calquarter,zip),name,calquarter,zip,())



