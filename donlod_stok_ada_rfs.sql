select description,type_kode_group,product_nama,part_kode_wh,part_stock_bisa_jual,product_supplier,sup_nama,type_kode,type_nama,type_harga_beli,type_harga_jual,type_status,part_stock_bisa_jual,type_kode_spl_1
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where part_stock_bisa_jual <>'0'
and part_company <>'20'
part_kode like 'kia%'
and part_kode_wh like '5%'
and type_kode_group like 'KJR'
and part_stock_bisa_jual <>'0'

