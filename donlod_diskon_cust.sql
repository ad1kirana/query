select cust_kode,cust_nama, cust_alamat_1,cust_kota,product_kode,product_nama,cp_std_discount
from 
meka..mcust inner join meka..mcprod on cust_kode=cp_kode_cust inner join meka..mprod on cp_kode_product=product_kode
where cust_cabang='01'and cust_status_cust <> '1'