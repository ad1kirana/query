select a.cust_cabang,a.cust_code,b.cust_nama,a.cust_creditlimit,cust_creditused,b.cust_alamat_1,b.cust_alamat_2,b.cust_alamat_3,b.Cust_kota 
--select top 10 * 
from meka..mclimit a inner join meka..mcust b on a.cust_code=b.cust_kode where a.cust_cabang='01' and cust_status_cust <>'2'