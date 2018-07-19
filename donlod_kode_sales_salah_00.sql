select a.AR_Nomor_Bukti,a.AR_Salesman,b.HS_Kode_Salesman
from MEKA..har a inner join MEKA..TSLSH b on a.AR_Nomor_Bukti=b.HS_Nomor_Faktur --inner join MEKA..TOrderH c
--on b.HS_Nomor_Faktur=c.HS_Nomor_Vouch 
where year(b.HS_Tanggal)=2016
 between '2018-01-01' and '2018-03-30'

select distinct a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman 
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on a.HS_Nomor_SPB=b.HS_Nomor_SPB
where b.HS_Kode_Salesman <>'1sar' and 
a.HS_Cabang='01' and year(a.HS_Tanggal)<2018 

select distinct a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman 
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on a.HS_Nomor_SPB=b.HS_Nomor_SPB
where b.HS_Kode_Salesman <>'1sar' and 
a.HS_Cabang='02' and year(a.HS_Tanggal)=2018 

select distinct a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman 
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on a.HS_Nomor_SPB=b.HS_Nomor_SPB
where b.HS_Kode_Salesman <>'1sar' and 
a.HS_Cabang='30' and year(a.HS_Tanggal)=2018 


select distinct a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman 
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on a.HS_Nomor_SPB=b.HS_Nomor_SPB
where b.HS_Kode_Salesman <>'1sar' and 
a.HS_Cabang='22' and year(a.HS_Tanggal)=2018 

select distinct a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman 
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on a.HS_Nomor_SPB=b.HS_Nomor_SPB
where b.HS_Kode_Salesman <>'1sar' and 
a.HS_Cabang='20' and year(a.HS_Tanggal)=2018 

select AR_Nomor_Bukti,AR_Salesman,HS_Kode_Salesman from MEKA..HAR inner join MEKA..TSLSH on AR_Nomor_Bukti=HS_Nomor_Faktur
where AR_Flag_Lunas='N' and AR_Salesman<>HS_Kode_Salesman


select AR_Nomor_Bukti,AR_Salesman,HS_Kode_Salesman from MEKA..HAR inner join MEKA..TSLSH on AR_Nomor_Bukti=HS_Nomor_Faktur
where AR_Flag_Lunas='y' and AR_Salesman<>HS_Kode_Salesman
and AR_Cabang='01'
and AR_Tanggal_Awal between '2010-01-01' and '2017-12-31'


select distinct a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman,c.AR_Salesman 
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on a.HS_Nomor_SPB=b.HS_Nomor_SPB
 inner join MEKA..HAR c on a.HS_Nomor_Faktur=c.AR_Nomor_Bukti
where c.AR_Flag_Lunas='n' and 
a.HS_Cabang='02' and year(a.HS_Tanggal)=2018 
