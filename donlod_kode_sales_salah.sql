select a.cust_cabang,A.CUST_Code,b.CUST_Nama,b.cust_alamat_3,B.CUST_Kota,A.CUST_CREDITLIMIT,A.CUST_CREDITUSED,b.CUST_Status_Cust,
 SUM(AR_Nilai_Total-AR_Nilai_Sudah_Cair)
from MEKA..MCLIMIT a inner join MEKA..MCUST b on a.CUST_Code=b.CUST_Kode
left join meka..har on a.cust_code=ar_kode_cust
group by a.cust_cabang,A.CUST_Code,b.CUST_Nama,b.cust_alamat_3,B.CUST_Kota,A.CUST_CREDITLIMIT,A.CUST_CREDITUSED,b.CUST_Status_Cust



select AR_Cabang,AR_Kode_Cust,SUM(AR_Nilai_Total-AR_Nilai_Sudah_Cair) from MEKA..HAR where AR_Flag_Lunas='n'
group by AR_Cabang,AR_Kode_Cust


