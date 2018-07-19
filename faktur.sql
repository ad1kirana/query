select  
rtrim(ar_cabang) as cab,
rtrim(tf_recuser) as recieve,
rtrim(trfd_document) as td,
rtrim(ar_nomor_bukti) as inv,
rtrim(ar_status_giro) as sts,
convert(varchar(10),ar_tanggal_awal,103) as tgl,
rtrim(ar_salesman) as sales,
rtrim(cust_kode) as cust,
rtrim(cust_nama) as nama,
ar_nilai_dokumen as amount,
(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,
ar_nilai_dibayar as giro,
rtrim(cust_kode_area) as area

from
(select t.tag as tagihan ,t.cus as cust, r.doc1 as doc, r.maxtime as maxi from 
	(select ddt_nomor_document as doc1, max(HDT_CreateDate) as maxtime
		from MEKA..TCOLD
		inner join MEKA..TCOLH on ddt_nomor_tagihan=hdt_nomor_tagihan
		group by ddt_nomor_document)r
	inner join 
	(select HDT_Nomor_Tagihan as tag,DDT_Kode_Cust as cus, ddt_nomor_document as doc2, HDT_CreateDate as date2
		from MEKA..TCOLD
		inner join MEKA..TCOLH on ddt_nomor_tagihan=hdt_nomor_tagihan)t
		on t.doc2=r.doc1 and r.maxtime=t.date2
		group by t.tag,t.cus, r.doc1, r.maxtime) s
right join ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) 
	inner join meka..ttrfdoch on tf_document=trfd_document and tf_company=ar_company and tf_branch=ar_cabang ) 
	on trfd_faktur = s.doc and AR_Kode_Cust=s.cust
inner join meka..mcust on ar_kode_cust=cust_kode and ar_company=cust_companycode
where --ar_status_giro= 'N' and 
ar_cabang between '01' and '01' 
and ar_cabang not between '03' and '08' 
and ar_flag_lunas='n'
order by s.doc


--
select  
rtrim(ar_cabang) as cab,
rtrim(tf_recuser) as recieve,
rtrim(trfd_document) as td,
rtrim(ar_nomor_bukti) as inv,
rtrim(ar_status_giro) as sts,
convert(varchar(10),ar_tanggal_awal,103) as tgl,
rtrim(ar_salesman) as sales,
rtrim(cust_kode) as cust,
rtrim(cust_nama) as nama,
ar_nilai_dokumen as amount,
(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,
ar_nilai_dibayar as giro,
rtrim(cust_kode_area) as area

from

	(select ddt_nomor_document as doc1,ddt_kode_cust as cust, max(HDT_CreateDate) as maxtime
		from MEKA..TCOLD
		inner join MEKA..TCOLH on ddt_nomor_tagihan=hdt_nomor_tagihan
		group by ddt_nomor_document,ddt_kode_cust)r
	
inner join ((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) 
	inner join meka..ttrfdoch on tf_document=trfd_document and tf_company=ar_company and tf_branch=ar_cabang ) 
	on trfd_faktur = r.doc1 and AR_Kode_Cust=r.cust
inner join meka..mcust on ar_kode_cust=cust_kode and ar_company=cust_companycode
where ar_status_giro= 'N' and 
ar_cabang between '01' and '01' 
and ar_cabang not between '03' and '08' 
and ar_flag_lunas='n'
order by recieve, cab, cust,td,inv

--

select  
rtrim(ar_cabang) as cab,
rtrim(tf_recuser) as recieve,
rtrim(trfd_document) as td,
rtrim(ar_nomor_bukti) as inv,
rtrim(ar_status_giro) as sts,
convert(varchar(10),ar_tanggal_awal,103) as tgl,
rtrim(ar_salesman) as sales,
rtrim(cust_kode) as cust,
rtrim(cust_nama) as nama,
ar_nilai_dokumen as amount,
(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar,
ar_nilai_dibayar as giro,
rtrim(cust_kode_area) as area

from
(select ddt_nomor_document as doc1,ddt_kode_cust as cust, max(HDT_CreateDate) as maxtime
		from MEKA..TCOLD
		inner join MEKA..TCOLH on ddt_nomor_tagihan=hdt_nomor_tagihan
		group by ddt_nomor_document,ddt_kode_cust)r
	inner join 
	
 (((meka..ttrfdocd left join meka..har on trfd_faktur=ar_nomor_bukti) 
	inner join meka..ttrfdoch on tf_document=trfd_document and tf_company=ar_company and tf_branch=ar_cabang ) 
	
inner join meka..mcust on ar_kode_cust=cust_kode and ar_company=cust_companycode)

		on trfd_faktur = r.doc1 and AR_Kode_Cust=r.cust
where --ar_status_giro= 'N' and 
ar_cabang between '01' and '01' 
and ar_cabang not between '03' and '08' 
and ar_flag_lunas='n'
order by recieve, cab, cust,td,inv
