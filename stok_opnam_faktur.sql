select top 3 * from (meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document)
inner join meka..har on trfd_faktur=ar_nomor_bukti and
tf_company=ar_company and tf_branch=ar_cabang 
where ar_flag_lunas='n'

--donlod_faktur_untuk_stok_opnam

select ar_cabang,tf_recuser,trfd_document,ar_nomor_bukti,ar_status_giro,ar_tanggal_awal,ar_salesman,cust_kode,cust_nama,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,ar_nilai_dibayar,cust_kode_area
from ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) inner join meka..ttrfdoch
on tf_document=trfd_document and
tf_company=ar_company and tf_branch=ar_cabang ) inner join meka..mcust on ar_kode_cust=cust_kode
and ar_company=cust_companycode
and ar_cabang=cust_cabang
where --ar_status_giro= 'N' and 
ar_cabang between '20' and '20' 
--and tf_recuser = 'fahrul'
and ar_flag_lunas='n'
and AR_Status_Giro <> 'x'
union all
select ar_cabang,tf_recuser,trfd_document,ar_nomor_bukti,ar_status_giro,ar_tanggal_awal,ar_salesman,cust_kode,cust_nama,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,ar_nilai_dibayar,cust_kode_area
from ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) inner join meka..ttrfdoch
on tf_document=trfd_document and
tf_company=ar_company and tf_branch=ar_cabang ) inner join meka..mcust on ar_kode_cust=cust_kode
and ar_company=cust_companycode
and ar_cabang=cust_cabang
where --ar_status_giro= 'N' and 
ar_cabang between '30' and '35' 
and tf_recuser = 'fahrul'
and ar_flag_lunas='n'
and AR_Status_Giro <> 'x'
order by tf_recuser asc, ar_cabang asc, ar_salesman asc, cust_kode asc, ar_nomor_bukti asc

select ar_cabang,tf_recuser,trfd_document,ar_nomor_bukti,ar_status_giro,ar_tanggal_awal,ar_salesman,cust_kode,cust_nama,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,ar_nilai_dibayar,cust_kode_area
from ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) inner join meka..ttrfdoch
on tf_document=trfd_document and
tf_company=ar_company and tf_branch=ar_cabang ) inner join meka..mcust on ar_kode_cust=cust_kode
and ar_company=cust_companycode
and ar_cabang=cust_cabang
where --ar_status_giro= 'N' and 
ar_cabang between '01' and '02' 
and tf_recuser = 'andar'
and ar_flag_lunas='n'
and AR_Status_Giro <> 'x'
union all
select ar_cabang,tf_recuser,trfd_document,ar_nomor_bukti,ar_status_giro,ar_tanggal_awal,ar_salesman,cust_kode,cust_nama,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,ar_nilai_dibayar,cust_kode_area
from ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) inner join meka..ttrfdoch
on tf_document=trfd_document and
tf_company=ar_company and tf_branch=ar_cabang ) inner join meka..mcust on ar_kode_cust=cust_kode
and ar_company=cust_companycode
and ar_cabang=cust_cabang
where --ar_status_giro= 'N' and 
ar_cabang between '30' and '35' 
and tf_recuser = 'andar'
and ar_flag_lunas='n'
and AR_Status_Giro <> 'x'
order by tf_recuser asc, ar_cabang asc, cust_kode asc, ar_salesman asc, ar_nomor_bukti asc



-- stok_opnam_faktur_carfix

select ar_cabang,tf_recuser,trfd_document,ar_nomor_bukti,ar_status_giro,ar_tanggal_awal,ar_salesman,cust_kode,cust_nama,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,ar_nilai_dibayar,cust_kode_area
from ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) inner join meka..ttrfdoch
on tf_document=trfd_document and
tf_company=ar_company and tf_branch=ar_cabang ) inner join meka..mcust on ar_kode_cust=cust_kode
and ar_company=cust_companycode
and ar_cabang=cust_cabang
where --ar_status_giro= 'N' and 
ar_cabang between '03' and '08' 
--and tf_recuser <> 'abeth'
and ar_flag_lunas='n'
and AR_Status_Giro <> 'x'
order by AR_Cabang asc, cust_kode asc

select top 10 * from MEKA..HAR where AR_Nomor_Bukti='010618003501fp'

select ar_cabang,tf_recuser,trfd_document,ar_nomor_bukti,ar_status_giro,ar_tanggal_awal,ar_salesman,cust_kode,cust_nama,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,ar_nilai_dibayar,cust_kode_area
from ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) inner join meka..ttrfdoch
on tf_document=trfd_document and
tf_company=ar_company and tf_branch=ar_cabang ) inner join meka..mcust on ar_kode_cust=cust_kode
and ar_company=cust_companycode
--and ar_cabang=cust_cabang
where --ar_status_giro= 'N' and 
ar_cabang between '03' and '08' 
--and tf_recuser <> 'abeth'
and ar_flag_lunas='n'
order by tf_recuser asc, ar_cabang asc, ar_salesman asc, cust_kode asc, ar_nomor_bukti asc

and ar_salesman='1yud'
and cust_kode='05gumo'

select top 10 * from meka..ttrfdocd
select top 3 * from meka..ttrfdoch
select top 3 * from meka..har
select top 3 * from meka..mcust

select top 10 * from meka..ttrfdoch inner join meka..har on tf_document=ar_nomor_bukti 
where ar_flag_lunas='n'

010214016963FP      
select rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,sales_supervisor
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
