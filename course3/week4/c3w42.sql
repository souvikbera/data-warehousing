create materialized view SalesByVendorDateKeyMV2012
build immediate
refresh complete on demand
enable query rewrite as
select custvendorkey,d.datekey,sum(extcost) as sumcost,sum(quantity) as sumqty,count(*) as sumtrans
from inventory_fact f,date_dim d
where f.datekey=d.datekey and transtypekey=5 and calyear=2012
group by custvendorkey,d.datekey
