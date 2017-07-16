select zip,calyear,calmonth,sum(extcost),
sum(sum(extcost)) over(order by zip,calyear,calmonth rows unbounded preceding) as cumulacost
from inventory_fact f,cust_vendor_dim c,date_dim d
where f.custvendorkey=c.custvendorkey and f.datekey=d.datekey and transtypekey=5
group by zip,calyear,calmonth
order by zip,calyear,calmonth;



