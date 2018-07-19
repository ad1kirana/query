--tp/k_blm_tp/m
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen
from meka..ttsh left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen where 
hts_jenis_spb='tp/k'
and hts_tanggal > '2013-01-01'
and hts_no_tran_stock='010214000068ts'
and hlbm_nomor_dokumen is null
and hts_no_tran_stock<>'010213000523TS'
order by hts_tanggal desc


select top 100 * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_flag_spb<>'y'
and hts_tanggal > '2013-01-01'

hts_no_tran_stock='010114000116bk'
hts_flag_posting <> 'y'
and hts_jenis_spb <> 'tp/k'

dts_kode_barang='GSF-GTZ-5S'     
and hts_cabang='04'

select top 100 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where dts_kode_barang='GSF-GTZ-5S'     
and hts_cabang='04'


hts_jenis_spb='ad/k'
and 

select top 10 * from meka..ttsh where hts_no_tran_stock='010213000523TS'
select top 10 * from meka..ttsd where dts_nomor_t_stock='303013001590TS'

select top 10 * from meka..ttsh where hts_flag_spb <>'y'
and hts_tanggal > '2013-01-01'
select top 10 * from meka..twrsh where hlbm_no_lbm='010213002117BM'
select top 10 * from meka..twrsh where hlbm_no_lbm='010213002119BM'
select top 10 * from meka..twrsh where hlbm_no_lbm='010213002130BM'

hlbm_jenis_lbm='tp/m'
and hts_no_tran_stock='010113001134ts'

--non_sales_blm_spb
select top 100 * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_flag_spb <>'y'
and hts_tanggal > '2013-01-01'
order by hts_cabang asc

select top 100000 * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_flag_spb <>'y'
and hts_flag_posting <>'y'
and hts_tanggal > '2013-01-01'
order by hts_tanggal desc
and hts_jenis_spb <> 'IBK%'



where hts_jenis_spb='cl/c'
and hts_no_tran_stock like '%1631ts'
hts_no_tran_stock='303013001609TS'

select top 10 * from meka..tslsh where hs_flag_spb <>'y'
and hs_tanggal > '2013-01-01'
and hs_cabang ='02'

select top 100 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where dts_kode_barang='EMO-2221' 
and dts_qty='12'
hts_tanggal between '2013-12-01' and '2013-12-31' 

select top 100 * from meka..mpart where part_kode='EMO-2221'

select top 100 * from meka..ttsh where hts_nomor_spb='303013007986PB'
select top 100 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='303013001694TS'

select top 100 * from meka..tptsh where 
hts_no_tran_stock='010114000116bk'
--update meka..tptsh set hts_qq='21' from meka..tptsh where 
hts_no_tran_stock='010114000116bk'

select top 100 * from meka..ttsh where 
hts_no_tran_stock='010114000116bk'
--update meka..ttsh set hts_qq='21' from meka..ttsh where 
hts_no_tran_stock='010114000116bk'
