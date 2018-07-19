select top 10 * from meka..tslsh where hs_tanggal> '2014-06-30' and hs_customer='02timo' and hs_kode_salesman <> 'FAS'
select top 10 * from meka..har where ar_tanggal_awal>'2014-06-30' and ar_kode_cust='02timo' and ar_salesman <> 'FAS'

--update meka..tslsh set hs_kode_salesman='FAS' from meka..tslsh where hs_tanggal> '2014-06-30' and hs_customer='02timo' and hs_kode_salesman <> 'FAS'
--update meka..har set ar_salesman='FAS' from meka..har where ar_tanggal_awal>'2014-06-30' and ar_kode_cust='02timo' and ar_salesman <> 'FAS'