--belum lunas untuk invoice s/d tgl_awal
select  ar_cabang,ar_nomor_bukti,ar_tanggal_awal,ar_tgl_bayar_akhir,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur)as prod
from meka..har
where ar_flag_lunas='n'
and ar_cabang <> '20'
and ar_tanggal_awal < '2016-01-01'


--lunas (sesuai range)
select  ar_cabang,ar_nomor_bukti,ar_tanggal_awal,ar_tgl_bayar_akhir,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur)as prod
from meka..har
where ar_flag_lunas='y'
and ar_cabang <> '20'
and ar_salesman like '1%'
and ar_tanggal_awal >= '2016-01-01'
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-01-31'

--IQ05
select  ar_kode_cust,cust_nama,cust_alamat_3,rtrim(ar_nomor_bukti) as invoice,ar_cash_or_credit,ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,
(ar_tgl_bayar_akhir - ar_due_date) as otd,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur )as prod,ar_salesman
from meka..har inner join meka..mcust on ar_kode_cust=cust_kode
where ar_flag_lunas='y'
and ar_cabang <> '20'
and ar_salesman like 'rint'
and ar_tanggal_awal >= '2016-01-01'
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-12-31'
order by ar_kode_cust asc

select top 10 * from meka..har


select top 10 * from meka..har