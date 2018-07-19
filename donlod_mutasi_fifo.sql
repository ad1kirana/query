select * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock = dts_nomor_t_stock
where hts_cabang='35' and hts_jenis_spb <> 'tp/k' 
and month(hts_tanggal)=6

select * 
--select sum(dlbm_qty_entry)
--select sum(dlbm_cost)
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm 
where hlbm_cabang='35' and hlbm_jenis_lbm ='beli' and month(hlbm_tanggal)=9

select mc_tanggal,mc_kode_barang,mc_qty,mc_harga_pokok_unit,(mc_qty*mc_harga_pokok_unit)as amount,mc_kode_product,mc_warehouse, mc_kode_transaksi
--select sum(mc_qty)
--select sum(mc_qty*mc_harga_pokok_unit)
from meka..hffmov where mc_cabang='35' and mc_sifat_trn='-'
and mc_tanggal between '2015-06-01' and '2015-09-30'
and mc_kode_transaksi<>'sls'

select mc_tanggal,mc_kode_barang,mc_qty,mc_harga_pokok_unit,(mc_qty*mc_harga_pokok_unit)as amount,mc_kode_product,mc_warehouse, mc_kode_transaksi
--select sum(mc_qty)
--select sum(mc_qty*mc_harga_pokok_unit)
from meka..hffmov where mc_cabang='35' and mc_sifat_trn='+'
and mc_tanggal between '2015-06-01' and '2015-09-30'
and mc_kode_transaksi='bn/m'