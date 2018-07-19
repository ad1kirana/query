
--IBK blm IBM (3)
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,
hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen,hlbm_jenis_lbm
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
and hts_tanggal between '2017-03-01' and '2017-03-31'
and hlbm_jenis_lbm not like 'ib%'
order by hts_tanggal asc

select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,
hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen,hlbm_jenis_lbm
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
and hts_no_tran_stock='010217000095bk'
--and hts_tanggal between '2017-03-01' and '2017-03-31'
--and hlbm_jenis_lbm not like 'ib%'
order by hts_tanggal asc



select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,
hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'tp/k'
and hts_tanggal between '2017-03-01' and '2017-03-31'
and hlbm_jenis_lbm not like 'tp/m'
order by hts_tanggal asc

select top 10 * from meka.. twrsh