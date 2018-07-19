select HS_Nomor_Faktur,HS_Kode_Salesman,HS_Customer,cust_nama,cust_alamat_1,CUST_Kota
,(select  top 1 DS_Kode_Product from MEKA..tslsd  where DS_Nomor_Faktur=HS_Nomor_Faktur)as produk
 from MEKA..TSLSH left join MEKA..MCUST on HS_Customer=CUST_Kode
 where HS_Cabang='20'
 and HS_Tanggal between '2017-12-01' and '2017-12-31'
 
 
select ar_salesman, AR_Cabang,sum(AR_Nilai_Total-AR_Nilai_Dibayar) as sisa
,(select  top 1 DS_Kode_Product from MEKA..tslsd  
where DS_Nomor_Faktur=HS_Nomor_Faktur)as produk
from MEKA..TSLSH left join MEKA..har on HS_Nomor_Faktur=AR_Nomor_Bukti
where 
AR_Salesman='1bsr' and
AR_Flag_Lunas <>'y'
group by ar_salesman, AR_Cabang,HS_Nomor_Faktur,DS_Kode_Product 