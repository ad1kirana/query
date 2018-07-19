--select top 3 * 
--paypoint non cash
select paybranch,paysalesoffice,paymentno,'','',paydate,payinvoiceno,'','',
(select top 1 ds_kode_product from meka..tslsd where payinvoiceno=ds_nomor_faktur) as prod,
paytipe,'',payinvoiceamount,payamount
from meka..paypoint where paydate  between '2015-01-01' and '2015-01-31' and paytipe ='cash'

--giro
select paybranch,paysalesoffice,hbrv_nomor_brv,hbrv_jenis_brv,dg_nomor_giro,hbrv_tgl,dg_nomor_faktur,cust_nama,'',
(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur)as prod,
paytipe,hbrv_nilai_total,hg_nilai_ar,dg_nilai_untuk_DOC,cust_klasifikasi_2
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
	inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
		inner join meka..tgrh on hbrv_company=hg_company
			and hbrv_cabang=hg_cabang and dpg_nomor_giro=hg_nomor_giro
				inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro and dpg_nomor_giro=dg_nomor_giro
					inner join meka..mcust on hg_kode_cust=cust_kode
					inner join meka..paypoint on hbrv_company=paycompany
						and hg_company=paycompany and hbrv_cabang=paybranch and hg_cabang=paybranch
						and dg_nomor_faktur=payinvoiceno
						where 
						hbrv_company<>'20' and hbrv_tgl  between '2015-01-01' and '2015-01-31'
						and dg_nomor_faktur <>''
						order by dg_nomor_faktur asc

--brc
select --paybranch,paysalesoffice,hbrv_nomor_brv,dcc_nomor,hbrv_jenis_brv,hbrv_tgl,paydate,payinvoiceno,paydate,(paydate+45)as due_date,cust_nama,paytipe,'','','','',payinvoiceamount,payamount,cust_klasifikasi_2,'CARfix Cash',''
paybranch,paysalesoffice,hbrv_nomor_brv,dpcc_nomor,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,paydate,(paydate+45)as due_date, cust_kode,cust_nama,paytipe,'',
--(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod,
type_jurnal,hbrv_nilai_total,payinvoiceamount,dg_nilai_untuk_DOC,cust_klasifikasi_2,paytipe,''
--select sum(dg_nilai_untuk_DOC)
--select * 
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tccch on dbrv_nomor_document=hpcc_nomor
and hbrv_company=hpcc_company
and hbrv_cabang=hpcc_cabang
inner join meka..tccd on dbrv_nomor_document=dpcc_nomor
left join meka..paypoint on dg_nomor_faktur=payinvoiceno
and hpcc_company=paycompany
and hpcc_cabang=paybranch
inner join meka..tslsh on payinvoiceno=hs_nomor_faktur
and paycompany=hs_company
and paybranch=hs_cabang
and paysalesoffice=hs_salesoffice
inner join meka..mcust on hs_customer=cust_kode
where 
hbrv_cabang between '03' and '08' 
and hbrv_tgl  between '2016-4-1' and '2016-4-30'
and type_jurnal <> 'fp'