select stok_tanggal,stok_qty,stok_kode_transaksi,stok_sifat_trn,stok_no_doc from meka..hkstok 
where stok_kode_barang='MS-RNMDRDRUM-0.5' and stok_cabang='05' and stok_tanggal between '2017-01-01' and '2017-06-04'   --and stok_kode_transaksi not like 'tp%' 

select mc_tanggal,mc_qty,mc_kode_transaksi,mc_sifat_trn,mc_no_doc from meka..hffmov 
where mc_kode_barang='EMG-2703' and mc_cabang='05' and mc_tanggal between '2017-01-01' and '2017-06-04'

select stok_qty,stok_kode_transaksi,stok_sifat_trn,stok_no_doc from meka..hkstok 
where stok_kode_barang='SCM-CMM-603A' and stok_cabang='30' and stok_tanggal between '2017-01-01' and '2017-06-04'   and stok_kode_transaksi like 'tp%' 

select mc_qty,mc_kode_transaksi,mc_sifat_trn,mc_no_doc from meka..hffmov 
where mc_kode_barang='SCM-CMM-603A' and mc_cabang='30' and mc_tanggal between '2017-01-01' and '2017-06-04'

CRO.035
EMG-2703
MS-MDSC1540F4-001
MS-PRXP1040-001
MS-RNMDRDRUM-0.5
SHE-HX7-10W-40(1LT)
SHE-HX7-10W-40(4LT)
ACC.072
OP-12-VB-BND-019
OTP.314
90043-85149
GT2.007
FOL-JS260340-0380

select sum(stok_qty) from meka..hkstok 
where stok_kode_barang='ACC.077' and stok_cabang='03' and stok_tanggal between '2017-01-01' and '2017-06-04'   --and stok_kode_transaksi not like 'tp%' 
and stok_sifat_trn='+'

select sum(stok_qty) from meka..hkstok 
where stok_kode_barang='ACC.072' and stok_cabang='03' and stok_tanggal between '2017-01-01' and '2017-06-04'   --and stok_kode_transaksi not like 'tp%' 
and stok_sifat_trn='-'

select sum(mc_qty) from meka..hffmov 
where mc_kode_barang='ACC.072' and mc_cabang='03' and mc_tanggal between '2017-01-01' and '2017-06-04'
and mc_sifat_trn='+'

select sum(mc_qty) from meka..hffmov 
where mc_kode_barang='ACC.072' and mc_cabang='03' and mc_tanggal between '2017-01-01' and '2017-06-04'
and mc_sifat_trn='-'




select * from meka..hkstok where stok_kode_barang='EMO-2221' and stok_cabang='02'

select distinct hlbm_no_lbm,hlbm_nomor_dokumen from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_cabang='02' and dlbm_kode_barang='EMO-2221' and hlbm_jenis_lbm='tp/m'

select top 10 hlbm_nomor_dokumen from meka..twrsh where hlbm_no_lbm='010312007882BM'

select stok_qty,stok_kode_transaksi,stok_sifat_trn,stok_no_doc from meka..hkstok where stok_kode_barang='RP-ELML1040SL-001' and stok_cabang='05'
select mc_qty,mc_kode_transaksi,mc_sifat_trn,mc_no_doc from meka..hffmov where mc_kode_barang='RP-ELML1040SL-001' and mc_cabang='05'

select top 1000 * from meka..hspos where hps_cabang='05' and hps_kode_barang='MS-RNMDRDRUM-0.5'
order by hps_tanggal asc

select top 10 * from meka..mffcost where ff_counter='22300'
select top 10 * from meka..mffcost where ff_counter='25821' and ff_kode_barang='ECA029180-0990'
select top 10 * from meka..mffcost where ff_counter='18471' and ff_kode_barang='GSHY-NS60'
--update meka..mffcost set FF_qty_keluar='1' , ff_flag_closed='N' from meka..mffcost where ff_counter='18471' and ff_kode_barang='GSHY-NS60'
select top 10 * from meka..mffcost where ff_kode_barang='ECA029180-0990' and ff_flag_closed='n' and ff_cabang='01'

SHE-HX7-10W-40(1LT)
SHE-HX8SYN-5W30(4L)
SHE-RMLR4X15W40(5LT)
SHE-SPR ATF MD3(1L)




select stok_tanggal,stok_qty,stok_kode_transaksi,stok_sifat_trn,stok_no_doc,stok_warehouse from meka..hkstok 
where stok_kode_barang='OM6-594375' and stok_cabang='03'and stok_kode_transaksi like 'tp%' 

select top 1000 hlbm_nomor_dokumen,hlbm_no_lbm,hlbm_jenis_lbm,dlbm_qty_entry,hlbm_kode_warehous from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_jenis_lbm like 'tp/m' 
and dlbm_kode_barang='OM6-594375' and hlbm_cabang='03'

select top 10 * from meka..twrsh where hlbm_nomor_dokumen='010316000275TS' 
select top 10 * from meka..ttsh where hts_no_tran_stock='010316000275TS'
select top 10 * from meka..ttsd where dts_nomor_t_stock='010316000275TS'

OM6-086572
OM6-313504
OM6-326543
OM6-594375