select hs_cabang,hs_tanggal,hs_nomor_faktur,hs_customer,ds_kode_product,ds_kode_barang,ds_qty
--select top 10 * 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where hs_tanggal between '2014-12-01' and '2014-12-31'
and ds_kode_product like 'om%'
and hs_cabang='01'
