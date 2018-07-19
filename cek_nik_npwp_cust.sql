
select distinct
a.HS_Customer, CUST_Nama,CUST_Alamat_1,CUST_Alamat_2,CUST_Alamat_3,CUST_Nomor_IDPemilik,CUST_NamaOwner,CUST_AlamatOwner,No_Npwp,Sales_Nama,Sales_Supervisor,HS_Cabang
from (select HS_Customer as cust,MIN(HS_Nomor_Faktur) as min
from MEKA..TSLSH
where HS_Tanggal between '2017-12-01' and '2017-12-31'
group by HS_Customer) t
left join MEKA..TSLSH a on t.cust=a.HS_Customer and a.HS_Nomor_Faktur = t.min
left join MEKA..MSLSMN on a.HS_Kode_Salesman=Sales_Kode
left join meka.. mcust on a.HS_Customer=CUST_Kode
left join MEKA..MAPJK on CUST_Kode=Kode_Customer where a.HS_Tanggal between '2017-12-01' and '2017-12-31'
and (CUST_Nomor_IDPemilik='' or CUST_Nomor_IDPemilik is null)
and (No_Npwp='' or No_Npwp is null)
group by HS_Customer,CUST_Nama,CUST_Alamat_1,CUST_Alamat_2,CUST_Alamat_3,CUST_Nomor_IDPemilik,CUST_NamaOwner,CUST_AlamatOwner,No_Npwp,Sales_Nama,Sales_Supervisor,HS_Cabang






select distinct(hs_customer),No_Npwp,CUST_Nomor_IDPemilik 
--,(select top 1 DS_Kode_Product from MEKA..TSLSD inner join MEKA..TSLSH on HS_Nomor_Faktur=DS_Nomor_Faktur
--where hs_tanggal between '2018-01-01' and '2018-01-07' ) as produk
--distinct (ds_kode_product) 
 from meka..tslsh --inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur
left join MEKA..MAPJK on HS_Customer=Kode_Customer
left join MEKA..MCUST on Kode_Customer=CUST_Kode
--where hs_tanggal between '2017-12-01' and '2017-12-31' and
where hs_tanggal between '2018-01-01' and '2018-01-07' and

hs_cabang='01' and
(No_Npwp is null or No_Npwp='') 

and
(CUST_Nomor_IDPemilik  is null or 
CUST_Nomor_IDPemilik ='')

group by hs_customer,No_Npwp,CUST_Nomor_IDPemilik, ds_kode_product 


select CUST_Kode,CUST_Nama,CUST_Nomor_IDPemilik from MEKA..MCUST 
where --(CUST_Nomor_IDPemilik  is not null or 
CUST_Nomor_IDPemilik like '33%'

select Kode_Customer,No_Npwp from MEKA..MAPJK where No_Npwp <>''

select distinct(hs_customer),No_Npwp,CUST_Nomor_IDPemilik 
--,(select top 1 DS_Kode_Product from MEKA..TSLSD inner join MEKA..TSLSH on HS_Nomor_Faktur=DS_Nomor_Faktur
--where hs_tanggal between '2018-01-01' and '2018-01-07' ) as produk
--distinct (ds_kode_product) 
 from meka..tslsh --inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur
left join MEKA..MAPJK on HS_Customer=Kode_Customer
left join MEKA..MCUST on Kode_Customer=CUST_Kode
where hs_tanggal between '2017-12-01' and '2017-12-31' and
--where hs_tanggal between '2018-01-01' and '2018-01-09' and

hs_cabang='01' and (No_Npwp<>'' 
or CUST_Nomor_IDPemilik like '33%')


select hs_nomor_faktur,hs_customer,No_Npwp,CUST_Nomor_IDPemilik 
from meka..tslsh
left join MEKA..MAPJK on HS_Customer=Kode_Customer
left join MEKA..MCUST on HS_Customer=CUST_Kode
where hs_tanggal between '2018-01-01' and '2018-01-09' and
hs_cabang='01' and (No_Npwp<>'' 
or CUST_Nomor_IDPemilik like '33%')
order by HS_Nomor_Faktur asc

select a.hs_cabang, count(a.hs_nomor_faktur) as faktur_terbit,
(select count(hs_nomor_faktur)
from meka..tslsh 
left join MEKA..MAPJK on HS_Customer=Kode_Customer
left join MEKA..MCUST on HS_Customer=CUST_Kode
where HS_Cabang=A.hs_cabang and 
hs_tanggal between '2018-01-01' and '2018-01-09'
and (No_Npwp<>'' or CUST_Nomor_IDPemilik like '33%')
) as faktur_npwp_nik

from meka..tslsh a
where a.hs_tanggal between '2018-01-01' and '2018-01-09'
group by a.HS_Cabang
order by a.HS_cabang asc


select a.hs_cabang, count(a.hs_nomor_faktur) as faktur_terbit,
(select count(hs_nomor_faktur)
from meka..tslsh 
left join MEKA..MAPJK on HS_Customer=Kode_Customer
left join MEKA..MCUST on HS_Customer=CUST_Kode
where HS_Cabang=A.hs_cabang and 
hs_tanggal between '2017-12-01' and '2017-12-31'
and (No_Npwp<>'' or CUST_Nomor_IDPemilik like '33%')
) as faktur_npwp_nik

from meka..tslsh a
where a.hs_tanggal between '2017-12-01' and '2017-12-31'
group by a.HS_Cabang
order by a.HS_cabang asc


select hs_cabang,count(hs_nomor_faktur)
from meka..tslsh
left join MEKA..MAPJK on HS_Customer=Kode_Customer
left join MEKA..MCUST on HS_Customer=CUST_Kode
where hs_tanggal between '2018-01-01' and '2018-01-09'
and (No_Npwp<>'' or CUST_Nomor_IDPemilik like '33%')
group by HS_Cabang
order by HS_cabang asc