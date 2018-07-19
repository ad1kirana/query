select top 10000 mc_no_doc,mc_kode_barang,mc_qty,mc_kode_transaksi,mc_kode_product,hts_kode_warehous,hts_qq,mc_harga_pokok_unit,(mc_qty*mc_harga_pokok_unit) as cost,hts_flag_posting from 
(meka..ttsh inner join meka..ttsd on 
hts_no_tran_stock=dts_nomor_t_stock) inner join meka..hffmov on dts_nomor_t_stock=mc_no_doc and 
dts_kode_barang=mc_kode_barang and
dts_product=mc_kode_product and 
hts_jenis_spb=mc_kode_transaksi and
hts_company=mc_company and
hts_cabang=mc_cabang

where hts_jenis_spb like 'ibk%' 
and hts_tanggal > '2014-07-31'
order by mc_no_doc asc

select hlbm_nomor_dokumen,hlbm_no_lbm,hlbm_kode_warehous,hlbm_jenis_lbm,dlbm_no_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_qty,dlbm_cost,hlbm_flag_posting from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where 
hlbm_jenis_lbm like 'ibm%' and 
hlbm_tanggal > '2014-07-31'
order by hlbm_nomor_dokumen asc 

select top 10000 * from 
meka..ttsh inner join meka..ttsd on 
hts_no_tran_stock=dts_nomor_t_stock
where hts_jenis_spb like 'ibk%' 
and hts_tanggal > '2014-07-31'
and hts_cabang='01'

select top 10 * from meka..mffcost
select top 10 * from meka..hffmov

and hts_cabang='01'
order by hts_no_tran_stock asc 
select top 10 * from meka..ttsd
select top 10 * from meka..ttsh
