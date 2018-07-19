select top 10 * from MEKA..TWRSH where HLBM_No_LBM='010817003251bm'
select top 10 * from MEKA..TWRSH where HLBM_No_LBM='010317004972BM'
select top 10 * from MEKA..TWRSH where HLBM_No_LBM='010818000643bm'
select top 10 * from MEKA..TWRSd where DLBM_Nomor_LBM ='010817003251bm'
select top 10 * from MEKA..TWRSd where DLBM_Nomor_LBM ='010817003255BM'
select top 10 * from MEKA..tsih where HP_Cabang='08' and HP_Tanggal='2017-11-30'

select top 10 * from MEKA..tsih where HP_WRS='010818000643bm'
select top 10 * from MEKA..tsih where HP_WRS='010317004972BM      ' 
update MEKA..TSIH set HP_Flag_Posting='n' from MEKA..tsih where HP_WRS='010318001919bm' 


select top 10 * from MEKA..TWRSH inner join MEKA..TSIH on HLBM_No_LBM=HP_WRS
where HLBM_Flag_Posting='n' and HLBM_Kode_Supplier='oth'