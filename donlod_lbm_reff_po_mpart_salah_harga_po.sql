select top 1000 hlbm_no_lbm,dlbm_kode_barang,dlbm_qty_entry,(dlbm_cost/dlbm_qty_entry), part_dbp, part_stock_bisa_jual
--select top 1000 *
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm 
inner join meka..mpart on  hlbm_kode_warehous=part_kode_wh and dlbm_kode_barang=part_kode
where dlbm_no_dokumen='010216000114po'
hlbm_kode_warehous=
dlbm_kode_barang=
select top 10 * from meka..mpart