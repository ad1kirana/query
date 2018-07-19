select * from  mpart where part_cabang='02' and part_kode='INPR-N100'
SELECT * FROM TORDERH INNER JOIN TORDERD ON HS_NOMOR_FAKTUR=DS_NOMOR_FAKTUR WHERE hs_warehouse='51' and  DS_KODE_BARANG='INPR-N100' and hs_cabang='02'
select * from tptsh inner join tptsd on hts_no_tran_stock=DTS_Nomor_T_Stock where hts_no_tran_stock='010208001228TS'
select * from twrsh inner join twrsd on HLBM_No_LBM=DLBM_Nomor_LBM where HLBM_Nomor_Dokumen='010208001228TS'
select * from ttsh inner join ttsd on hts_no_tran_stock=DTS_Nomor_T_Stock where hts_no_tran_stock='010208001228TS'
select * from tptsh inner join tptsd on hts_no_tran_stock=DTS_Nomor_T_Stock where hts_no_tran_stock='010208001228TS'

select * from tpspbf where dfs_nomor_trn_stock='010208001228TS'
sp_help tpspbf