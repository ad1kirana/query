select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_no_lbm='010416000763BM'

select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
--and hlbm_nomor_dokumen is null 
--and dts_product like'ky%'
--and hts_kode_warehous='15'
and hts_tanggal >='2015-01-01'
--and hts_no_tran_stock like '01%'
--and hts_no_tran_stock='010216000217BK'
and hts_no_tran_stock='010216000211BK'
order by hts_tanggal asc

      2016-07-18 00:00:00.000