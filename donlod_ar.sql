

--used this query
select ar_cabang,hs_salesoffice,rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on --ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
where 
ar_flag_lunas <>'y'
and AR_Salesman='1ek'
and ar_cabang <>'20'

--donlod_ar_untuk_eskaLINK
--used this query
select ar_cabang,hs_salesoffice,rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
where 
ar_flag_lunas <>'y'
and ar_cabang ='02'



and hs_salesoffice='07'
and ar_salesman not like '1%'
select top 10 * from meka..har

and ar_kode_cust='041601077C'
--and ar_salesman='udn'
--and (prod) like 'she%'
and YEAR(ar_tanggal_awal)=2016
and ar_tanggal_awal between '2014-01-01' and '2016-06-26'

--donlod_a/r_lunas
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_due_date_adjust,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
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
and ar_tanggal_awal between '2016-07-01' and '2016-07-31'
union all
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_due_date_adjust,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
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
and ar_tanggal_awal between '2016-07-01' and '2016-07-31'

--ar_lebih dari 80jt
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtirm(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_flag_lunas <>'y'
and ar_cabang<>'20'
and (ar_nilai_total-ar_nilai_sudah_cair)>='8000000'



select  distinct rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,ds_kode_product,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair
from meka..har,meka..tslsd,meka..mslsmn,meka..mcust
where
ar_cabang=cust_cabang and
ar_company=cust_companycode and
ar_nomor_bukti = ds_nomor_faktur and
ar_salesman=sales_kode and
ar_kode_cust=cust_kode and
ar_company=sales_company and
ar_cabang=sales_cabang and 
ar_flag_lunas <>'y'and
ar_company <>'20' 
--ar_cabang='01' 
and

--ar_company <>'20' 
--ds_kode_product='she' and
--ar_cabang='01'
ds_kode_product='she' and
ar_tanggal_awal > '2014-07-31'
--select top 1 * from meka..mcust
--select top 1 * from meka..har
--select top 1 * from meka..tslsd
--select top 1 * from meka..mslsmn


--and ar_cabang='30' 
--and sales_supervisor=''

order by ar_nomor_bukti asc

select * from meka..msspv
select *
--select sales_cabang,sales_supervisor
from meka..mslsmn where sales_supervisor <>''

--ar_aging
select ar_kode_cust,cust_nama,rtrim(ar_nomor_bukti),ar_cabang,ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_flag_lunas,rtrim(sales_supervisor) as spv,ar_salesman,rtrim(sales_nama)as salesman
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_tanggal_awal>='2015-07-01'
and ar_cabang between '01' and '01'
and ar_flag_lunas='y'
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-12-31'
--ar_aging_trading
select ar_kode_cust,cust_nama,rtrim(ar_nomor_bukti),ar_cabang,ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_flag_lunas,rtrim(sales_supervisor) as spv,ar_salesman,rtrim(sales_nama)as salesman
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	inner join meka..mbranch on ar_cabang=coy_cabang 
where 
ar_tanggal_awal>='2015-07-01'
and price_policy='1' 
and ar_cabang <> '20'
and ar_flag_lunas='y'
and ar_tgl_bayar_akhir between '2017-01-01' and '2017-01-31'


select top 10 * from meka..mbranch where price_policy='1' 


select rtrim(ar_nomor_bukti),ar_kode_cust,cust_nama,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_tgl_bayar_akhir
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	--inner join meka..
where 
ar_tanggal_awal<='2016-11-30'
and ar_cabang <>'20' --between '30' and '35'
and ar_flag_lunas='y'
and ar_tgl_bayar_akhir between '2017-01-01' and '2017-01-31'
