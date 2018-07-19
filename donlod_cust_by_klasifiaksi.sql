select distinct cust_kode,cust_klasifikasi_2,cust_status_cust
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2001-01-01' and '2014-08-26'
and ds_qty_retur='0'

select * from meka..mcust where cust_klasifikasi_2='7'