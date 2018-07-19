select ar_cabang,ar_nomor_bukti,ar_kode_cust,cust_cabang,ar_tanggal_awal,ar_due_date,ar_nilai_dokumen,ar_nilai_total,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar, ar_nilai_dibayar
from meka..har inner join meka..mcust on ar_kode_cust=cust_kode
where ar_flag_lunas ='n' and ar_cabang between '03' and '07' and ar_cabang = cust_cabang

