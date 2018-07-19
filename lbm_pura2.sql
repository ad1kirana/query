select top 100 HLBM_no_LBM,HLBM_nomor_dokumen,dlbm_nomor_LBM,dlbm_no_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_description from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where 
--month(hlbm_tanggal)=5 and 
--year(hlbm_tanggal)=2015 --and hlbm_kode_supplier='001' and 
hlbm_kode_warehous='01' and dlbm_description <> ''
and hlbm_jenis_LBM='beli'
and hlbm_no_lbm='010116002360BM'