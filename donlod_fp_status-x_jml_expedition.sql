select distinct
rtrim(b.hs_cabang) as cabang,
rtrim(b.hs_salesoffice) as so,
rtrim(b.hs_warehouse) as wh,
rtrim(b.hs_nomor_faktur) as nomor_faktur,
rtrim(b.hs_customer) as cust_code,
rtrim(cust_nama) as customer,
dlv_kode_delivery,
rtrim(dlv_nama) as delivery_nama,
b.HS_Tanggal,
rtrim(b.hs_kode_salesman) as kode_salesman,
rtrim(a.ar_status_giro) as status_giro,
(a.ar_nilai_total-a.ar_nilai_sudah_cair)as sisa_ar, 
(select top 1 rtrim(hlbm_no_lbm) 
from meka..twrsh 
where hlbm_nomor_dokumen=b.hs_nomor_faktur) as no_lbm,
rtrim(hlbm_jenis_lbm) as jenis_lbm,
rtrim(d.tf_createuser) as creatuser,
(select top 1 rtrim(trfd_document)
from meka..ttrfdocd where trfd_faktur=a.ar_nomor_bukti
and trfd_faktur=b.hs_nomor_faktur) as document ,
d.tf_date,
case when d.tf_recdate='01/01/1901' then null else d.tf_recdate end,
(select top 1 rtrim(x.tf_document) from meka..expeditionh x 
right join meka..expeditiond y on y.trfd_document=x.tf_document
right join meka..tslsh z on z.hs_nomor_faktur=y.trfd_faktur
where y.trfd_faktur=b.hs_nomor_faktur
and x.tf_date=t.maxdate) as tf,
(t.maxdate) as max,
(select count(trfd_document) from meka..expeditiond 
where trfd_faktur=b.hs_nomor_faktur) as jml
from 
(select ar_nomor_bukti,max(tf_date) as maxdate
from 
meka..har inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
left join meka..expeditiond on ar_nomor_bukti=trfd_faktur
left join meka..expeditionh on trfd_document=tf_document
group by ar_nomor_bukti) t
inner join meka..har a on a.ar_nomor_bukti=t.ar_nomor_bukti
inner join meka..tslsh b on b.hs_nomor_faktur=a.ar_nomor_bukti
inner join meka..mcust on a.ar_kode_cust=cust_kode and b.hs_customer=cust_kode
inner join meka..mdlvry on cust_kode_delivery=dlv_kode_delivery and cust_cabang=dlv_cabang
left join meka..ttrfdocd c on a.ar_nomor_bukti=c.trfd_faktur and b.hs_nomor_faktur=c.trfd_faktur
left join meka..ttrfdoch d on c.trfd_document=d.tf_document and d.tf_company=a.ar_company and d.tf_branch=a.ar_cabang and  
d.tf_company=b.hs_company and d.tf_branch=b.hs_cabang
left join meka..twrsh on b.hs_nomor_faktur=hlbm_nomor_dokumen
where a.ar_cabang between '01'  and '01'
and b.hs_salesoffice between '01' and '01'
and a.ar_status_giro='x' and a.ar_flag_lunas <>'y'
and b.hs_tanggal <= '2017/10/31'
order by cabang,so,wh,nomor_faktur asc