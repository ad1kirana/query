select top 10 * from meka..ttsh where hts_no_tran_stock between '010115000026bk' and '010115000030bk' and hts_jenis_spb like 'ibk%'
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal > '2014-03-31'
and hlbm_nomor_dokumen ='010115000030bk'
order by hts_tanggal asc

select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_no_lbm='010315000289BM'

select top 10 * from meka..ttsh where hts_no_tran_stock ='010115000018bk'
--update meka..ttsh set hts_flag_tp='Y' from meka..ttsh where hts_no_tran_stock ='010115000018bk'

 and hts_jenis_spb like 'ibk%'
