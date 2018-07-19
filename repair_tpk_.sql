--repair tp/k salah gudang
select top 10 * from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock 
where hts_no_tran_stock='010116000807TS'
--update meka..ttsh set HTS_qq='03' from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock 
where hts_no_tran_stock='010116000807TS'

select top 10 * from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='010116000163TS'
--update meka..tptsh set HTS_qq='03' from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_no_tran_stock='010116000278TS'




select top 10 * from meka..twrsh where hlbm_no_lbm='010116000516BM'
--update meka..twrsh set HLBM_flag_posting='Y' from meka..twrsh where hlbm_no_lbm='010116000516BM'

select top 10 * from meka..mpart where part_kode='om6-582240' and part_kode_wh='03'
--update meka..mpart set part_stock_bisa_jual='2', part_stock_total='2' from meka..mpart where part_kode='om6-582240' and part_kode_wh='03'