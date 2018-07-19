select stok_company,stok_cabang,stok_kode_product,stok_kode_barang,stok_warehouse,stok_tanggal,rtrim(stok_no_doc)
,stok_kode_transaksi,stok_kode_cust_sup,stok_qty,stok_sifat_trn
--,hps_tanggal,hps_stock_awal,hps_stock_rfs
--select top 10 * 
from meka..hkstok
--right join meka..hspos on
--stok_company=hps_company and
--stok_cabang=hps_cabang and
--stok_kode_barang=hps_kode_barang and
--stok_warehouse=hps_warehouse
where stok_cabang='02'
and stok_warehouse between '51' and '61'
and stok_tanggal between '2016-10-01' and '2016-12-31'
and stok_kode_BARANG like 'inmf%'
--and stok_kode_product='inp'
--and stok_kode_transaksi like 'ibm%'
order by stok_tanggal desc

order by stok_kode_product asc

and stok_kode_product <>'oth'
--and hps_tanggal  ='2013-12-01'

SELeCT stok_company,stok_cabang,stok_kode_product,stok_kode_barang,stok_warehouse,stok_tanggal,rtrim(stok_no_doc),stok_kode_transaksi,stok_kode_cust_sup,stok_qty,stok_sifat_trn FROM MEKA..HKSTOK where
stok_cabang='03' and stok_kode_barang like 'om%'
and stok_tanggal between '2016-03-01' and '2016-06-30'
and stok_no_doc='010316001069BM'


select stok_company,stok_cabang,stok_kode_product,stok_kode_barang,stok_warehouse,stok_tanggal,rtrim(stok_no_doc),stok_kode_transaksi,stok_kode_cust_sup,stok_qty,stok_sifat_trn
from meka..hkstok inner join meka..mprod on stok_kode_product=product_kode
where stok_cabang='03' and product_group='002'

select hps_cabang,hps_warehouse,hps_tanggal,hps_kode_barang,hps_stock_awal,hps_stock_rfs
--select top 10 * 
from meka..hkstok
right join meka..hspos on
stok_company=hps_company and
stok_cabang=hps_cabang and
stok_kode_barang=hps_kode_barang and
stok_warehouse=hps_warehouse
where
hps_tanggal  between '2014-05-01' and '2014-05-08'
and stok_kode_product='SHE-RMLR4X15W-40(DRM'
and stok_cabang='03'
and stok_tanggal between '1901-01-01' and '2016-12-31'
and stok_kode_product <>'oth'

select * from meka..hkstok
where stok_warehouse='31'
--stok_kode_product='SHE-RMLR4X15W-40(DRM'
and stok_kode_product like 'o%'
and stok_tanggal between '2015-09-01' and '2016-08-19'

select * from meka..hspos where hps_warehouse='25'
and hps_tanggal='2016-08-01'
and hps_stock_awal+hps_stock_rfs<>0


select top 10 * from meka..hspos where hps_warehouse='61' and hps_kode_barang='inpr-n100'