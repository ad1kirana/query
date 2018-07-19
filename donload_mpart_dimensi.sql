select type_kode_group,rtrim(type_kode),type_nama,type_status,TYPE_BERAT,TYPE_VOLUME,TYPE_KODE_SPL_1,TYPE_KODE_SPL_2
from ((meka..mtipe inner join meka..mprod on type_kode_group=product_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)
inner join meka..mgprod on product_group=kode_group
where type_status='0'
and TYPE_KODE_GROUP like 'sh%'
--and product_supplier='002'