select distinct cust_kode,cust_nama,cust_alamat_1,cust_alamat_1,CUST_Kota,CUST_Alamat_3 ,cust_klasifikasi_2,b.mintime
from(
  select hs_customer, min(hs_tanggal) as MinTime
  from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
  where hs_tanggal between '2014-01-01' and '2017-08-31' and ds_kode_product='sad' and hs_cabang='30'
  group by hs_customer
) b
 inner join meka..mcust on hs_customer=cust_kode


select distinct cust_kode,Sales_Nama,cust_nama,cust_alamat_1,cust_alamat_1,CUST_Kota,CUST_Alamat_3 ,cust_klasifikasi_2

  from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
   inner join meka..mcust on hs_customer=cust_kode
   inner join MEKA..MSLSMN on HS_Kode_Salesman=Sales_Kode
  where hs_tanggal between '2001-01-01' and '2030-12-31' and ds_kode_product='she' and hs_cabang='01'
  and CUST_Alamat_3=''
  and CUST_Status_Cust<>'1'
  order by CUST_Kode




select 
a.hs_customer,
a.HS_Kode_Salesman,
d.cust_nama,d.cust_alamat_1,
d.cust_alamat_1,d.CUST_Kota,d.CUST_Alamat_3 ,d.cust_klasifikasi_2
, b.minTime  as min_trans
from(
select hs_customer, MIN(hs_tanggal) as minTime 
  from meka..tslsh 
group by hs_customer )b 
inner join meka..tslsh a on a.hs_customer=b.hs_customer and a.hs_tanggal = b.MinTime
inner join meka..tslsd c on a.hs_nomor_faktur=c.ds_nomor_faktur 
inner join meka..mcust d on a.hs_customer=d.cust_kode 
inner join meka..mtipe e on c.ds_kode_barang=e.type_kode
inner join meka..mslsmn f on a.hs_kode_salesman=f.sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2014-01-01' and '2017-08-31'
and CUST_Alamat_3=''

inner join meka..mslsmn on b.hs_kode_salesman=sales_kode
where ds_kode_product='sad'
and b.hs_cabang='30'
and b.hs_tanggal between '2017-07-01' and '2017-07-31'
group by cust_kode,cust_nama,cust_alamat_1,cust_alamat_1,CUST_Kota,CUST_Alamat_3 ,cust_klasifikasi_2

select distinct cust_kode,cust_nama,cust_alamat_1,cust_alamat_1,CUST_Kota,CUST_Alamat_3 ,cust_klasifikasi_2
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2014-01-01' and '2017-07-31'
group by cust_kode,cust_nama,cust_alamat_1,cust_alamat_1,CUST_Kota,CUST_Alamat_3 ,cust_klasifikasi_2
