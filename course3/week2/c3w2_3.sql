select companyname,bpname,sum(extcost),sum(quantity)
from inventory_fact f,company_dim c,branch_plant_dim b
where transtypekey=2 and c.companykey = b.companykey and b.branchplantkey=f.branchplantkey
group by rollup(companyname,bpname);
