select name,sum(extcost),
rank() over (order by sum(extcost)desc) as salesrank
from inventory_fact f,cust_vendor_dim c
where f.custvendorkey=c.custvendorkey and transtypekey=5
group by name
order by sum(extcost) desc

