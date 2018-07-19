select hs_cabang,hs_nomor_faktur,hs_customer, ds_kode_product,ds_kode_barang,ds_qty from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_tanggal='2014-06-16' and hs_cabang='03' and hs_flag_posting='y' and ds_qty_retur='0'

select 
sum(ds_qty_retur) from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_tanggal between '2012-02-01' and '2012-02-29'  and ds_kode_product='gsf' and hs_cabang='20' and ds_nomor_faktur='202012000031fp'
 and ds_qty_retur='0'
18209 sr05

17970 sr02
17975 not retur
