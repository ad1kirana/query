

--sales
select hs_cabang,HS_Customer, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota, year(hs_tanggal),MONTH(hs_tanggal), sum(HS_Nilai_Disc4_after)
from MEKA..TSLSH inner join meka..mcust on HS_Customer=CUST_Kode 
where HS_Tanggal between '2018-04-01' and '2018-06-30' and HS_Cabang between '01' and '35'
--and HS_Customer='01AC911A'
group by hs_cabang,hs_customer,cust_nama,cust_alamat_1,cust_alamat_3,cust_kota, year(hs_tanggal),MONTH(hs_tanggal)
union all
select hs_cabang,HS_Customer, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota,year(hs_tanggal),MONTH(hs_tanggal), sum(HS_Nilai_Disc4_after) 
from MEKA..TSLSH inner join meka..mcust on HS_Customer=CUST_Kode  where HS_Tanggal between '2017-04-01' and '2018-03-31' and HS_Cabang between '20' and '35'
group by hs_cabang,hs_customer,cust_nama,cust_alamat_1,cust_alamat_3,cust_kota, year(hs_tanggal),MONTH(hs_tanggal)
order by HS_Cabang asc, HS_Customer asc, year(HS_Tanggal) asc, MONTH(hs_tanggal) asc

select top 10 * from MEKA..TSLSH


select ar_cabang,HS_Customer,cust_nama,cust_alamat_1,cust_alamat_3,cust_kota, year(hs_tanggal),MONTH(hs_tanggal), avg(HS_Nilai_Disc4_after)
from MEKA..HAR inner join meka..mcust on HS_Customer=CUST_Kode where HS_Tanggal between '2017-04-01' and '2018-03-31' and HS_Cabang between '01' and '02'
group by hs_cabang,hs_customer, year(hs_tanggal),MONTH(hs_tanggal),cust_nama, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota
union all
select hs_cabang,HS_Customer,cust_nama, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota,year(hs_tanggal),MONTH(hs_tanggal), avg(HS_Nilai_Disc4_after) 
from MEKA..TSLSH inner join meka..mcust on HS_Customer=CUST_Kode  where HS_Tanggal between '2017-04-01' and '2018-03-31' and HS_Cabang between '20' and '35'
group by hs_cabang,hs_customer, year(hs_tanggal),MONTH(hs_tanggal),cust_nama, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota

select AR_Cabang,AR_Kode_Cust,cust_nama,cust_alamat_1,cust_alamat_3,cust_kota,
avg(datediff(day,AR_Tanggal_Awal,AR_Tgl_Bayar_Akhir)) as umur
from MEKA..HAR inner join MEKA..MCUST on AR_Kode_Cust=CUST_Kode
where AR_Tanggal_Awal between '2018-04-01' and '2018-06-30'
 and AR_Cabang between '01' and '35'
group by AR_Cabang,AR_Kode_Cust, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota
union all
select AR_Cabang,AR_Kode_Cust, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota,
avg(datediff(day,AR_Tanggal_Awal,AR_Tgl_Bayar_Akhir)) as umur
from MEKA..HAR inner join MEKA..MCUST on AR_Kode_Cust=CUST_Kode
where AR_Tanggal_Awal between '2017-04-01' and '2018-03-31'
 and AR_Cabang between '20' and '35'
group by AR_Cabang,AR_Kode_Cust, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota


select hs_cabang,HS_Customer,cust_nama,cust_alamat_1,cust_alamat_3,cust_kota, year(hs_tanggal)as tahun,MONTH(hs_tanggal) as bulan, 
count(HS_Nomor_Faktur) as frekwensi
from MEKA..TSLSH inner join meka..mcust on HS_Customer=CUST_Kode where HS_Tanggal between '2017-04-01' and '2018-03-31' and HS_Cabang between '01' and '02'
group by hs_cabang,hs_customer,hs_tanggal,cust_nama, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota
union all
select hs_cabang,HS_Customer,cust_nama,cust_alamat_1,cust_alamat_3,cust_kota, year(hs_tanggal)as tahun,MONTH(hs_tanggal) as bulan, 
count(HS_Nomor_Faktur) as frekwensi
from MEKA..TSLSH inner join meka..mcust on HS_Customer=CUST_Kode where HS_Tanggal between '2017-04-01' and '2018-03-31' and HS_Cabang between '20' and '35'
group by hs_cabang,hs_customer,hs_tanggal, cust_nama,cust_alamat_1,cust_alamat_3,cust_kota




and ar_tangg
order by HS_Tanggal asc, HS_Customer asc


order by HS_Tanggal asc, HS_Customer asc
