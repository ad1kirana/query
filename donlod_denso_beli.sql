SeLECT dlbm_product,dlbm_kode_barang,dlbm_qty, dlbm_cost,hlbm_tanggal FROM MEKA..TWRSh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm 
where hlbm_cabang='01' and hlbm_tanggal between '2014-01-04' and '2014-10-31' and hlbm_jenis_lbm='beli'
and (hlbm_kode_supplier='002' or hlbm_kode_supplier='003' or hlbm_kode_supplier='013')