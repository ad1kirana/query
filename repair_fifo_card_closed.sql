
select top 10 * from meka..MFFCOST where FF_Counter='81633' and ff_cabang='03' and FF_Kode_Barang='SHE-SPR ATF MD3(1L)'
--update MEKA..MFFCOST set FF_Qty_Keluar='16', FF_Flag_Closed='N' from meka..MFFCOST where FF_Counter='81633' and ff_cabang='03' and FF_Kode_Barang='SHE-SPR ATF MD3(1L)' and ff_cabang='03'

77854
97306



select top 10000 * from MEKA..HFFMOV where MC_Kode_Barang='SHE-SPR ATF MD3(1L)' and MC_Cabang='03' 
select top 10000 * from MEKA..HFFMOV where MC_NOMOR_FIFO='81633' and MC_Cabang='03' and MC_Kode_Barang='OTP.314' 
order by MC_Tanggal desc
           
--update MEKA..HFFMOV set MC_NOMOR_FIFO='64966' from MEKA..HFFMOV where MC_NOMOR_FIFO='12529' and MC_Kode_Barang='MS-RNMDRDRUM-0.5' and MC_Cabang='05' and MC_No_Doc='010515000946FP'     
--update MEKA..HFFMOV set MC_NOMOR_FIFO='18605' from MEKA..HFFMOV where MC_NOMOR_FIFO='12529' and MC_Kode_Barang='MS-RNMDRDRUM-0.5' and MC_Cabang='05' and MC_No_Doc='010515000879FP'


--update meka..mpart set part_stock_bisa_jual='23', part_stock_dn='0',part_stock_total='23'  from meka..mpart where part_kode_wh='21' and part_kode_group='OM2' and part_kode='OM2-687065' and part_stock_total='21' and part_stock_bisa_jual='21'

select * from meka..MFFCOST where FF_Kode_Barang='SHE-SPR ATF MD3(1L)' and FF_Cabang='03' and FF_Qty_Keluar <> FF_Qty_Masuk