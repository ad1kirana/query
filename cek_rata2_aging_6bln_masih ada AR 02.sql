select 
rtrim(ar_cabang) as cabang,
rtrim(ar_kode_cust) as kode_cust,
rtrim(cust_nama) as nama_cust,
rtrim(cust_alamat_1) as alamat1,
rtrim(cust_kota) as kota,
sum(convert(float,ar_nilai_total)) as nilai_total,
sum(convert(float,ar_nilai_total-AR_Nilai_Sudah_Cair)) as sisa,
AVG(t2.aging) as rata2_aging_6bln
from 

(select b.ar_cabang as cab, 
b.ar_kode_cust as cust, 
b.ar_nomor_bukti as inv,
DATEDIFF(DAY,b.ar_tanggal_awal, b.AR_Tgl_Bayar_Akhir) as aging 
from 

(select a.ar_cabang as cab, 
a.ar_kode_cust as cust, 
DATEADD(MONTH, -6, max(a.ar_tanggal_awal)) as tgl_6_bulan ,
MAX(a.ar_tanggal_awal) as max_tgl
from MEKA..HAR a
where a.AR_Cabang between '01' and '35' and
a.AR_Flag_Lunas = 'y' 
AND  AR_Tgl_Bayar_Akhir <= '2018/06/30'
group by a.AR_Cabang, a.AR_Kode_Cust
) t1 

inner join
MEKA..HAR b on t1.cab=b.AR_Cabang and t1.cust=b.AR_Kode_Cust
where b.AR_Cabang between '01' and '35' and 
b.AR_Flag_Lunas = 'y' and 
b.AR_Tanggal_Awal between t1.tgl_6_bulan and t1.max_tgl 
) t2 

right join meka..har on AR_Cabang=t2.cab and AR_Kode_Cust=t2.cust
inner join meka..mcust on
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode
where 
--ar_flag_lunas <> 'y' and 
ar_cabang between '01' and '35'
--and ar_tanggal_awal between '2018/06/01' and '2018/06/30'
and ar_kode_cust between '0' and 'ZZ'
group by AR_Cabang, AR_Kode_Cust, CUST_Nama, CUST_Alamat_1, CUST_Kota
order by AR_Cabang asc, ar_kode_cust asc

--SELECT TOP 10 * FROM MEKA..HAR WHERE AR_Kode_Cust='G0800032' AND AR_Flag_Lunas <>'Y'