select top 10000 hts_no_tran_stock,hts_tanggal,hts_kode_warehous,hts_jenis_spb,hts_qq,dts_product,dts_kode_barang,dts_qty from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock where hts_jenis_spb='ibk1' and hts_tanggal >='2016-10-01'

select hlbm_nomor_dokumen,hlbm_no_lbm from meka..twrsh where hlbm_jenis_lbm='ibm1' and hlbm_tanggal >='2016-10-01'

select hlbm_no_lbm,hlbm_fwarehouse,hlbm_tanggal_dokumen,hlbm_nomor_dokumen,dlbm_no_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_qty
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm= dlbm_nomor_lbm
where hlbm_jenis_lbm='ibm1' and hlbm_tanggal >='2015-01-01' and dlbm_kode_barang='SHE-HX7-10W-40(1LT)'