select calyear,seconditemid,sum(extcost),
ratio_to_report (sum(extcost)) over(partition by calyear) as resratio
from inventory_fact f,item_master_dim i,date_dim d
where f.itemmasterkey=i.itemmasterkey and d.datekey=f.datekey and transtypekey=1
group by calyear,seconditemid
order by calyear,sum(extcost)
