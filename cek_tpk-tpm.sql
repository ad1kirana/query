select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen where 
hts_jenis_spb='tp/k'
and hts_tanggal > '2013-01-01'
and hlbm_nomor_dokumen is null