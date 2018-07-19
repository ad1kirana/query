select type_kode_group,type_kode,part_kode_wh,part_stock_bisa_jual,part_stock_total,product_supplier,type_nama,type_harga_beli,type_harga_jual,type_status,type_kode_spl_1
from (meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode  
where type_status ='0'
and type_kode_group = 'oth'
and part_stock_total >'0'
and part_stock_bisa_jual <'100'


--update meka..mpart set part_stock_total='0'
from (meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode  
where type_status ='0'
and type_kode_group = 'oth'
and part_stock_total >'100'