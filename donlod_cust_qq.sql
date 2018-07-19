select a.cust_cabang,rtrim(a.cust_kode) as kode,b.cust_qq,rtrim(a.cust_nama) as nama,rtrim(a.cust_alamat_1) as alamat,
rtrim(a.cust_alamat_3) as city_area,rtrim(a.cust_kota) as kota,b.cust_defaultwh
--select top 10 * 
from meka..mcust a inner join meka..mcqq b on a.cust_kode=b.cust_kode where
a.cust_cabang between '30' and '30'  
and a.cust_status_cust <>'1'
and a.cust_kota like '05-%'

select top 10 * from mcqq where cust_qq='05samo'