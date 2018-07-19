select top 10 * from meka..mcust where CUST_Kode='041700845C'
--update meka..mcust set CUST_Kode_AFFCO='023', CUST_Chart_of_Account='110100029' from meka..mcust where CUST_Kode='041700845C'
--update meka..mcust set CUST_Chart_of_Account='110200000' from meka..mcust where CUST_Kode='G5500142'

select top 1000 CUST_Kode_AFFCO,* from meka..mcust where CUST_Nama like '%nasmoco %'