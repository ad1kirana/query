select top 10 * from MEKA..MSYSTEM where PARAM_CAbang='10'

select top 10 * from MEKA..TPERIOD where Cabang='10' and Status='o'

select  * from meka..mcountr where CT_Company='02' and ct_tahun='2018'
select  * from meka..mcountr where CT_Company='02' and CT_Jenis_Trans='mt' union all
select  * from meka..mcountr where CT_Company='02' and CT_Jenis_Trans='CM' order by CT_Jenis_Trans asc, CT_Tahun asc
ct_tahun='2018'