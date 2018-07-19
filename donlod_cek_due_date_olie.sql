
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,left(description,2),ar_cabang,rtrim(sales_supervisor) as spv,ar_nilai_dokumen
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..mtop on hs_golongan_beli=code and hs_company=companycode
where 
ar_cabang between '01' and '01'
and ar_flag_lunas ='n'
and ar_tanggal_awal between '2016-04-01' and '2016-04-30'
and hs_creator='kiki' 
and hs_golongan_beli='3'

select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,left(description,2),ar_cabang,rtrim(sales_supervisor) as spv,ar_nilai_dokumen
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..mtop on hs_golongan_beli=code and hs_company=companycode
where 
ar_cabang between '02' and '02'
and ar_flag_lunas ='n'
and ar_tanggal_awal between '2016-04-01' and '2016-04-30'
and hs_creator='rita' 
and hs_golongan_beli='3'

select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,left(description,2),ar_cabang,rtrim(sales_supervisor) as spv,ar_nilai_dokumen
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..mtop on hs_golongan_beli=code and hs_company=companycode
where 
ar_cabang between '01' and '01'
and ar_flag_lunas ='n'
and ar_tanggal_awal between '2016-04-01' and '2016-04-30'
and hs_creator='ery' 
and hs_golongan_beli='3'

select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,left(description,2),ar_cabang,rtrim(sales_supervisor) as spv,ar_nilai_dokumen
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..mtop on hs_golongan_beli=code and hs_company=companycode
where 
ar_cabang between '30' and '30'
and ar_flag_lunas ='n'
and ar_tanggal_awal between '2016-04-01' and '2016-04-30'
and hs_creator<>'kiki' 
and hs_golongan_beli='4'