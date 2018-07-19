select hlbm_tanggal, hlbm_kode_warehous,hlbm_nomor_dokumen, rtrim(dlbm_kode_barang),rtrim(type_nama),dlbm_qty_entry,dlbm_qty,dlbm_qty_dibayar
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm 
inner join meka..mtipe on dlbm_kode_barang=type_kode
where hlbm_jenis_lbm='beli' and hlbm_kode_supplier='196'

--select top 10 * from meka..twrsh