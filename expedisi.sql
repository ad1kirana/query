select 
b.tf_branch,
b.tf_salesoffice,
rtrim(b.tf_document) as kode_ekspedisi,
rtrim(b.tf_date) as tgl_ekspedisi,
rtrim(b.tf_kurirname) as kurir,
rtrim(f.dlv_nama) as area_delivery,
rtrim(b.tf_note) as note,
rtrim(a.trfd_faktur) as invoice,
rtrim(e.type_kode_group) as kode_group,
rtrim(d.ds_kode_barang) as kode_barang,
rtrim(e.type_nama) as nama_barang,
rtrim(d.ds_qty) as qty,
(d.ds_qty * e.type_berat) as berat,
(d.ds_qty * e.type_volume) as volume

from
meka..expeditionh b
inner join meka..expeditiond a on a.trfd_document=b.tf_document
inner join meka..tslsh c on a.trfd_faktur=c.hs_nomor_faktur
inner join meka..tslsd d on a.trfd_faktur=d.ds_nomor_faktur
inner join meka..mtipe e on d.ds_kode_barang=e.type_kode
inner join meka..mdlvry f on c.hs_area_delivery=f.dlv_kode_delivery
where 
b.tf_branch between '$brfrom' and '$brto'
and b.tf_salesoffice between '$sfrom' and '$sto'
and b.tf_date between '$dfrom' and '$dto'
order by b.tf_branch asc, b.tf_salesoffice asc, b.tf_document asc, a.trfd_faktur asc



cabang','sales_office','ekspedisi','tanggal','kurir','area','note','invoice','prod','nama_prod','desc_prod','qty','berat','volume