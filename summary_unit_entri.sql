select distinct 
a.HS_Cabang,
(select COUNT(hs_nomor_faktur) from MEKA..TSLSH
where hs_cabang=a.HS_Cabang
and year(hs_tanggal)='2015') as '2015',
(select COUNT(hs_nomor_faktur) from MEKA..TSLSH 
where hs_cabang=a.hs_cabang 
and year(hs_tanggal)='2016') as '2016',
(select COUNT(hs_nomor_faktur) from MEKA..TSLSH
where hs_cabang=a.hs_cabang 
and year(hs_tanggal)='2017') as '2017'
from meka..tslsh a
where a.HS_Cabang between '03' and '08'
and year(a.hs_tanggal) between '2015' and '2017'
order by HS_Cabang asc

select distinct 
a.cust_Cabang,
(select COUNT(cust_kode) from MEKA..MCUST
where cust_cabang=a.cust_Cabang)
from meka..mcust a
where a.cust_Cabang between '03' and '08'
order by cust_Cabang asc

select COUNT(cust_kode) from MEKA..MCUST
where cust_cabang='06'

03	37935
04	27552
05	7686
06	4937
07	4426
08	5902

select distinct 
a.HS_Cabang,
(select sum(HS_Nilai_Total) from MEKA..TSLSH
where hs_cabang=a.HS_Cabang
and year(hs_tanggal)='2015') as '2015',
(select sum(HS_Nilai_Total) from MEKA..TSLSH 
where hs_cabang=a.hs_cabang 
and year(hs_tanggal)='2016')  as '2016',
(select sum(HS_Nilai_Total) from MEKA..TSLSH
where hs_cabang=a.hs_cabang 
and year(hs_tanggal)='2017')  as '2017'
from meka..tslsh a
where a.HS_Cabang between '03' and '08'
and year(a.hs_tanggal) between '2015' and '2017'
order by HS_Cabang asc


select distinct 
a.HRC_Cabang,
(select sum(HRC_Nilai_net_retr) from MEKA..TRTRH
where HRC_Cabang=a.HRC_Cabang
and year(HRC_Tanggal)='2015') as '2015',
(select sum(HRC_Nilai_net_retr) from MEKA..TRTRH
where HRC_Cabang=a.HRC_Cabang
and year(HRC_Tanggal)='2016')  as '2016',
(select sum(HRC_Nilai_net_retr) from MEKA..TRTRH
where HRC_Cabang=a.HRC_Cabang
and year(HRC_Tanggal)='2017')  as '2017'
from meka..trtrh a
where a.HRC_Cabang between '03' and '08'
and year(a.hRc_tanggal) between '2015' and '2017'
order by Hrc_Cabang asc

select top 10 * from MEKA..TRTRH