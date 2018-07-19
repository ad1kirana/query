select top 1000 ar_cabang,ar_nomor_bukti,hs_qq,hs_nomor_ppn,ar_kode_cust,ar_tanggal_awal,ar_due_date,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar
from meka..har inner join meka..tslsh
on ar_company=hs_company and
ar_cabang=hs_cabang and
ar_nomor_bukti=hs_nomor_faktur and
ar_kode_cust=hs_customer

where ar_kode_cust='031600441c'
and ar_flag_lunas='n'

and 
and hs_tanggal between '2016-07-01' and '2016-07-31'
 
P-00001446 sama 031602280C

select top 1000 ar_cabang,ar_nomor_bukti,hs_qq,hs_nomor_ppn,ar_kode_cust,ar_tanggal_awal,ar_due_date,ar_nilai_dokumen,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar, hs_nilai_disc4_after
--select top 1000 * 
from meka..har inner join meka..tslsh
on ar_company=hs_company and
ar_cabang=hs_cabang and
ar_nomor_bukti=hs_nomor_faktur and
ar_kode_cust=hs_customer

where ar_kode_cust='54kur'
and hs_nilai_disc4_after='18272570'
18272570 tgl 29/07/2016
1488664 tgl 20/07/2016
2255684 tgl 30/07/2016

and hs_tanggal between '2016-07-01' and '2016-07-31'
 and ar_flag_lunas='n'

051300044C




031600475C