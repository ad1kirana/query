select a.cust_code,b.cust_nama,b.cust_alamat_1,b.cust_alamat_2,b.cust_alamat_3,b.cust_kota,b.cust_contact_person,cust_status_cust,cust_credit_limit from meka..mclimit a inner join meka..mcust b
on a.cust_code=b.cust_kode where a.cust_cabang between '03' and '08' and b.cust_status_cust='1' and cust_credit_limit > '5000000'

--update meka..mslsmn set alamat='Jogja' from meka..mslsmn where sales_sts='0' and sales_kode='4wa'

select b.cust_kode,b.cust_nama,b.cust_alamat_1,b.cust_alamat_2,b.cust_alamat_3,b.cust_kota,b.cust_contact_person,cust_status_cust
from meka..mcust b where b.cust_cabang='03'

select a.cust_code,cust_status_cust,cust_creditlimit from meka..mclimit a inner join meka..mcust b
on a.cust_code=b.cust_kode where a.cust_cabang='03'

select top 10 * from meka..mclimit