select bpname,companykey,carryingcost from(
select bpname,companykey,carryingcost,
cume_dist() over (order by carryingcost) as cumeans
from branch_plant_dim)
where cumeans>0.85
order by carryingcost

