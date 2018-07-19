select cust_cabang,cust_kode_area,cust_kode,cust_nama,cust_kota,cp_kode_product,--cp_std_discount,
((((100-cp_std_discount)+((100-cp_std_discount)*0.1))-100)*-1) 
--
from meka..mcprod inner join meka..mcust on cp_kode_cust=cust_kode where cust_cabang='01' and --cust_kode_area between '01' and '01' and
cp_kode_product like 'bsm%' 
--and cp_kode_product <> 'ine'
and cust_status_cust <>'1'

