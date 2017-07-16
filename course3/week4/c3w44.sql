select calquarter,zip,name,sum(sumcost),sum(sumqty) 
from
(
select calquarter,zip,name,sumcost,sumqty
from SalesByVendorDateKeyMV2011 s1,cust_vendor_dim c,date_dim d
where s1.custvendorkey=c.custvendorkey and s1.datekey=d.datekey
union
select calquarter,zip,name,sumcost,sumqty
from SalesByVendorDateKeyMV2012 s2,cust_vendor_dim c,date_dim d
where s2.custvendorkey=c.custvendorkey and s2.datekey=d.datekey
)
group by cube(calquarter,zip,name)


