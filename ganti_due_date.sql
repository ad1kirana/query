select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218011144fp' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218011144fp' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218008750FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218008787FP' union all

select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218008303FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218007256FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218007642FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010218007665FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal,AR_Due_Date from meka..har where ar_nomor_bukti='010318007711FP' 


update meka..har set ar_due_date='2018-06-22 00:00:00.000', ar_due_date_adjust='2018-06-12 00:00:00.000' from meka..har where ar_nomor_bukti='010218011144FP'
update meka..har set ar_due_date='2018-06-12 00:00:00.000', ar_due_date_adjust='2018-06-12 00:00:00.000' from meka..har where ar_nomor_bukti='010218011144FP'

update meka..tslsh set hs_due_date='2018-06-12 00:00:00.000', hs_due_date_delivery='2018-06-12 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010218011144FP'
update meka..tslsh set hs_due_date='2018-06-12 00:00:00.000', hs_due_date_delivery='2018-06-12 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010218011144FP'


select top 10 * from meka..tslsh where hs_nomor_faktur='010318006352FP'
--update meka..tslsh set hs_due_date='2018-06-22 00:00:00.000', hs_due_date_delivery='2018-06-22 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010318007711FP'
--update meka..tslsh set hs_due_date='2018-02-20 00:00:00.000', hs_due_date_delivery='2018-02-20 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010218003083FP'
--update meka..tslsh set hs_due_date='2018-02-21 00:00:00.000', hs_due_date_delivery='2016-07-30 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010218003179FP'
--update meka..tslsh set hs_due_date='2016-07-30 00:00:00.000', hs_due_date_delivery='2016-07-30 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010116023321FP'
--update meka..tslsh set hs_due_date='2016-07-30 00:00:00.000', hs_due_date_delivery='2016-07-30 00:00:00.000' from meka..tslsh where hs_nomor_faktur='010116023322FP'
select top 10 * from meka..har where ar_nomor_bukti='010318005256FP' 
--update meka..har set ar_due_date='2018-06-22 00:00:00.000' from meka..har where ar_nomor_bukti='010318007711FP' 

select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal from meka..har where ar_nomor_bukti='010218003838FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal from meka..har where ar_nomor_bukti='010218004151FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal from meka..har where ar_nomor_bukti='010218004168FP' union all
select AR_Cabang,AR_Nomor_Bukti,AR_Tanggal_Awal from meka..har where ar_nomor_bukti='010218004362FP'

010218011144fp »»7
010218011553fp »»7

select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='k-00000169' order by ar_tanggal_awal asc
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='t-00000266'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='031502250C'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='p-00000610'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300010c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300016c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300022c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300458c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051301229c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300090c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300557c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='051300044c'
select top 1000 ar_cabang,ar_nomor_ar,ar_nomor_bukti,ar_kode_cust,ar_tanggal_awal,ar_due_date from meka..har where ar_flag_lunas='n' and ar_cabang between '03' and '08' and ar_kode_cust='p-00000989'

