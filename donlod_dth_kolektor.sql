select hdt_cabang,hdt_nomor_tagihan,hdt_tanggal,hdt_penagih,ddt_kode_cust,ddt_nomor_document,ddt_due_date,
ddt_nilai_document,ddt_nilai_tagihan

 from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan
--inner join meka..har on ddt_nomor_ar=ar_nomor_ar and ddt_nomor_document=ar_dokumen 
inner join meka..mslsmn on hdt_penagih=sales_kode where sales_supervisor='drj'
and hdt_tanggal between '2016-04-01' and '2016-04-30'
select top 10 * from meka..tcold