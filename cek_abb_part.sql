select part_kode_wh,part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart where part_cabang='30' and part_kode_group between 'b00' and 'bzz' and part_stock_bisa_jual > '0'

select top 500 type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual,type_kode_spl_1,type_kode_spl_2 from meka..mtipe where type_kode_group like 'b%' and type_status='1'
--update meka..mtipe set type_status='1' from meka..mtipe where type_kode_group='bel' and type_status='0'