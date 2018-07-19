select CUST_CreateUser,CUST_Cabang,CUST_Kode,CUST_Nama,CUST_Alamat_3,CUST_Kota,mobileno,CUST_Status_Cust from MEKA..MCUST where mobileno not like '08%' and CUST_Cabang between '01' and '02' and CUST_Status_Cust <> '1' and CUST_CreateUser<>'null' 
union all
select CUST_CreateUser,CUST_Cabang,CUST_Kode,CUST_Nama,CUST_Alamat_3,CUST_Kota,mobileno,CUST_Status_Cust from MEKA..MCUST where mobileno not like '08%' and CUST_Cabang between '30' and '30' and CUST_Status_Cust <> '1' and CUST_CreateUser<>'null'
order by mobileno desc
