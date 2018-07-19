select sum(dlbm_qty_entry) from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
where hlbm_tanggal between '2014-01-01' and '2014-01-31' 
and dlbm_product='om6'
and hlbm_jenis_lbm='beli'
and dlbm_qty_dibayar<>'0'
