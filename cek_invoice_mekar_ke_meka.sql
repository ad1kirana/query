select hlbm_cabang,hlbm_no_lbm,hlbm_tanggal,hlbm_kode_warehous, hlbm_jenis_lbm,hlbm_kode_supplier,dlbM_kode_barang,dlbm_qty_entry,dlbm_qty_dibayar,hlbm_creator
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where --dlbm_product='phc'and 
hlbm_company='01'
and hlbm_kode_supplier='117'

select top 10 * from meka..twrsh

select top 1000 hp_cabang,hp_nomor_s_invoice,hp_tanggal,dp_nomor_wrs,dp_kode_barang,dp_qty from meka..tsih inner join meka..tsid on hp_nomor_s_invoice=dp_nomor_s_invoice 
where hp_supplier='117' and hp_company='01'
and hp_tanggal between '2016-01-01' and '2016-01-31'

select hs_nomor_faktur,hs_tanggal,hs_customer,ds_kode_barang,ds_qty from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where hs_customer like '18meka%'
and hs_tanggal between '2016-01-01' and '2016-01-31'
select top 10 * from meka..tsid