010218000051TS 
010218000052TS
select top 10 HTS_No_Tran_stock,HTS_Kode_Warehous,HTS_Jenis_SPB,HTS_Kode_Customer,HTS_QQ from meka..ttsh 
where hts_no_tran_stock='010217000403TS'
select top 10 HTS_No_Tran_stock,HTS_Kode_Warehous,HTS_Jenis_SPB,HTS_Kode_Customer,HTS_QQ from meka..TPTSH 
where hts_no_tran_stock='010217000403TS'
select top 10 * from meka..ttsh where hts_no_tran_stock between '303516000006TS' and '303516000008TS'
select top 10 * from MEKA..MCUST, 

--update meka..ttsh set hts_kode_customer='55SUWU', hts_qq='55SUWU' from meka..ttsh where hts_no_tran_stock='010218000052TS'
--update meka..tptsh set hts_kode_customer='55SUWU', hts_qq='55SUWU' from meka..tptsh where hts_no_tran_stock='010218000052TS'
--update meka..ttsh set hts_kode_customer='18EKSA' from meka..ttsh where hts_no_tran_stock between '303516000006TS' and '303516000008TS'