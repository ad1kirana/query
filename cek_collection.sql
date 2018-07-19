select top 10 * from meka..tcolh where hdt_nomor_tagihan='010113003524TH'

select * from meka..tcolh where hdt_tanggal > '2012-12-31' and hdt_area=''
is null
select distinct ddt_kode_cust,ddt_nomor_document,ar_status_giro,ar_tanggal_awal from (meka..tcolh inner join meka..tcold on hdt_nomor_tagihan = ddt_nomor_tagihan)
 inner join meka..har on ddt_nomor_ar=ar_nomor_ar
and ddt_nomor_document=ar_nomor_bukti
where hdt_flag_penerimaan='n'
and ar_status_giro ='n'
and ar_flag_lunas ='n'
and hdt_cabang='01'
order by ar_status_giro desc

select distinct ddt_kode_cust,ddt_nomor_document,ar_status_giro,ar_tanggal_awal from (meka..tcolh inner join meka..tcold on hdt_nomor_tagihan = ddt_nomor_tagihan)
 inner join meka..har on ddt_nomor_ar=ar_nomor_ar
and ddt_nomor_document=ar_nomor_bukti
where ddt_nomor_tagihan='010113003524TH'
select top 3 * from meka..har

select top 1000 ddt_nomor_tagihan,ddt_kode_cust,ddt_nomor_document,ar_status_giro
--select top 1000 *
from meka..tcold inner join meka..har on ddt_nomor_ar=ar_nomor_ar
and ddt_nomor_document=ar_nomor_bukti
where ddt_nomor_tagihan='010113003505th'
AND DDT_KODE_Cust='04KUMO'
order by ar_status_giro desc
and hdt_cabang='01'
 hdt_flag_penerimaan='n'
and 

select ddt_kode_cust,ddt_nomor_document,ar_status_giro,ar_tanggal_awal,hdt_flag_penerimaan from (meka..tcolh inner join meka..tcold on hdt_nomor_tagihan = ddt_nomor_tagihan)
 inner join meka..har on ddt_nomor_ar=ar_nomor_ar
and ddt_nomor_document=ar_nomor_bukti
where ddt_nomor_document='010115009648fp'
and hdt_flag_penerimaan<>'y'

select top 10 * from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan = ddt_nomor_tagihan where ddt_nomor_document='010115009648fp'

select top 10 * from meka..t