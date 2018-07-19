
--used this query
select ar_nomor_ar,rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_cabang,rtrim(sales_supervisor) as spv,ar_due_date_adjust
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_flag_lunas <>'y'
and ar_cabang between '30' and '30'
and ar_tanggal_awal>='2017-01-01'
and ar_salesman like 'a-%'



--used this query
select ar_nomor_ar,rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_cabang,rtrim(sales_supervisor) as spv,ar_due_date_adjust
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_flag_lunas <>'y'
and ar_cabang between '01' and '02'
and ar_tanggal_awal>='2016-03-01'