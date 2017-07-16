select calmonth,addrcatcode1,sum(extcost),sum(quantity)
from inventory_fact f,date_dim d,cust_vendor_dim c
where transtypekey=5 and calyear=2011 and f.custvendorkey=c.custvendorkey and f.datekey=d.datekey
group by cube(calmonth,addrcatcode1);

