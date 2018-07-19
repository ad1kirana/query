
select hbrv_nomor_brv,dg_nomor_giro,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,dg_nilai_untuk_DOC,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur)as prod, type_jurnal,
ar_due_date,code,ar_salesman
--select sum(dg_nilai_untuk_DOC)
--select top 10 *
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
--and hpg_company=hg_company and hpg_cabang=hg_cabang
inner join meka..tgrd on dpg_nomor_giro=dg_nomor_giro and hg_company=dg_company and hg_cabang=dg_cabang
left join meka..har on dg_nomor_faktur=ar_nomor_bukti
left join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
left join meka..mtop a on hs_golongan_beli=code AND hs_company=companycode
where year(hbrv_tgl)=2016 and month(hbrv_tgl)=02
and hbrv_cabang='01'
and type_jurnal <>'tp'

--select top 1000 * from meka..tslsh where year(hs_tanggal)=2016 and month(hs_tanggal)=2 and hs_cabang='01'
--select top 10 from meka..mtop

select hbrv_nomor_brv,dtt_nomor_terima,hbrv_jenis_brv,hbrv_tgl,dtt_nomor_faktur,dtt_nilai_dibayar,
(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod, dtt_cara_bayar,ar_due_date,code,hs_kode_salesman
--select sum(dtt_nilai_dibayar)
--select * 
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..ttrmtgh on dbrv_nomor_document=htt_nomor_terima and hbrv_company=htt_company and hbrv_cabang=htt_cabang
inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima and dbrv_nomor_document=dtt_nomor_terima
inner join meka..tslsh on dtt_nomor_faktur=hs_nomor_faktur
inner join meka..mcust on hs_customer=cust_kode
left join meka..har on hs_nomor_faktur=ar_nomor_bukti
left join meka..mtop a on hs_golongan_beli=code AND hs_company=companycode

where 
year(hbrv_tgl)=2016 and month(hbrv_tgl)=02
and hbrv_cabang='01'

--select top 10 * from meka..ttrmtgd