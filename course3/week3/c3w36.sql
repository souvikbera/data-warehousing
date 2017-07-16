select seconditemid,sum(extcost),
ratio_to_report (sum(extcost)) over() as resratio
from inventory_fact f,item_master_dim i
where f.itemmasterkey=i.itemmasterkey and transtypekey=1
group by seconditemid
order by sum(extcost)

