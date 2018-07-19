select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,(dts_qty*mc_harga_pokok_unit) as amount
select top 3 *
from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
--inner join meka..hffmov on dts_nomor_t_stock=mc_no_doc and dts_kode_barang=mc_kode_barang and 
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal between '2015-01-01' and '2015-01-31'
order by hts_no_tran_stock asc

select top 3 * from meka..hffmov

--donlod IBM
select hlbm_no_lbm,hlbm_kode_warehous,hlbm_fwarehouse,hlbm_nomor_dokumen,hlbm_jenis_lbm,hlbm_ledgerdoc,dlbm_kode_barang,dlbm_qty,(dlbm_qty*mc_harga_pokok_unit) as amount from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm inner join meka..hffmov on dlbm_nomor_lbm=mc_no_doc
and dlbm_kode_barang=mc_kode_barang
where hlbm_jenis_lbm like 'ibm%'
and hlbm_tanggal  between '2015-01-01' and '2015-01-31'


select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
--and hlbm_nomor_dokumen is null 
--and dts_product like'ky%'
--and hts_kode_warehous='15'
and hts_no_tran_stock='010116000894BK'
order by hts_tanggal asc

010116000894BK
010116000911BK

select top 10 * from meka..twrsh where hlbm_no_lbm='010216003023BM'      

select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)inner join meka..hffmov on dts_nomor_t_stock=mc_no_doc and dts_kode_barang=mc_kode_barang 
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal between '2015-01-01' and '2015-01-31'
order by hts_tanggal asc

select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,dts_kode_barang,dts_qty,dts_product,hts_creator,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen) where 
hts_jenis_spb like 'ibk%'
and hts_tanggal > '2014-03-31'
and hlbm_nomor_dokumen is null

select top 10 * from meka..ttsh

010214000031BK      
010114000173BK      
010514000020BK
010514000023BK      
  

select top 10 * from meka..hffmov where mc_kode_transaksi='1bm2' and mc_kode_barang='inpr-n100' and mc_warehouse='61'

select top 10 * from meka