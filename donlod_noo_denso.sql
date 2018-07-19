select hs_customer,cust_nama,ds_kode_product,cust_createdate,hs_tanggal,hs_kode_salesman
 
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
hs_cabang='01' and 
--hs_tanggal between '2015-01-01' and '2016-07-31' and 
--(product_supplier='002' or product_supplier='003' or product_supplier='013')and
hs_customer='01jari'
ORDER BY HS_TANGGAL DESC
--and cust_createdate between '2014-04-01' and '2014-04-30'


--NOO Denso 100%
select distinct (hs_customer),cust_nama,ds_kode_product,cust_cabang,cust_createdate,cust_start_cus,hs_tanggal,hs_kode_salesman
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
hs_cabang between '01' and '02' and 
hs_tanggal between '2018-06-01' and '2018-06-30'
and (product_supplier='002' )--or product_supplier='003' or product_supplier='013')
--and ds_kode_product <> 'coi'
and cust_createdate between '2018-06-01' and '2018-06-30'

select distinct (hs_customer),cust_nama,ds_kode_product,cust_cabang,cust_createdate,cust_start_cus,hs_tanggal,hs_kode_salesman
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
hs_cabang between '01' and '02' and 
hs_tanggal between '2016-04-01' and '2016-09-30'
and (product_supplier='002' )--or product_supplier='003' or product_supplier='013')
--and ds_kode_product <> 'coi'
and cust_start_cus between '2016-04-01' and '2016-09-30'

select top 10 * from meka..mcust where cust_kode='01jari'
