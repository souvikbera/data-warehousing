select calmonth,addrcatcode1,sum(extcost),sum(quantity)
from inventory_fact f,date_dim d,cust_vendor_dim c
where transtypekey=5 and calyear=2011 and f.custvendorkey=c.custvendorkey and f.datekey=d.datekey
group by calmonth,addrcatcode1
union
select calmonth,null,sum(extcost),sum(quantity)
from inventory_fact f,date_dim d,cust_vendor_dim c
where transtypekey=5 and calyear=2011 and f.custvendorkey=c.custvendorkey and f.datekey=d.datekey
group by calmonth
union 
select null,addrcatcode1,sum(extcost),sum(quantity)
from inventory_fact f,date_dim d,cust_vendor_dim c
where transtypekey=5 and calyear=2011 and f.custvendorkey=c.custvendorkey and f.datekey=d.datekey
group by addrcatcode1
union 
select null,null,sum(extcost),sum(quantity)
from inventory_fact f,date_dim d,cust_vendor_dim c
where transtypekey=5 and calyear=2011 and f.custvendorkey=c.custvendorkey and f.datekey=d.datekey


