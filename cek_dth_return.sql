select top 10 * from meka..tcolh where hdt_nomor_Tagihan='010116000392th'
select top 10 * from meka..tcolh where hdt_postuser='darmawan'
select top 1000 * from meka..tcolh where hdt_postuser<>hdt_creator and hdt_flag_penerimaan='y' and hdt_tanggal > '2016-02-18'

select top 100 * from meka..tcold inner join meka..har on ddt_nomor_ar=ar_nomor_ar
and ddt_nomor_document=ar_nomor_bukti where ddt_nomor_Tagihan='010116013417th'

select top 10 * from meka..har


select top 1000 * from meka..tcolh where hdt_creator='wahyu' and hdt_postuser<>'wahyu' and hdt_flag_penerimaan='y' and hdt_tanggal > '2016-02-18'

