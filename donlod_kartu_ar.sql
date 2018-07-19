select rtrim (KAR_no_reff) as faktur,kar_amount 
from meka..hkar where
--kar_tanggal between '2014-11-01' and '2014-11-30' and 
kar_cabang = '03'-- and 
--kar_kode_transaksi='pay' 
order by KAR_no_reff asc

select top 10 rtrim (KAR_no_reff) as faktur,kar_amount 
from meka..hkar where kar_no_reff='010815000545fp'

select top 10 * from meka..hkar where kar_no_reff='010815000545fp'

select KAR_cabang,KAR_kode_customer,KAR_tanggal,Kar_nomor_document,kar_amount,kar_sifat_trn,kar_no_reff,kar_keterangan
from meka..hkar where
kar_tanggal between '2018-01-01' and '2018-01-31' and 
kar_cabang = '03'-- and 
--kar_kode_transaksi='pay' 
--kar_kode_customer='01acan'
order by KAR_kode_customer asc
