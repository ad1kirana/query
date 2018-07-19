select cust_kode,cust_nama,hs_tanggal,sales_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_klasifikasi_2,cust_telefon,mobileno,(ds_qty*type_volume)as liter
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2014-08-01' and '2014-11-22'
and ds_qty_retur='0'