
--ar sudah_lunas_tgl_setelah_tanggal_x
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_cabang <> '20'
and ar_flag_lunas ='y'
and ar_tanggal_awal<='2016-06-30'
and ar_tgl_bayar_akhir > '2016-06-30'

--ar sudah_lunas_tgl_setelah_tanggal_x
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_cabang between '30' and '35'
and ar_flag_lunas ='y'
and ar_tanggal_awal<='2016-05-31'
and ar_tgl_bayar_akhir > '2016-05-31'


--ar_sblm_tgl_x_yg blm lunas
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_cabang <>'20'
and ar_flag_lunas <>'y'
and ar_tanggal_awal<='2016-06-30'




select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
where 
ar_cabang between '01' and '02'
and ar_flag_lunas <>'y'
and ar_tanggal_awal<='2016-05-31'