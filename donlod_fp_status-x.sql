select 
hs_cabang,hs_salesoffice,hs_warehouse,hs_nomor_faktur,hs_customer,cust_nama,dlv_kode_delivery,dlv_nama,hs_tanggal,hs_kode_salesman,ar_status_giro,(ar_nilai_total-ar_nilai_sudah_cair)as sisa_ar, hlbm_no_lbm, hlbm_jenis_lbm,
d.tf_createuser,a.trfd_document ,d.tf_date,d.tf_recdate,b.trfd_document,c.tf_date
--select top 10 * 
from meka..har inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..mcust on ar_kode_cust=cust_kode and hs_customer=cust_kode
inner join meka..mdlvry on cust_kode_delivery=dlv_kode_delivery and cust_cabang=dlv_cabang
left join meka..ttrfdocd a on ar_nomor_bukti=a.trfd_faktur and hs_nomor_faktur=a.trfd_faktur
left join meka..ttrfdoch d on a.trfd_document=d.tf_document and d.tf_company=ar_company and d.tf_branch=ar_cabang and  
d.tf_company=hs_company and d.tf_branch=hs_cabang
left join meka..twrsh on hs_nomor_faktur=hlbm_nomor_dokumen
left join meka..expeditiond b on hs_nomor_faktur=b.trfd_faktur
left join meka..expeditionh c on b.trfd_document=c.tf_document
where ar_cabang between '01'  and '02'
and ar_status_giro='x' and ar_flag_lunas <>'y' 
--and hs_tanggal <= '2017-06-11'
union all
select  
hs_cabang,hs_salesoffice,hs_warehouse,hs_nomor_faktur,hs_customer,cust_nama,dlv_kode_delivery,dlv_nama,hs_tanggal,hs_kode_salesman,ar_status_giro,(ar_nilai_total-ar_nilai_sudah_cair)as sisa_ar, hlbm_no_lbm, hlbm_jenis_lbm,
d.tf_createuser,a.trfd_document ,d.tf_date,d.tf_recdate,b.trfd_document,c.tf_date
--select top 10 * 
from meka..har inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..mcust on ar_kode_cust=cust_kode and hs_customer=cust_kode
inner join meka..mdlvry on cust_kode_delivery=dlv_kode_delivery and cust_cabang=dlv_cabang
left join meka..ttrfdocd a on ar_nomor_bukti=a.trfd_faktur and hs_nomor_faktur=a.trfd_faktur
left join meka..ttrfdoch d on a.trfd_document=d.tf_document and d.tf_company=ar_company and d.tf_branch=ar_cabang and  
d.tf_company=hs_company and d.tf_branch=hs_cabang
left join meka..twrsh on hs_nomor_faktur=hlbm_nomor_dokumen
left join meka..expeditiond b on hs_nomor_faktur=b.trfd_faktur
left join meka..expeditionh c on b.trfd_document=c.tf_document
where ar_cabang between '30'  and '35'
and ar_status_giro='x' and ar_flag_lunas <>'y' 
--and hs_tanggal <= '2017-06-11'
order by hs_nomor_faktur asc