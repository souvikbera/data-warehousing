select name,count(*)as sumtrans,
rank() over (order by count(*)desc) as countrank,
dense_rank() over (order by count(*)desc) as countdenserank
from inventory_fact f,cust_vendor_dim c
where f.custvendorkey=c.custvendorkey and transtypekey=5
group by name
order by count(*) desc
