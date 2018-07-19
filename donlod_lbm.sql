select hlbm_company,hlbm_cabang,hlbm_tanggal,
rtrim(hlbm_no_lbm)as dokumen,hlbm_kode_supplier,
rtrim(hlbm_nomor_dokumen) as tpb_remark,hp_nomor_s_invoice,hp_keterangan,
hlbm_jenis_lbm,hlbm_kode_warehous,dlbm_product,
rtrim(dlbm_kode_barang)as part,
rtrim(type_nama)as diskripsi,
dlbm_qty_entry,dlbm_qty,dlbm_qty_dibayar,dlbm_cost
--select top 10 *
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
inner join meka..mtipe on dlbm_kode_barang=type_kode
left join meka..tsih on hlbm_no_lbm=hp_wrs
where hlbm_tanggal between '2015-01-01' and '2016-12-31'
and hlbm_jenis_lbm='beli'
--and hlbm_kode_supplier='002'
--and hlbm_cabang between'01' and '02'
and dlbm_product='otp'
--and hlbm_jenis_lbm like 'b%' 
--and hlbm_kode_warehous='46'
--and dlbm_qty_dibayar = '0'
--select top 10 * from meka..mtipe

--select top 10 * from meka..tsih where hp_cara_pembayaran='T'