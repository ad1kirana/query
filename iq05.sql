select top 1000 ar_kode_cust,'',ar_nomor_bukti,'',ar_tanggal_awal,ar_due_date_adjust,ar_due_date,ar_tgl_bayar_akhir, ar_nilai_dokumen from meka..har where ar_tanggal_awal>='2015-01-07' and 
ar_flag_lunas='y'
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-01-31'
and ar_cabang='01'
and ar_salesman='1sus'
order by ar_kode_cust asc

select top 10 * from meka..hkar where kar_='010115023110FP'

select top 10 * from meka..har where ar_nomor_bukti='010115023110FP'
select top 10 * from meka..har where ar_nomor_bukti='010115013369FP'

select top 1000 * from meka..har inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where ar_tanggal_awal>='2015-01-07' and 
ar_flag_lunas='y'
and ar_tgl_bayar_akhir between '2016-01-01' and '2016-01-31'
and ar_cabang='01'
and ar_salesman='1sus'
and ar_kode_cust='03ap'
order by ar_kode_cust asc