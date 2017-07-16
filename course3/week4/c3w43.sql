select calmonth,addrcatcode1,sum(sumcost),sum(sumqty)
from SalesByVendorDateKeyMV2011 sv,cust_vendor_dim c,date_dim d
where sv.custvendorkey=c.custvendorkey and sv.datekey=d.datekey
group by cube(calmonth,addrcatcode1)


