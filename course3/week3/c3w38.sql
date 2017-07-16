select bpname,companykey,carryingcost,
rank()over(order by carryingcost) as pos,
percent_rank()over(order by carryingcost) as percrank,
cume_dist()over(order by carryingcost) as cumucost
from branch_plant_dim

