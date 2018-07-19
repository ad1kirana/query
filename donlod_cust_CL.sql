select a.cust_company,b.cust_cabang,a.cust_code,b.cust_nama,a.cust_creditlimit,a.cust_creditused,b.cust_status_cust
from meka..mclimit a inner join meka..mcust b on a.cust_code=b.cust_kode
where b.cust_status_cust <>'2' and b.cust_cabang between '03' and '06'

select sales_kode,sales_nama,sales_supervisor from meka..mslsmn