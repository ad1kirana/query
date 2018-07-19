select top 10000 hdt_nomor_tagihan,hdt_tanggal, hdt_penagih,hdt_flag_penerimaan, ddt_nomor_document, ddt_nilai_document,ddt_nilai_tagihan,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar, ar_status_giro
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan
inner join meka..har on ddt_nomor_document=ar_nomor_bukti
where 
hdt_creator='wikan'
and hdt_flag_penerimaan ='N'
and hdt_createdate < '2016-01-01'
and ar_flag_lunas='N'
and ar_status_giro='y'
--select top 1000 * from meka..tcolh where hdt_penagih like 'wk' and hdt_flag_penerimaan <>'N'

select top 10000 *
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan
where hdt_penagih like 'wk' and hdt_flag_penerimaan ='N'
select top 3 * from tcold

--update meka..tcolh set hdt_flag_penerimaan='Y' from meka..tcolh where hdt_penagih like 'wk' and hdt_flag_penerimaan <>'N'

select top 10000 hdt_nomor_tagihan,hdt_tanggal, hdt_penagih,hdt_flag_penerimaan, ddt_nomor_document, ddt_nilai_document,ddt_nilai_tagihan,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar, ar_status_giro
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan
inner join meka..har on ddt_nomor_document=ar_nomor_bukti
where ddt_nomor_document ='010115032236FP'


