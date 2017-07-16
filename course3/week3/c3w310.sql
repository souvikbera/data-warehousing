select distinct extcost,
cume_dist() over (order by extcost) as cumecost
from inventory_fact f,cust_vendor_dim c
where f.custvendorkey=c.custvendorkey and state like 'CO'
order by extcost

