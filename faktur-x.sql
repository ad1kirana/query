select hs_cabang as cab,hs_salesoffice as so, hs_warehouse as wh, hs_nomor_faktur as invoice , hs_qq as cust_code , cust_nama as nama_cust, hs_area_delivery as kode_dlv , dlv_nama as delivery, hs_tanggal as tgl_inv, hs_kode_salesman as sls,'',ds_amount as amount,'','',
from 
meka..tslsh a
inner join meka..mcust b on a.hs_qq=b.cust_kode
inner join meka..mdlvry c on a.hs_area_delivery=c.dlv_kode_delivery
inner join meka..tslsd d on a.hs_nomor_faktur=d.ds_nomor_faktur
inner join meka..tspkm e on a.hs_nomor_faktur=hs_nomor_faktur
where 