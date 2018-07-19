--select top 3 *
select hs_cabang,hs_salesoffice,hbrv_nomor_brv,dtt_nomor_terima,hbrv_jenis_brv,hbrv_tgl,dtt_nomor_faktur,cust_nama,hs_kode_salesman,(select top 1 ds_kode_product from meka..tslsd where dtt_nomor_faktur=ds_nomor_faktur) as prod,'', 
hbrv_nilai_total,(hs_nilai_disc4_after * 1.1) as nilai_faktur,dtt_nilai_dibayar,cust_klasifikasi_2
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv
inner join meka..ttrmtgd on dbrv_nomor_document=dtt_nomor_terima
inner join meka..tslsh on dtt_nomor_faktur=hs_nomor_faktur
and hbrv_company=hs_company
and hbrv_cabang=hs_cabang
inner join meka..mcust on hs_customer=cust_kode
where hbrv_tgl between '2015-01-01' and '2015-01-31' and hbrv_cabang ='30'


select paybranch,paysalesoffice,hbrv_nomor_brv,dtt_nomor_terima,hbrv_jenis_brv,hbrv_tgl,dtt_nomor_faktur,cust_nama,hs_kode_salesman,(select top 1 ds_kode_product from meka..tslsd where dtt_nomor_faktur=ds_nomor_faktur) as prod,paytipe, 
hbrv_nilai_total,payinvoiceamount,dtt_nilai_dibayar,cust_klasifikasi_2
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv
inner join meka..ttrmtgd on dbrv_nomor_document=dtt_nomor_terima
inner join meka..paypoint on dtt_nomor_faktur=payinvoiceno
and hbrv_company=paycompany
and hbrv_cabang=paybranch
inner join meka..tslsh on payinvoiceno=hs_nomor_faktur
and paycompany=hs_company
and paybranch=hs_cabang
and paysalesoffice=hs_salesoffice
inner join meka..mcust on hs_customer=cust_kode
where hbrv_tgl between '2015-01-01' and '2015-01-31' and hbrv_cabang between '03' and '06'
