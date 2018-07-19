--update meka..ttsh set hts_qq='18' from meka..ttsh where hts_no_tran_stock='010117000745BK'
--update meka..ttsh set hts_qq='2A' from meka..ttsh where hts_no_tran_stock='010117000655BK'
--update meka..ttsh set hts_qq='26' from meka..ttsh where hts_no_tran_stock='010218000045BK'
--update meka..ttsh set hts_qq='24' from meka..ttsh where hts_no_tran_stock='010118000998BK'
--update meka..ttsh set hts_qq='18' from meka..ttsh where hts_no_tran_stock='010117000920ts'
--update meka..ttsh set hts_qq='23' from meka..ttsh where hts_no_tran_stock='010117001286bk'
--update meka..ttsh set hts_qq='20' from meka..ttsh where hts_no_tran_stock='010218000130BK'
--update meka..ttsh set hts_qq='61' from meka..ttsh where hts_no_tran_stock='010218000032bk'
--update meka..ttsh set hts_qq='30' from meka..ttsh where hts_no_tran_stock='303018000071TS'
--update meka..ttsh set hts_qq='28' from meka..ttsh where hts_no_tran_stock='010118000709bk'
--update meka..ttsh set hts_qq='21' from meka..ttsh where hts_no_tran_stock='010118000710bk'
--update meka..ttsh set hts_qq='01' from meka..ttsh where hts_no_tran_stock='010318000111bk'
--update meka..ttsh set hts_qq='25' from meka..ttsh where hts_no_tran_stock='010118001160BK'

--update meka..tptsh set hts_qq='01' from meka..tptsh where hts_no_tran_stock='010318000111bk'
--update meka..tptsh set hts_qq='28' from meka..tptsh where hts_no_tran_stock='010118000709bk'
--update meka..tptsh set hts_qq='26' from meka..tptsh where hts_no_tran_stock='010218000045BK'
--update meka..tptsh set hts_qq='18' from meka..tptsh where hts_no_tran_stock='010117000920ts'
--update meka..tptsh set hts_qq='24' from meka..tptsh where hts_no_tran_stock='010118000998BK'
--update meka..tptsh set hts_qq='23' from meka..tptsh where hts_no_tran_stock='010117001286bk'
--update meka..tptsh set hts_qq='20' from meka..tptsh where hts_no_tran_stock='010218000130BK'
--update meka..tptsh set hts_qq='61' from meka..tptsh where hts_no_tran_stock='010218000032bk'
--update meka..tptsh set hts_qq='30' from meka..tptsh where hts_no_tran_stock='303018000071TS'
--update meka..tptsh set hts_qq='21' from meka..tptsh where hts_no_tran_stock='010118000710bk'
--update meka..tptsh set hts_qq='25' from meka..tptsh where hts_no_tran_stock='010118001160BK'

select top 10 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock 
where hts_no_tran_stock='010318000111bk'

010318000152bk

select top 10 * from MEKA..TWRSH where HLBM_Nomor_Dokumen='010118000616bk'

select top 10 * from MEKA..TWRSD where DLBM_Nomor_LBM='010818001180BM'
HLBM_Nomor_Dokumen='010118000616bk'

select top 10 * from meka..tptsh where hts_no_tran_stock='010217000299bk'

--repair salah trx

select top 10 * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='010317000272bk'

select top 10 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='010517000105bk'

select top 10 * from meka..mwh where wh_kode='24'


--repair IBK belum spb
--update meka..tptsh set hts_jenis_spb='IBK0', jenis_jurnal_to_GL='408' from meka..tptsh where hts_no_tran_stock='010318000152bk'
--update meka..tptsh set hts_jenis_spb='IBK5', jenis_jurnal_to_GL='414' from meka..tptsh where hts_no_tran_stock='010216000298bk'
--update meka..tptsh set hts_jenis_spb='IBK7', jenis_jurnal_to_GL='416' from meka..tptsh where hts_no_tran_stock='010316000050BK'
--update meka..tptsh set hts_jenis_spb='IBK1', jenis_jurnal_to_GL='409' from meka..tptsh where hts_no_tran_stock='010818000030bk'
--update meka..tptsh set hts_jenis_spb='IBK5', jenis_jurnal_to_GL='414' from meka..tptsh where hts_no_tran_stock='010315000302BK'
--update meka..tptsh set hts_jenis_spb='IBK7', jenis_jurnal_to_GL='416' from meka..tptsh where hts_no_tran_stock='010316000050BK'
--update meka..tptsh set hts_jenis_spb='IBK6', jenis_jurnal_to_GL='415' from meka..tptsh where hts_no_tran_stock='010817000124bk'
--update meka..tptsh set hts_jenis_spb='IBK1', jenis_jurnal_to_GL='409' from meka..tptsh where hts_no_tran_stock='010817000124bk'


select top 10 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock 
where hts_no_tran_stock='010116000292BK'

--repair IBK sudah spb belum posting
--update meka..ttsh set hts_jenis_spb='IBK0', jenis_jurnal_to_GL='408' from meka..ttsh where hts_no_tran_stock='010318000152bk'
--update meka..ttsh set hts_jenis_spb='IBK1', jenis_jurnal_to_GL='409' from meka..ttsh where hts_no_tran_stock='010818000030bk'
--update meka..ttsh set hts_jenis_spb='IBK7', jenis_jurnal_to_GL='416' from meka..ttsh where hts_no_tran_stock='010316000050BK'
--update meka..ttsh set hts_jenis_spb='IBK6', jenis_jurnal_to_GL='415' from meka..ttsh where hts_no_tran_stock='010816000096bk'


select top 10 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock 
where hts_no_tran_stock='303017000192TS'

--repair IBK sudah_posting_salah_gudang
--update meka..ttsh set hts_qq='55' from meka..ttsh where hts_no_tran_stock='010218000312TS'
--update meka..tptsh set hts_qq='55' from meka..tptsh where hts_no_tran_stock='010218000312TS'


select top 10 * from meka..ttsh where hts_no_tran_stock='010115000704bk'
select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_nomor_dokumen=dlbm_no_dokumen where hlbm_nomor_dokumen='010214000697ts'
select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_nomor_dokumen=dlbm_no_dokumen where hlbm_nomor_dokumen='010214000698ts'
select top 100 * from meka..hkstok where stok_kode_barang='INPR-NS40' and stok_tanggal between '2014-12-01' and '2014-12-31' and stok_cabang='02'
--update meka..ttsh set hts_qq='28' from meka..ttsh where hts_no_tran_stock='010315000302BK'

select top 200 * from meka..mspl order by sup_kode_supplier desc

select top 10 * from meka..ttsh where hts_no_tran_stock between '010115000095bk' and '010115000096bk' and hts_jenis_spb like 'ib%'
--update meka..ttsh set HTS_flag_TP ='N' from meka..ttsh where hts_no_tran_stock ='010115000096bk'
--update meka..ttsh set HTS_flag_TP ='Y' from meka..ttsh where hts_no_tran_stock ='010115000095bk'

select top 100 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_jenis_lbm='IBM5' and month(hlbm_tanggal)=2

select top 10 * from meka..twrsh where hlbm_no_lbm='010615000081BM'      
--update meka..twrsh set hlbm_nomor_dokumen='010115000095BK' from meka..twrsh where hlbm_no_lbm='010615000081BM'      


---ganti gudang tp/k
select top 10 * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='010116000720BK'
select top 10 * from meka..ttsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='010116000720BK'

--update meka..tptsh set hts_qq='30' from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='303017000192TS'
--update meka..ttsh set hts_qq='30' from meka..ttsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='303017000192TS'