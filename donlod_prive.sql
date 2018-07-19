select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,--hs_nomor_ppn
hs_keterangan--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2016-04-01' and '2016-04-30'
and hs_cabang between '01' and '02'
and cust_nama like '%meka %'
order by hs_nomor_faktur asc

select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,--hs_nomor_ppn
hs_keterangan--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2016-04-01' and '2016-04-30'
and hs_cabang between '30' and '35'
and cust_nama like '%meka %'
order by hs_nomor_faktur asc
