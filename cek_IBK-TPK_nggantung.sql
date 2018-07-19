--IBK blm IBM
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen,hlbm_flag_posting
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal > '2014-03-31'
and hlbm_nomor_dokumen is null
or hlbm_flag_posting ='n'
order by hts_tanggal asc



select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) inner join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal > '2014-06-30'
and hlbm_nomor_dokumen is null
order by hts_tanggal asc

select * 
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
inner join meka..hffmov on dts_nomor_t_stock=mc_no_doc and dts_kode_barang=mc_kode_barang
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal > '2014-06-30'
-- select top 10 hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product

select * 
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal > '2014-06-30'


select dlbm_no_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_qty,dlbm_cost,hlbm_no_lbm,hlbm_flag_posting,hlbm_tanggal from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_company='01'
and hlbm_jenis_lbm like 'ibm%' and hlbm_tanggal > '2014-06-30'
and dlbm_cost ='0'

select top 10 * from meka..twrsh where 


select top 10 * from meka..mffcost
select mc_no_doc,mc_kode_product,mc_kode_barang,mc_qty,(mc_qty*mc_harga_pokok_unit) from meka..hffmov where mc_company='01' and mc_tanggal > '2014-06-30' and mc_kode_transaksi like 'iBK%'




















--tpk blm tpm
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen where 
hts_jenis_spb='tp/k'
and hts_tanggal > '2013-01-01'
and hts_no_tran_stock<>'010213000523TS'
and hlbm_nomor_dokumen is null
order by hts_tanggal asc