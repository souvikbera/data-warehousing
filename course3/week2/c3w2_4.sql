select transdescription,companyname,bpname,sum(extcost),count(*) as sumtrans
from inventory_fact f,trans_type_dim t,company_dim c,branch_plant_dim b
where c.companykey = b.companykey and b.branchplantkey=f.branchplantkey and t.transtypekey=f.transtypekey
group by grouping sets((transdescription,companyname,bpname),transdescription,companyname,bpname,())


