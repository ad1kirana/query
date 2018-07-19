select part_kode_wh,part_kode_group,part_kode, part_nama,part_dbp,part_harga_jual, part_stock_bisa_jual,part_stock_dn,part_stock_total
--select top 10 * 
from meka..mpart inner join meka..mtipe on part_kode=type_kode where part_cabang='03'
and type_status <> '2'
and part_stock_total <>'0'
and type_kode_group <>'oth'
