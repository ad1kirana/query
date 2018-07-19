select top 10 * from meka..ttsh where hts_no_tran_stock='010115000644BK'
--update meka..ttsh set hts_qq='01' from meka..ttsh where hts_no_tran_stock='010115000644BK'

select top 1000 * from meka..ttsh where hts_jenis_spb='tp/k' and  hts_tanggal= '2015-09-11'
hts_qq='47'
hts_kode_warehous='46'

and hts_no_tran_stock='303515000038ts'

select * from meka..mwh where wh_cabang='35'
select * from meka..mwh where wh_kode='47'
select * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock where hts_no_tran_stock between '303515000035ts' and '303515000042ts'
select top 10 * from meka..tptsd