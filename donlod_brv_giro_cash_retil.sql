--GIRO

select paybranch,paysalesoffice,hbrv_nomor_brv,dg_nomor_giro,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,cust_kode,cust_nama,paytipe,'',
--(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod,
 type_jurnal,hbrv_nilai_total,payinvoiceamount,dg_nilai_untuk_DOC,cust_klasifikasi_2,hdt_penagih,hdt_creator
--select sum(dg_nilai_untuk_DOC)
--select *
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro and dg_company=hg_company and dg_cabang=hg_cabang
left join meka..paypoint on dg_nomor_faktur=payinvoiceno and hg_company=paycompany and hg_cabang=paybranch
inner join meka..mcust on hg_kode_cust=cust_kode and hg_company=cust_companycode and hg_cabang=cust_cabang
left join meka..tcolh on hg_no_refference=hdt_nomor_tagihan and hdt_company=hg_company and hdt_cabang=hg_cabang
where 
--hbrv_cabang='05'
hbrv_cabang between '03' and '06' 
and hbrv_tgl  between '2015-02-01' and '2015-02-28' 
and type_jurnal <> 'tp'

--and hg_company=dg_company and hg_cabang=dg_cabang
--and dg_company=hg_company and dg_cabang=hg_cabang

--select top 10 * from meka..mcust

--PK
select paybranch,paysalesoffice,hbrv_nomor_brv,dtt_nomor_terima,hbrv_jenis_brv,hbrv_tgl,dtt_nomor_faktur,cust_kode,cust_nama,paytipe,'',
--(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod, 
dtt_cara_bayar,hbrv_nilai_total,payinvoiceamount,dtt_nilai_dibayar,cust_klasifikasi_2,hdt_penagih,hdt_creator
--select sum(dtt_nilai_dibayar)
--select * 
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..ttrmtgh on dbrv_nomor_document=htt_nomor_terima and hbrv_company=htt_company and hbrv_cabang=htt_cabang
inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima and dbrv_nomor_document=dtt_nomor_terima
inner join meka..paypoint on dtt_nomor_faktur=payinvoiceno
inner join meka..mcust on htt_customer=cust_kode
left join meka..tcolh on htt_nomor_tagihan=hdt_nomor_tagihan and hdt_company=htt_company and hdt_cabang=htt_cabang
where 
--hbrv_cabang='06'
hbrv_cabang between '03' and '06'
and hbrv_tgl  between '2015-02-01' and '2015-02-28'
--and hbrv_jenis_brv='c'

--cash

select paybranch,paysalesoffice,'','','',paydate,payinvoiceno,cust_nama,paytipe,'','','',payinvoiceamount,payamount,cust_klasifikasi_2,'CARfix Cash',''
from meka..paypoint inner join meka..tslsh on payinvoiceno=hs_nomor_faktur and paycompany=hs_company and paybranch=hs_cabang and paysalesoffice=hs_salesoffice
inner join meka..mcust on hs_customer=cust_kode
where paydate between '2015-02-01' and '2015-02-28'
and paytipe='cash'