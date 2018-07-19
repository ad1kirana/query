select top 1000 HLBM_Kode_Warehous,DLBM_Kode_Barang,TYPE_KODE_SPL_1, sum(DLBM_Qty),sum(DLBM_Qty*TYPE_VOLUME) from MEKA..TWRSH inner join MEKA..TWRSD on HLBM_No_LBM=DLBM_Nomor_LBM 
inner join MEKA..MTIPE on DLBM_Kode_Barang=TYPE_KODE
where HLBM_Tanggal>'2018-07-01' and HLBM_Kode_Supplier='007' and HLBM_Jenis_LBM='beli' and HLBM_Cabang='01'
group by HLBM_Kode_Warehous,DLBM_Kode_Barang,TYPE_KODE_SPL_1
union all
select top 1000 HLBM_Kode_Warehous,DLBM_Kode_Barang,TYPE_KODE_SPL_1, sum(DLBM_Qty),sum(DLBM_Qty*TYPE_VOLUME) from MEKA..TWRSH inner join MEKA..TWRSD on HLBM_No_LBM=DLBM_Nomor_LBM 
inner join MEKA..MTIPE on DLBM_Kode_Barang=TYPE_KODE
where HLBM_Tanggal>'2018-07-01' and HLBM_Kode_Supplier='007' and HLBM_Jenis_LBM='beli' and HLBM_Cabang='30'

group by HLBM_Kode_Warehous,DLBM_Kode_Barang,TYPE_KODE_SPL_1
