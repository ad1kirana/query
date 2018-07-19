select *
-- select kode_customer,cust_nama,cust_alamat_1,cust_kota,create_date,create_user
from meka..ubah_cl inner join meka..mcust on kode_customer=cust_kode and company=cust_companycode
where status = 'n' and company='30' and create_date between '2015-01-01' and '2015-01-31'