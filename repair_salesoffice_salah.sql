select top 10 * from meka..tslsh where hs_kode_salesman='rint' and hs_salesoffice='01' and year(hs_tanggal)=2016
select top 10 * from meka..tslsh where hs_kode_salesman='1yud' and hs_salesoffice='01' and year(hs_tanggal)=2016
--update meka..tslsh set hs_salesoffice='06' from meka..tslsh where hs_kode_salesman='rint' and hs_salesoffice='01' and year(hs_tanggal)=2016
--update meka..tslsh set hs_salesoffice='06' from meka..tslsh where hs_kode_salesman='1yud' and hs_salesoffice='01' and year(hs_tanggal)=2016

select top 10 * from meka..torderh where hs_kode_salesman='rint' and hs_salesoffice='01' and year(hs_tanggal)=2016
select top 10 * from meka..torderh where hs_kode_salesman='1yud' and hs_salesoffice='01' and year(hs_tanggal)=2016
--update meka..torderh set hs_salesoffice='06' from meka..torderh where hs_kode_salesman='rint' and hs_salesoffice='01' and year(hs_tanggal)=2016
--update meka..torderh set hs_salesoffice='06' from meka..torderh where hs_kode_salesman='1yud' and hs_salesoffice='01' and year(hs_tanggal)=2016         

select top 10 * from meka..ttsh left join meka..twrsh on hts_no_tran_stock=hlbm_nomor_dokumen where hts_jenis_spb='tp/k' and hlbm_jenis_lbm <>'tp/m'
and hts_tanggal > '2016-01-01'
select top 10 * from meka..twrsd where dlbm_nomor_lbm='010316002109BM'

select top 10 * from meka..ttsh where hts_no_tran_stock='010116000513ts'