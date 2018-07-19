select part_cabang,part_kode_wh,part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,part_harga_jual
from meka..mpart where 
part_kode_group like 'om6'
--and part_stock_bisa_jual<>'0'
--part_stock_total
--and part_cabang ='01'
and part_company='01'
and part_kode_wh='01'

select part_cabang,part_kode_wh,part_kode_group,part_kode,part_nama,part_dbp,part_harga_jual
from meka..mpart where 
part_kode_group like 'om6'
and part_kode_wh='25'

select part_cabang,part_kode_wh,part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart where part_kode_group like 'ph%' and part_stock_bisa_jual <>'0'
and part_cabang <>'20'
order by part_cabang asc