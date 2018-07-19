--select *
--cab	so	doku	jenis	no_giro	tgl	invoice	nama	sales prod	pay_tipe	nilai_brv	nilai_a/r	amount

select hs_cabang,hs_salesoffice,hbrv_nomor_brv,dg_nomor_giro,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,hs_customer,hs_kode_salesman,
(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur)as prod, '',
hbrv_nilai_total,hg_nilai_ar,dg_nilai_untuk_DOC,cust_klasifikasi_2
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
	inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
		inner join meka..tgrh on hbrv_company=hg_company
			and hbrv_cabang=hg_cabang and dpg_nomor_giro=hg_nomor_giro
				inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro and dpg_nomor_giro=dg_nomor_giro
					inner join meka..mcust on hg_kode_cust=cust_kode
					inner join meka..tslsh on hbrv_company=hs_company
						and hg_company=hs_company and hbrv_cabang=hs_cabang and hg_cabang=hs_cabang
						and dg_nomor_faktur=hs_nomor_faktur
						where 
						hbrv_cabang between '03' and '06' and hbrv_tgl  between '2015-01-01' and '2015-01-31'
						--and dg_nomor_faktur <>''
						order by dg_nomor_faktur asc


select hs_cabang,hs_salesoffice,hbrv_nomor_brv,dg_nomor_giro,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,hs_customer,hs_kode_salesman,
(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur)as prod, '',
hbrv_nilai_total,hg_nilai_ar,dg_nilai_untuk_DOC,cust_klasifikasi_2
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
	inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
		inner join meka..tgrh on hbrv_company=hg_company
			and hbrv_cabang=hg_cabang and dpg_nomor_giro=hg_nomor_giro
				inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro and dpg_nomor_giro=dg_nomor_giro
					inner join meka..mcust on hg_kode_cust=cust_kode
					inner join meka..tslsh on hbrv_company=hs_company
						and hg_company=hs_company and hbrv_cabang=hs_cabang and hg_cabang=hs_cabang
						and dg_nomor_faktur=hs_nomor_faktur
						where 
						hbrv_cabang='02' and hbrv_tgl  between '2015-01-01' and '2015-01-31'
						and dg_nomor_faktur <>''
						order by dg_nomor_faktur asc

