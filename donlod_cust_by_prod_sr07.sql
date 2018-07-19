select distinct hs_customer,cust_nama,hs_kode_salesman,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_telefon,mobileno,cust_contact_person 
from (select hs_customer,cust_nama,hs_kode_salesman,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_telefon,mobileno,cust_contact_person 
 
--select top 10 * 
from meka..tslsh,meka..tslsd,meka..mcust,meka..mtipe
where
hs_nomor_faktur=ds_nomor_faktur and
hs_cabang=cust_cabang and
hs_company=cust_companycode and
hs_customer=cust_kode and
ds_kode_product=type_kode_group and
ds_kode_barang=type_kode and
hs_cabang='01' and hs_tanggal between '2010-01-01' and '2014-04-30'
and ds_kode_barang like 'om%') as satu

--select top 10 * from meka..mtipe