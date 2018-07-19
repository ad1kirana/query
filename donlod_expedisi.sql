select tf_branch,tf_salesoffice,tf_document, tf_date,dlv_kode_delivery,dlv_nama, tf_totitem,tf_note, tf_kurirname,tf_createuser,
ds_nomor_faktur,ds_kode_barang,ds_qty,ds_tot_harga_pokok
from meka..expeditionh inner join meka..expeditiond on tf_document=trfd_document
inner join meka..tslsh on trfd_faktur=hs_nomor_faktur
inner join meka..tslsd on trfd_faktur=ds_nomor_faktur
inner join meka..mdlvry on hs_area_delivery=dlv_kode_delivery

where --tf_document='010216000231ex'
tf_date between '2016-01-01' and  '2016-02-29'
and tf_branch<>'20'


select top 10 * from meka..tslsd
select top 10 * from meka..mdlvry
select * from meka..mjauto where tcoa_transaksi_credit='300250000'