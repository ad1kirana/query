select hps_warehouse,type_kode_group,hps_kode_barang,hps_stock_awal,hps_stock_rfs from meka..hspos inner join meka..mtipe on hps_kode_barang=type_kode where --hps_cabang='20' and hps_tanggal='2014-01-01'
hps_warehouse='45'
select * from meka..mtipe
select * from meka..hspos where hps_warehouse='45'