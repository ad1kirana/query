select js_customer,js_kode_area,cust_nama,cust_kode_delivery,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota
from (meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode and  js_company=cust_companycode)
where js_kode_sales='toto' and cust_status_cust <> '1'
and cust_kode_delivery like '02%'
select top 10 * from meka..mcust
select top 10 * from meka..mdlvry