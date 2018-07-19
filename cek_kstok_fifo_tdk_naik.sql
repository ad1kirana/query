BUMW22FPUSD
BUMW24ESUD

---cek_fifo_tidak_naik
select stok_cabang,stok_tanggal,'',stok_warehouse,stok_kode_barang,stok_qty,stok_no_doc,stok_kode_transaksi,stok_kode_cust_sup,stok_kode_product,mc_qty,mc_nomor_fifo
from meka..hkstok left join meka..hffmov on stok_no_doc=mc_no_doc and stok_kode_barang=mc_kode_barang
where stok_kode_barang='ACC.077' and 
stok_cabang='03' and mc_qty is null and 
stok_kode_transaksi not like 't%' --and
--STOK_Kode_Product<>'oth'
--and STOK_Tanggal>='2017-07-01'
order by STOK_Tanggal desc

select top 1000 * from meka..mffcost where ff_kode_barang='tdp.028' and ff_cabang='30' and ff_qty_masuk<>ff_qty_keluar and 

select top 100 * from meka..hffmov where mc_kode_barang='tdp.028' and MC_Cabang='30'-- mc_nomor_fifo='59141' and order by mc_no_doc asc

select top 10 * from meka..hkstok where stok_kode_barang='GSHY-NS60' and stok_cabang='05' and stok_tanggal >='2017-05-20' order by stok_no_doc asc

select top 10 * from meka..hffmov right join meka..hkstok on mc_no_doc=stok_no_doc and mc_kode_barang=stok_kode_barang where mc_nomor_fifo='59141' and mc_kode_barang='ECA272000-3410' and stok_cabang='02'
select * from meka..hkstok left join meka..hffmov on stok_no_doc=mc_no_doc and stok_kode_barang=mc_kode_barang where mc_kode_barang='ECA272000-3410' and stok_cabang='02'


select sum(stok_qty)
from meka..hkstok left join meka..hffmov on stok_no_doc=mc_no_doc and stok_kode_barang=mc_kode_barang
where stok_kode_barang='GSHY-NS60' and stok_cabang='05' and mc_qty is null and stok_kode_transaksi not like 't%'

select stok_cabang,stok_tanggal,'',stok_warehouse,stok_kode_barang,stok_qty,stok_no_doc,stok_kode_transaksi,stok_kode_cust_sup,stok_kode_product,mc_qty,mc_nomor_fifo, (MC_Qty-STOK_Qty) as selisih
from meka..hkstok left join meka..hffmov on stok_no_doc=mc_no_doc and stok_kode_barang=mc_kode_barang
where stok_kode_barang='MS-RNMDRDRUM-0.5' and stok_cabang='05' and 
--stok_kode_transaksi like 'AD%'and 
stok_kode_transaksi not like 't%'


STOK_Tanggal>='2017-01-01'

select * from meka..hffmov where mc_kode_barang='04465-bz010' and mc_cabang='03' and and mc_nomor_fifo='65145'
mc_kode_transaksi='beli' and mc_tanggal='2014-09-11'
11/09/14

select * from meka..mffcost where ff_kode_barang='04465-bz010' and ff_cabang='03' 