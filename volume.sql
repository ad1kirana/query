select sum(ds_qty*type_volume)
--select sum(ds_amount-ds_amount_d4)
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product between 'emd' and 'eot'
and hs_salesoffice='02'
and hs_tanggal between '2014-10-01' and '2014-10-31'
and ds_qty_retur='0'

select sum(ds_qty*type_volume)
--select sum(ds_amount-ds_amount_d4)
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product ='she'
and hs_cabang='01'
and hs_tanggal between '2014-10-01' and '2014-10-31'
and ds_qty_retur='0'
