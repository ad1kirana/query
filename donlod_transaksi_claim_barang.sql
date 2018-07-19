select HLBM_No_LBM,HLBM_Tanggal,HLBM_Kode_Warehous,HLBM_Jenis_LBM,SUP_Nama,HLBM_Nomor_Dokumen,dlbm_product,DLBM_Kode_Barang,DLBM_Qty
 from MEKA..TWRSH inner join MEKA..TWRSD on HLBM_No_LBM=DLBM_Nomor_LBM
 inner join MEKA..MSPL on HLBM_Kode_Supplier=SUP_Kode_Supplier
where HLBM_Jenis_LBM like 'c%' and HLBM_Cabang='03' --and YEAR(hlbm_tanggal)=2016

select top 10 * from MEKA..mspl


select hcc_cabang,HCC_Nomor_Claim,hcc_tgl,HCC_Kode_Cust,DCC_KODE_BARANG,DCC_QTY_CLAIM,DCC_ReffDoc from MEKA..TCLAIMH inner join MEKA..TCLAIMD on HCC_Nomor_Claim=DCC_NOMOR_CLAIM
where HCC_Cabang='03' 
and YEAR(hcc_tgl)=2016

select HTS_Cabang,HTS_Salesoffice,HTS_Tanggal,HTS_No_Tran_stock,HTS_Kode_Warehous,HTS_Jenis_SPB,HTS_Kode_Customer,HTS_Nomor_Dokumen,dts_product,DTS_Kode_Barang,DTS_Qty 
--select top 10 * 
from MEKA..TTSH inner join MEKA..TTSD on HTS_No_Tran_stock=DTS_Nomor_T_Stock
where HTS_Cabang='03'
and HTS_Jenis_SPB ='cl/c'
and year(hts_tanggal)=2016

select HTS_Cabang,HTS_Salesoffice,HTS_Tanggal, HTS_No_Tran_stock, HTS_Kode_Warehous,HTS_Jenis_SPB,HTS_Kode_Supplier, SUP_Nama, HTS_Nomor_Dokumen,dts_product,DTS_Kode_Barang,DTS_Qty 
--select top 10 * 
from MEKA..TTSH inner join MEKA..TTSD on HTS_No_Tran_stock=DTS_Nomor_T_Stock
inner join MEKA..MSPL on HTS_kode_Supplier=SUP_Kode_Supplier
where HTS_Cabang='03'
and HTS_Jenis_SPB ='cl/s'