select top 1000 hts_no_tran_stock,hts_tanggal,hts_kode_warehous,hts_jenis_spb,hts_kode_supplier,hts_kode_customer,hts_nomor_dokumen,type_kode_spl_1,dts_kode_barang,dts_qty,(dts_qty*type_volume) as liter,hts_keterangan
--select top 1000 * 
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) inner join meka..mtipe
on dts_kode_barang=type_kode and dts_product=type_kode_group
where hts_tanggal between '2014-11-17' and '2014-11-22'
and dts_product='she'
and hts_cabang='01'
and hts_jenis_spb <> 'tp/k'
and dts_kode_barang='SHE-HX5-15W-40(1LT)'


select top 1000 hlbm_no_lbm, hlbm_tanggal,hlbm_kode_warehous,hlbm_jenis_lbm,hlbm_kode_supplier,hlbm_kode_customer,hlbm_nomor_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_qty,dlbm_qty_dibayar,type_volume,type_kode_spl_1
--select top 1000 * 
--select sum(dlbm_qty_entry)
from (meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm) inner join meka..mtipe
on dlbm_kode_barang=type_kode and dlbm_product=type_kode_group
where hlbm_tanggal between '2014-11-17' and '2014-11-22'
and dlbm_product='she'
and hlbm_cabang='01'
and dlbm_kode_barang='SHE-HX5-15W-40(4L)  '

select top 1000 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where 
hlbm_sifat_lbm='-'
hlbm_no_lbm='010114000626bm'
