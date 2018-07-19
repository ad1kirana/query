--donlod_cust_with_prod
select distinct cust_kode,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_klasifikasi_2,sales_nama,cust_createdate,cust_telefon,cust_contact_person,mobileno,cust_status_cust,ds_kode_product,cust_kode_area,cust_createdate
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where hs_cabang='04'
and hs_tanggal <'2014-01-01'
--and cust_status_cust <> '1'
--and ds_kode_product like 'she'
order by cust_kode asc

select top 10 * from meka..mcust


--donlod_cust_brp_x_trx
select hs_tanggal,hs_nomor_faktur,hs_customer,cust_nama,cust_createdate,cust_status_cust
from meka..tslsh inner join meka..mcust on hs_customer=cust_kode
where hs_cabang='04'
and hs_tanggal <'2014-01-01'
--and cust_status_cust <> '1'
--and ds_kode_product like 'she'
order by hs_customer asc

--donlod_cust_sudah_pernah_trx
select distinct hs_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_createdate,cust_status_cust
from meka..tslsh inner join meka..mcust on hs_customer=cust_kode
where hs_cabang='04'
and hs_tanggal <'2014-01-01'
--and cust_status_cust <> '1'
--and ds_kode_product like 'she'
order by hs_customer asc


select top 10 * from meka..mcust
select distinct sales_kode,sales_nama,cust_kode,cust_nama,cust_kota,cust_Kode_area,'',ds_kode_product
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where hs_cabang='20'
and hs_tanggal <'2013-01-01'
and cust_status_cust <> '1'
--and ds_kode_product like 'she'
order by cust_kode asc

select top 10 * from meka..mcust
and hs_tanggal between '2014-07-01' and '2014-07-31'

select top 10 * from meka..tslsh

select top 10 * from meka..marea where area_company='20'