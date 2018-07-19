--select top 10 * from meka..paypoint where payinvoiceno='010715000012fp'

--select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_no_lbm='010615000128bm'

--dg data DTH; big data
select ddt_nomor_tagihan,hdt_creator,rtrim(ar_nomor_bukti) as invoice,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,sales_supervisor,ar_status_giro,trfd_document,tf_recuser
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
			inner join meka..ttrfdocd on ar_nomor_bukti=trfd_faktur
			inner join meka..ttrfdoch on trfd_document=tf_document and ar_company=tf_company and ar_cabang=tf_branch
				left join meka..tcold on ar_nomor_bukti=ddt_nomor_document and ar_nomor_ar=ddt_nomor_ar
					and ar_kode_cust=ddt_kode_cust
				left join meka..tcolh on ddt_nomor_tagihan=hdt_nomor_tagihan
where 
ar_flag_lunas <>'y'
and ar_status_giro <> 'x'
and ar_cabang<>'20'


--without DTH data--
select tf_recuser,rtrim(ar_nomor_bukti) as invoice,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,sales_supervisor,ar_status_giro,trfd_document
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
			inner join meka..ttrfdocd on ar_nomor_bukti=trfd_faktur
			inner join meka..ttrfdoch on trfd_document=tf_document and ar_company=tf_company and ar_cabang=tf_branch
				
where 
ar_flag_lunas <>'y'
and ar_status_giro <> 'x'
and ar_cabang<>'20'
----without DTH data--



select top 10 * from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
select top 10 * from meka..ttrfdocd
select top 10 * from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan

select top 10 * from meka..har