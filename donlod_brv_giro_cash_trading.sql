--GIRO

select hs_cabang,hs_salesoffice,hbrv_nomor_brv,dg_nomor_giro,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,cust_kode,cust_nama,hs_kode_salesman,
(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod, type_jurnal,
hbrv_nilai_total,(1.1*hs_nilai_disc4_after) nilai_invoice,dg_nilai_untuk_DOC,cust_klasifikasi_2,hdt_penagih,hdt_creator
--select sum(dg_nilai_untuk_DOC)
--select *
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
--and hpg_company=hg_company and hpg_cabang=hg_cabang
inner join meka..tgrd on dpg_nomor_giro=dg_nomor_giro and hg_company=dg_company and hg_cabang=dg_cabang
left join meka..tslsh on dg_nomor_faktur=hs_nomor_faktur 
--and hbrv_company=hs_company and hbrv_cabang=hs_company 
--and hpg_company=hs_company and hpg_cabang=hs_cabang
and hg_company=hs_company and hg_cabang=hs_cabang
left join meka..mcust on hs_customer=cust_kode
left join meka..tcolh on hg_no_refference=hdt_nomor_tagihan
and hg_company=hdt_company and hg_cabang=hdt_cabang
--and hs_company=hdt_company and hs_cabang=hdt_cabang
where 
hbrv_cabang='01' and hbrv_tgl  between '2015-02-01' and '2015-02-28' 
and type_jurnal <>'tp'



--PK
select hs_cabang,hs_salesoffice,hbrv_nomor_brv,dtt_nomor_terima,hbrv_jenis_brv,hbrv_tgl,dtt_nomor_faktur,cust_kode,cust_nama,hs_kode_salesman,
(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod, dtt_cara_bayar,
hbrv_nilai_total,(1.1*hs_nilai_disc4_after) nilai_invoice,dtt_nilai_dibayar,cust_klasifikasi_2,hdt_penagih,hdt_creator
--select sum(dtt_nilai_dibayar)
--select * 
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..ttrmtgh on dbrv_nomor_document=htt_nomor_terima and hbrv_company=htt_company and hbrv_cabang=htt_cabang
inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima and dbrv_nomor_document=dtt_nomor_terima
inner join meka..tslsh on dtt_nomor_faktur=hs_nomor_faktur
inner join meka..mcust on hs_customer=cust_kode
inner join meka..tcolh on htt_nomor_tagihan=hdt_nomor_tagihan
--and hdt_company=htt_company and hdt_cabang=htt_cabang
where 
hbrv_cabang='01' and hbrv_tgl  between '2015-02-01' and '2015-02-28' 
--and hbrv_jenis_brv='c'

