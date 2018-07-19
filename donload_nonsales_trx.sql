select HTS_Cabang,HTS_Tanggal, HTS_No_Tran_stock,HTS_Kode_Warehous,HTS_Jenis_SPB,HTS_Kode_Customer,HTS_Creator,DTS_Product,DTS_Kode_Barang,DTS_Qty
 from MEKA..TPTSH inner join MEKA..TPTSD on HTS_No_Tran_stock=DTS_Nomor_T_Stock where HTS_Jenis_SPB='ad/k'
and HTS_Cabang between '01' and '02'
 and HTS_Tanggal>='2018-06-01'
 union all
select HTS_Cabang,HTS_Tanggal, HTS_No_Tran_stock,HTS_Kode_Warehous,HTS_Jenis_SPB,HTS_Kode_Customer,HTS_Creator,DTS_Product,DTS_Kode_Barang,DTS_Qty
 from MEKA..TPTSH inner join MEKA..TPTSD on HTS_No_Tran_stock=DTS_Nomor_T_Stock where HTS_Jenis_SPB='ad/k'
and HTS_Cabang between '20' and '35'
 and HTS_Tanggal>='2018-06-01'