select type_kode_group,rtrim(type_kode),type_nama,type_harga_beli,type_harga_jual,type_status,rtrim(type_kode_spl_1)
from ((meka..mtipe inner join meka..mprod on type_kode_group=product_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)
inner join meka..mgprod on product_group=kode_group
where type_status='0'
and TYPE_KODE_GROUP like 'sh%'
and product_supplier='002'

SELECT TOP 100 * FROM MEKA..MPROD WHERE PRODUCT_SUPPLIER='002'