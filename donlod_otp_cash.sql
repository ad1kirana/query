select top 10 * from MEKA..TWRSH where HLBM_Jenis_LBM='beli'

select HP_Cabang,HP_Nomor_S_Invoice,HP_Net_Sales, HP_Tanggal ,HP_Keterangan,HP_WRS,DP_Kode_Barang,DP_Harga_Beli,DP_Qty,DP_Disc1,DP_Disc2,DP_Disc3,DP_Amount,DP_Orig_Price
 from MEKA..TSIH inner join meka.. TSID on HP_Nomor_S_Invoice=DP_Nomor_S_Invoice where HP_Cara_Pembayaran='t'

select TOp 10 * from MEKA..TSID

select * from MEKA..MCUST