select part_cabang,part_kode_wh,part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,part_keepstock,part_stock_rusak,part_order_prop,part_harga_jual,part_dbp
--select * 
from meka..mpart where part_company='01'
--and part_stock_bisa_jual <>'0'
and part_kode_group='srd'
order by part_kode asc
 and part_kode='MINITWIST 12W/865E27'

select top 10 * from meka..hffmov where mc_nomor_fifo='115415'
select mc_qty,mc_kode_transaksi,mc_sifat_trn,mc_no_doc from meka..hffmov where mc_kode_barang='MINITWIST 12W/865E27' and mc_cabang='30'
select * from meka..hkstok where stok_kode_barang='MINITWIST 12W/865E27' and stok_cabang='30' and stok_warehouse='38'
and stok_kode_transaksi='tp/m'

select top 10 * from meka..hspos where hps_kode_barang='MINITWIST 12W/865E27' and hps_warehouse='38' and hps_tanggal > '2014-02-28'


update meka..mpart set part_stock_total='24' from meka..mpart where part_kode_wh='38' and part_kode_group='OHE' and part_kode='MINITWIST 12W/865E27' and part_stock_total='0' and part_stock_bisa_jual='24'
