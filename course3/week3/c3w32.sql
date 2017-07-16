select state,name,sum(extcost),
rank() over (partition by state order by sum(extcost) desc) as salesrank
from inventory_fact f,cust_vendor_dim c
where f.custvendorkey=c.custvendorkey and transtypekey=5
group by state,name
order by state





