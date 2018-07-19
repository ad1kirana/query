select 
rtrim(paybranch) as cabang,
rtrim(paysalesoffice) as salesoffice,
rtrim(hbrv_nomor_brv) as brv,
rtrim(dg_nomor_giro) as nomor_giro,
rtrim(hbrv_jenis_brv) as jenis,
convert(varchar(10),hbrv_tgl,103) as tanggal_brv,
rtrim(dg_nomor_faktur) as faktur,
convert(varchar(10),paydate,103) as tanggal,
convert(varchar(10),(paydate+45),103) as blok_ar, 
rtrim(cust_kode) as cust_code,
rtrim(cust_nama) as cust_desc,
rtrim(cust_kota) as cust_city,
rtrim(paytipe) as sales,
'',
rtrim(type_jurnal) as jurnal,
convert(float,hbrv_nilai_total) as total_brv,
replace(payinvoiceamount,'.',',') as nilai_invoice,
convert(float,dg_nilai_untuk_DOC) as nilai_doc,
rtrim(cust_klasifikasi_2) as klasifikasi2,
hdt_penagih as penagih,
rtrim(hdt_creator) as creator
from meka..tbrvh 
inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro and dg_company=hg_company and dg_cabang=hg_cabang
left join meka..paypoint on dg_nomor_faktur=payinvoiceno and hg_company=paycompany and hg_cabang=paybranch
inner join meka..mcust on hg_kode_cust=cust_kode and hg_company=cust_companycode and hg_cabang=cust_cabang
left join meka..tcolh on hg_no_refference=hdt_nomor_tagihan and hdt_company=hg_company and hdt_cabang=hg_cabang
where 
hbrv_cabang between '03' and '08'
and paysalesoffice between '03' and '14'
and hbrv_tgl  between '2018/06/01' and '2018/06/29'
and type_jurnal <> 'tp'

union all

select 
rtrim(paybranch) as cabang,
rtrim(paysalesoffice) as salesoffice,
rtrim(hbrv_nomor_brv) as brv,
rtrim(dtt_nomor_terima) as nomor_giro,
rtrim(hbrv_jenis_brv) as jenis,
convert(varchar(10),hbrv_tgl,103) as tanggal_brv,
rtrim(dtt_nomor_faktur) as faktur,
convert(varchar(10),paydate,103) as tanggal,
convert(varchar(10),(paydate+45),103) as blok_ar, 
rtrim(cust_kode) as cust_code,
rtrim(cust_nama) as cust_desc,
rtrim(cust_kota) as cust_city,
rtrim(paytipe) as sales,
'',
rtrim(dtt_cara_bayar) as jurnal,
convert(float,hbrv_nilai_total) as total_brv,
replace(payinvoiceamount,'.',',') as nilai_invoice,
convert(float,dtt_nilai_dibayar) as nilai_doc,
rtrim(cust_klasifikasi_2) as klasifikasi2,
hdt_penagih as penagih,
rtrim(hdt_creator) as creator
from 
meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..ttrmtgh on dbrv_nomor_document=htt_nomor_terima and hbrv_company=htt_company and hbrv_cabang=htt_cabang
inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima and dbrv_nomor_document=dtt_nomor_terima
inner join meka..paypoint on dtt_nomor_faktur=payinvoiceno
inner join meka..mcust on htt_customer=cust_kode
left join meka..tcolh on htt_nomor_tagihan=hdt_nomor_tagihan and hdt_company=htt_company and hdt_cabang=htt_cabang
where 
hbrv_cabang between  '03' and '08'
and paysalesoffice between '03' and '14'
and hbrv_tgl between '2018/06/01' and '2018/06/29'

union all

select 
rtrim(paybranch) as cabang,
rtrim(paysalesoffice) as salesoffice,
'',
'',
'',
convert(varchar(10),paydate,103) as tanggal_brv,
rtrim(payinvoiceno) as faktur,
convert(varchar(10),paydate,103) as tanggal,
convert(varchar(10),(paydate+45),103) as block_ar,
rtrim(cust_kode) as cust_code,
rtrim(cust_nama) as cust_desc,
rtrim(cust_kota) as cust_city,
rtrim(paytipe) as sales,
'',
'',
'',
replace(payinvoiceamount,'.',',') as nilai_invoice,
convert(float,payamount) as nilai_doc,
rtrim(cust_klasifikasi_2) as klasifikasi2,
'CARfix Cash',
''
from meka..paypoint 
inner join meka..tslsh on payinvoiceno=hs_nomor_faktur and paycompany=hs_company and paybranch=hs_cabang and paysalesoffice=hs_salesoffice
inner join meka..mcust on hs_customer=cust_kode
where
hs_cabang between  '03' and '08'
and paysalesoffice between '03' and '14'
and paydate between '2018/06/01' and '2018/06/29'   
and paytipe='cash'

union all 

select 
rtrim(paybranch) as branch,
rtrim(paysalesoffice) as salesoffice,
rtrim(hbrv_nomor_brv) as brv,
rtrim(dpcc_nomor) nomor_giro,
rtrim(hbrv_jenis_brv) as jenis,
convert(varchar(10),hbrv_tgl,103) as tanggal_brv,
rtrim(dg_nomor_faktur) as faktur,
convert(varchar(10),paydate,103) as tanggal,
convert(varchar(10),(paydate+45),103) as due_date, 
rtrim(cust_kode) as cust_code,
rtrim(cust_nama) as cust_nama,
rtrim(cust_kota) as cust_city,
rtrim(paytipe) as sales,
'',
rtrim(type_jurnal) as jurnal,
convert(float,hbrv_nilai_total) as total_brv,
replace(payinvoiceamount,'.',',') as nilai_invoice,
convert(float,dg_nilai_untuk_DOC) as nilai_doc,
rtrim(cust_klasifikasi_2) as klasifikasi2,
rtrim(paytipe) as penagih,
''
from meka..tbrvh 
inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
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
hbrv_cabang between  '03' and '08'
and paysalesoffice between '03' and '14'
and hbrv_tgl  between '2018/06/01' and '2018/06/29'
and type_jurnal <> 'fp'