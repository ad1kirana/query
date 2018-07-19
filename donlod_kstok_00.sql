select stok_cabang,stok_warehouse,stok_kode_barang,stok_no_doc,stok_qty,stok_tanggal,stok_kode_transaksi,stok_sifat_trn from meka..hkstok
where stok_tanggal between '2014-12-01' and '2015-02-28' and stok_kode_product like 'in%' and stok_company='01'
and stok_warehouse='20' and stok_sifat_trn='+'


select stok_cabang,stok_warehouse,stok_kode_barang,stok_no_doc,stok_qty,stok_tanggal,stok_kode_transaksi,stok_sifat_trn from meka..hkstok
where stok_kode_barang='04465-bz010' and stok_cabang='03'
order by stok_tanggal asc

select * from meka..hkstok
where stok_kode_barang='04905-20040'

select * from meka..hffmov where mc_no_doc='0103 - INITIAL STOCK' and mc_tanggal='2008-09-10 00:00:00.000'
--update meka..hffmov set mc_warehouse='15' from meka..hffmov where mc_no_doc='0103 - INITIAL STOCK' and mc_tanggal='2008-09-10 00:00:00.000'

stok_tanggal between '2014-12-01' and '2015-02-28' and stok_kode_product like 'in%' and stok_company='01'
and stok_warehouse='20' and stok_sifat_trn='+'
04905-20040         


select HPS_KODE_BARANG,type_kode_spl_1,(hps_stock_awal*type_volume) as liter,hps_warehouse from meka..hspos inner join meka..mtipe on hps_kode_barang=type_kode
where hps_cabang='01' and TYPE_KODE_GROUP='she' and hps_tanggal='2014-05-01' and
hps_stock_awal <> '0'
hps_stock_awal <> hps_stock_rfs

select top 10 * from meka..mtipe where type_kode_spl_1='550030486'

select top 10 * from meka..hspos

select hps_cabang,hps_warehouse,hps_kode_barang,hps_tanggal,hps_stock_awal  
--select * 
from meka..hspos left join meka..mtipe on hps_kode_barang=type_kode 
where hps_company='01' and TYPE_KODE_GROUP like 'in%' and hps_tanggal between '2014-12-01' and '2015-02-28'
and hps_stock_awal <> '0'
and hps_warehouse='20'
hps_stock_awal <> hps_stock_rfs


select hps_cabang,part_kode_wh,hps_kode_barang,hps_tanggal,hps_stock_awal  
select * from meka..hspos inner join meka..mpart on hps_kode_barang=part_kode
and hps_company=part_company and hps_cabang=part_cabang and hps_warehouse=part_kode_wh 
where hps_company='01' and part_KODE_GROUP like 'in%' and hps_tanggal between '2014-12-01' and '2015-02-28'
and hps_stock_awal <> '0'

select top 10 * from meka..mpart
--stock_poss
select hps_cabang,hps_warehouse,hps_tanggal,type_kode_group,type_kode,hps_stock_rfs,hps_stock_awal,hps_stock_awal_rusak
from meka..hspos inner join meka..mtipe on hps_kode_barang=type_kode 
where --hps_cabang ='07' and 
hps_tanggal='2015-9-01' and type_kode_group like 'om%' 
and type_status <> '2' and 