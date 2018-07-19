select HLBM_No_LBM,HLBM_Tanggal,HLBM_Kode_Warehous,HLBM_Jenis_LBM,SUP_Nama,HLBM_Nomor_Dokumen,dlbm_product,DLBM_Kode_Barang,DLBM_Qty
 from MEKA..TWRSH inner join MEKA..TWRSD on HLBM_No_LBM=DLBM_Nomor_LBM
 inner join MEKA..MSPL on HLBM_Kode_Supplier=SUP_Kode_Supplier
where HLBM_Jenis_LBM like 'c%' and HLBM_Cabang='03' --and YEAR(hlbm_tanggal)=2016

select top 10 * from MEKA..mspl