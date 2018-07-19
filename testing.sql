select 
rtrim(hs_cabang) as cabang,
rtrim(hs_salesoffice) as salesoffice,
rtrim(hbrv_nomor_brv) as brv,
rtrim(dg_nomor_giro) as nomor_giro,
rtrim(hbrv_jenis_brv) as jenis,
--convert(varchar(10),hbrv_tgl,103) as tanggal_brv,
rtrim(dg_nomor_faktur) as faktur,
--convert(varchar(10),hs_tanggal,103) as tanggal,
--convert(varchar(10),(ar_due_date+param_blockar),103) as blok_ar,
rtrim(cust_kode) as cust_code,
rtrim(cust_nama) as cust_desc,
rtrim(hs_kode_salesman) as sales,
rtrim((select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur))as prod, 
rtrim(type_jurnal) as jurnal,
--convert(float,hbrv_nilai_total) as total_brv,
--replace((1.1*hs_nilai_disc4_after),'.',',') as nilai_invoice,
--convert(float,dg_nilai_untuk_DOC) as nilai_doc,
rtrim(cust_klasifikasi_2) as klasifikasi2,
rtrim(hdt_penagih) as penagih,
rtrim(hdt_creator) as creator
from meka..tbrvh 
inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
inner join meka..tgrd on dpg_nomor_giro=dg_nomor_giro and hg_company=dg_company and hg_cabang=dg_cabang
left join meka..tslsh on dg_nomor_faktur=hs_nomor_faktur 
and hg_company=hs_company and hg_cabang=hs_cabang
inner join meka..msystem on hs_cabang=param_cabang
left join meka..har on hs_nomor_faktur=ar_nomor_bukti
left join meka..mcust on hs_customer=cust_kode
left join meka..tcolh on hg_no_refference=hdt_nomor_tagihan
and hg_company=hdt_company and hg_cabang=hdt_cabang
where 
hbrv_cabang = '02'
and hbrv_tgl between '2017-02-01' and '2017-02-28' 
and hdt_kode_sales between '0' and 'zz'
and hdt_penagih between '0' and 'zz'
and type_jurnal <>'tp'
union all
select 
rtrim(hs_cabang) as cabang,
rtrim(hs_salesoffice) as salesoffice,
rtrim(hbrv_nomor_brv) as brv,
rtrim(dtt_nomor_terima) as nomor_giro,
rtrim(hbrv_jenis_brv) as jenis,
--convert(varchar(10),hbrv_tgl,103) as tanggal_brv,
rtrim(dtt_nomor_faktur) as faktur,
--convert(varchar(10),hs_tanggal,103) as tanggal,
--convert(varchar(10),(ar_due_date+param_blockar),103) as blok_ar, 
rtrim(cust_kode) as cust_code,
rtrim(cust_nama) as cust_desc,
rtrim(hs_kode_salesman) as sales,
rtrim((select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur))as prod, 
rtrim(dtt_cara_bayar) as jurnal,
--convert(float,hbrv_nilai_total) as total_brv,
--replace((1.1*hs_nilai_disc4_after),'.',',') as nilai_invoice,
--convert(float,dtt_nilai_dibayar) as nilai_doc,
rtrim(cust_klasifikasi_2) as klasifikasi2,
rtrim(hdt_penagih) as penagih,
rtrim(hdt_creator) as creator
from meka..tbrvh 
inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..ttrmtgh on dbrv_nomor_document=htt_nomor_terima and hbrv_company=htt_company and hbrv_cabang=htt_cabang
inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima and dbrv_nomor_document=dtt_nomor_terima
inner join meka..tslsh on dtt_nomor_faktur=hs_nomor_faktur
inner join meka..msystem on hs_cabang=param_cabang
inner join meka..har on hs_nomor_faktur=ar_nomor_bukti
inner join meka..mcust on hs_customer=cust_kode
inner join meka..tcolh on htt_nomor_tagihan=hdt_nomor_tagihan
where 
hbrv_cabang = '02'
and hbrv_tgl between '2017-02-01' and '2017-02-28' 
and hdt_kode_sales between '0' and 'zz'
and hdt_penagih between '0' and 'zz'