select distinct hs_customer,cust_nama,ds_kode_product,hs_tanggal,hs_kode_salesman
 
--select top 10 * 
from meka..tslsh,meka..tslsd,meka..mcust,meka..mtipe,meka..mprod
where
hs_nomor_faktur=ds_nomor_faktur and
hs_cabang=cust_cabang and
hs_company=cust_companycode and
hs_customer=cust_kode and
ds_kode_product=type_kode_group and
ds_kode_barang=type_kode and
ds_kode_product=product_kode and
type_kode_group=product_kode and
hs_cabang='02' and 
hs_tanggal between '2014-11-01' and '2014-11-30'
and (product_supplier='002' or product_supplier='003' or product_supplier='013')
