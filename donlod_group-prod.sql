select * 
from ((meka..mtipe inner join meka..mprod
on type_kode_group=product_kode) inner join meka..mspl
on product_supplier=sup_kode_supplier)  inner join meka..mgprod
on product_group=kode_group
where type_status <>'2'

select description,product_kode,product_nama
from (meka..mprod inner join meka..mspl
on product_supplier=sup_kode_supplier)  inner join meka..mgprod
on product_group=kode_group
where type_status <>'2'


and part_kode_wh='30'
and type_kode_group like 'ag%'
and product_supplier='010'

select top 10 * from meka..mtipe inner join meka..mprod on type
