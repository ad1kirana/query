select distinct HS_Customer,
cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,CUST_Kota, CUST_No_NPWP,no_npwp, 
sales_nama,sales_supervisor,
--(select top 1 sales_nama from MEKA..TSLSH inner join MEKA..MSLSMN on HS_Kode_Salesman=Sales_Kode) as spv,
(select top 1 DS_Kode_Product from MEKA..tslsd inner join MEKA..TSLSH on DS_Nomor_Faktur=HS_Nomor_Faktur) as prod,
hs_cabang
from MEKA..TSLSH 
inner join MEKA..MSLSMN on HS_Kode_Salesman=Sales_Kode  
left  join meka..mcust on HS_Customer=CUST_Kode
left join MEKA..MAPJK on CUST_Kode=Kode_Customer
where HS_Tanggal >='2017-12-01' and
(No_Npwp ='' or 
No_Npwp is null)
group by hs_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,CUST_No_NPWP,no_npwp,Sales_Supervisor

select top 10 * from MEKA..MAPJK


--4935
2582+3=4585