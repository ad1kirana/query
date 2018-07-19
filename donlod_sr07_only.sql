--sr07_CARfix
select hs_qq,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'10',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product)as prod,rtrim(ds_kode_barang) as kode_barang,rtrim(type_nama)as nama_barang,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,ds_qty_retur
--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2017-01-01' and '2017-05-28'
and hs_cabang between '03' and '03'
--and ds_qty_retur='0'
and ds_kode_product between 'emd' and 'eot'
and hs_customer='61antor'
order by hs_nomor_faktur asc

select hs_qq,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product)as prod,rtrim(ds_kode_barang) as kode_barang,rtrim(type_nama)as nama_barang,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,(ds_amount-Ds_amount_D4) as nett_per_part, ds_tot_harga_pokok,ds_qty_retur,hs_last_km
--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2000-01-01' and '2017-09-10'
and hs_cabang between '08' and '08'
order by hs_nomor_faktur asc

select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,--hs_nomor_ppn
hs_keterangan,ds_qty_retur,((ds_qty-ds_qty_retur) * type_volume)--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
--hs_tanggal between '2016-06-01' and '2016-06-30'
--and hs_cabang between '01' and '01' and 
ds_kode_product like 'sad'
--and cust_nama like '%meka %'
order by hs_nomor_faktur asc

select top 10 * from meka..tslsh

select hs_cabang,hs_customer,hs_nilai_disc4_after,hs_nomor_faktur
--select count (hs_nomor_faktur) 
from meka..tslsh
where
hs_tanggal between '2015-03-01' and '2015-03-31'
and hs_cabang ='07'
--between '03' and '07'
order by hs_customer asc
select top 10 * from meka..tslsh

select hs_customer,hs_nilai_disc4_after,rtrim(hs_nomor_faktur) as faktur,hs_tanggal,hs_kode_salesman
from meka..tslsh
where
hs_tanggal between '2016-06-01' and '2016-06-30'
and hs_cabang between '05' and '05'
--and ds_qty_retur='0'
order by hs_nomor_faktur asc

select top 10 * from meka..tslsh where hs_nomor_faktur between '010516005024FP' and  '010516005030FP' 
select top 10 * from meka..torderh where hs_nomor_faktur='010516005178OR'      


select top 10 * from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where hs_nomor_faktur='010516005024FP'