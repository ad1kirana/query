select * from meka..har where ar_tanggal_awal <'2013-01-01' and ar_cabang ='20' and ar_tgl_bayar_akhir>'2010-12-31'

select ar_kode_cust,ar_tanggal_awal,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_tanggal_awal,ar_due_date,ar_due_date_adjust from meka..har where ar_cabang ='01' and ar_tanggal_awal < '2015-04-30' and ar_flag_lunas ='n'
select sum(ar_nilai_total-ar_nilai_dibayar) as nilai_ar  from meka..har where ar_cabang ='01' and ar_tanggal_awal <= '2015-04-30' and ar_flag_lunas <>'Y'


----used this query
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv,ar_flag_lunas,ar_tgl_bayar_akhir
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_cabang between '20' and '20'
and ar_flag_lunas ='y'
and ar_tanggal_awal<='2017-05-31'
and ar_tgl_bayar_akhir > '2017-05-31'
union all
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv,ar_flag_lunas,ar_tgl_bayar_akhir
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_cabang between '20' and '20'
and ar_flag_lunas ='N'
and ar_tanggal_awal<='2017-05-31'








select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_flag_lunas <>'y' and 
ar_cabang between '30' and '35'
--and ar_tanggal_awal < '2016-01-01'
and ar_flag_lunas ='y'
and ar_tgl_bayar_akhir between '2016-03-01' and '2016-03-31'