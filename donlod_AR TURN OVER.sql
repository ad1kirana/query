select distinct ar_nomor_bukti, ar_cabang, ar_kode_cust,
ds_kode_product, ar_tanggal_awal,ar_tgl_bayar_akhir,ar_nilai_dokumen,product_nama,description
from meka..har inner join meka..tslsd on ar_nomor_bukti=ds_nomor_faktur 
inner join meka..mprod on ds_kode_product=product_kode inner join meka..mgprod on product_group=kode_group
where ar_flag_lunas='Y' and ar_tanggal_awal between '2016-01-01' and '2016-04-30' and ar_cabang between '01' and '02'

select distinct ar_nomor_bukti, ar_cabang, ar_kode_cust,
ds_kode_product, ar_tanggal_awal,ar_tgl_bayar_akhir,ar_nilai_dokumen,product_nama,description
from meka..har inner join meka..tslsd on ar_nomor_bukti=ds_nomor_faktur 
inner join meka..mprod on ds_kode_product=product_kode inner join meka..mgprod on product_group=kode_group
where ar_flag_lunas='Y' and ar_tanggal_awal between '2016-01-01' and '2016-04-30' and ar_cabang between '30' and '35'


--and ds_kode_product like 'sh%'

select top 3 * from meka..mprod
select top 3 * from meka..mgprod

--turn over
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_cabang,rtrim(sales_supervisor) as spv,ar_tgl_bayar_akhir
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_flag_lunas ='y'
and ar_cabang between '01' and '02'
--and ar_tanggal_awal between '2016-03-01' and '2016-03-31' 
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-04-30' 

select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_cabang,rtrim(sales_supervisor) as spv,ar_tgl_bayar_akhir
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_flag_lunas ='y'
and ar_cabang between '30' and '35'
--and ar_tanggal_awal between '2016-03-01' and '2016-03-31' 
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-04-30' 


