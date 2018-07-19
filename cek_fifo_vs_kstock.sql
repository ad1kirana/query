select top 1000 mc_tanggal,mc_no_doc,mc_kode_transaksi,mc_qty,mc_kode_cust_sup,mc_warehouse
from meka..hffmov where
mc_no_doc='010113004428BM'

and mc_kode_barang='ECA028300-5820' --and mc_warehouse<>'01'
and mc_cabang='01'
--and mc_tanggal > '2013-12-31' 
order by mc_tanggal asc



select stok_tanggal, stok_kode_barang,stok_no_doc,stok_kode_transaksi,stok_qty,stok_kode_cust_sup,stok_warehouse
--select SUM(stok_qty)
from meka..hkstok where stok_kode_barang='KL1-KR 275-17' --and stok_warehouse='01'
and stok_kode_transaksi not like 't%'
and stok_cabang='01'
--and stok_warehouse='51'
and stok_tanggal between '2001-01-01' and '2018-06-03'
order by stok_tanggal asc 

select MC_Tanggal, MC_Kode_Barang, MC_No_Doc,--MC_NOMOR_FIFO,
MC_Kode_Transaksi,MC_Sifat_Trn,sum(MC_Qty),MC_Kode_Cust_Sup,MC_Warehouse
--select sum(mc_qty)
from meka..hffmov where 
mc_kode_barang='KL1-KR 275-17' and 
mc_tanggal between '2001-01-01' and '2018-06-03' and 
MC_Cabang='01'
--mc_warehouse='15'
--and mc_no_doc='010314000012BK'
group by MC_Tanggal, MC_Kode_Barang, MC_No_Doc,MC_NOMOR_FIFO,MC_Kode_Transaksi,MC_Sifat_Trn, MC_Qty,MC_Kode_Cust_Sup,MC_Warehouse
order by MC_Tanggal asc

select top 10 * from meka..HFFMOV

select top 10 * from meka..hffmov

select MC_Tanggal, MC_Kode_Barang, MC_No_Doc,MC_Kode_Transaksi,MC_Qty,MC_Kode_Cust_Sup,MC_Warehouse
--select sum(mc_qty)
from meka..hffmov where 
mc_kode_barang='OFL-049' and 
--mc_tanggal > '2013-12-31' and 
MC_Cabang='03'
mc_warehouse='15'
and mc_no_doc='010314000012BK'
order by stok_tanggal asc

--stok_tanggal > '2013-12-31' and 

select stok_tanggal, stok_no_doc,stok_kode_transaksi,stok_qty,stok_kode_cust_sup,stok_warehouse
from meka..hkstok where stok_kode_product='gtt' and stok_warehouse='15'
--and stok_kode_transaksi not like 'tp%'
and stok_kode_transaksi ='beli'

and stok_cabang='03'
and stok_tanggal between '2015-06-01' and '2015-06-30'
order by stok_tanggal asc 

CRO.035
MS-RNMDRDRUM-0.5
ACC.072
90043-85149


select stok_tanggal,stok_no_doc,stok_kode_product,
stok_kode_barang,stok_qty,stok_tot_harga_pokok,stok_warehouse,stok_kode_transaksi
--select * 
from meka..hkstok
WHERE stok_cabang='03'
and stok_tanggal between '2017-08-01' and '2017-08-31'
--and stok_kode_product<>'oth'
and stok_kode_barang='OP-01-TRE-OTH-013'
--and stok_tot_harga_pokok='0'
order by stok_tanggal asc 

select top 10 * from meka..hkstok WHERE stok_cabang='03' 
and stok_kode_barang='OP-01-TRE-OTH-013' and stok_no_doc='010317000141TS'

--delete from meka..hkstok WHERE stok_cabang='03' and stok_kode_barang='OP-01-TRE-OTH-013' and stok_no_doc='010317000141TS'

select top 10 * from meka..hmkstok WHERE STOK_SO='03' 
and stok_kode_barang='OP-01-TRE-OTH-013' and stok_no_doc='010317000141TS'

--delete from meka..hmkstok WHERE STOK_SO='03' and stok_kode_barang='OP-01-TRE-OTH-013' and stok_no_doc='010317000141TS'

select mc_tanggal,mc_no_doc,mc_kode_product,mc_kode_barang,mc_qty,mc_kode_transaksi,(mc_qty*mc_harga_pokok_unit) as cost,mc_warehouse from meka..hffmov
where mc_cabang='05'
--and mc_tanggal between '2015-06-01' and '2015-12-31'
and mc_kode_barang='CRO.035'
order by mc_tanggal asc 

select mc_tanggal,mc_no_doc,mc_kode_product,mc_kode_barang,mc_qty,mc_kode_transaksi,(mc_qty*mc_harga_pokok_unit) as cost,mc_warehouse
--select sum(mc_qty)
from meka..hffmov
where mc_cabang='03'
--and mc_tanggal between '2015-06-01' and '2015-12-31'
and mc_nomor_fifo='76719'
and mc_kode_barang='TOR-RD'
and mc_sifat_trn='-'
--order by mc_tanggal asc 

select top 10 * from meka..mffcost where ff_counter='76719' and ff_cabang='03'

--update meka..mffcost set ff_qty_keluar='98', FF_flag_closed='N' from meka..mffcost where ff_cabang='04' and ff_kode_wh='20' and ff_counter='6920' and ff_qty_masuk='100' and ff_kode_barang='GSF-GTZ-5S'
select top 10 * from meka..mffcost where ff_cabang='06' and ff_kode_wh='23' and ff_counter='335' and ff_qty_masuk='12' and ff_kode_barang='ACC.030'

select top 10 * from meka..mffcost where ff_cabang='04' and ff_counter='335'

select top 10 * from meka..mffcost where ff_cabang='04' and ff_counter='6920'
