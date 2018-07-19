--select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_jenis_lbm='rt/m' and dlbm_product='om6' and hlbm_tanggal between '2014-06-01' and '2014-06-30' and hlbm_kode_warehous='15'

select top 10 * from meka..paypoint where paydate='2015-11-12' and payinvoiceno='010515009345fp'
--update meka..paypoint set paytipe='Credit Limit' from meka..paypoint where paydate='2015-11-12' and payinvoiceno='010515009345fp'