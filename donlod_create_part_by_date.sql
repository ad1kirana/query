select top 1000 part_cabang,part_kode,part_kode_group,part_kode_wh,part_nama,type_harga_beli3,type_harga_jual3,part_dbp,part_harga_jual,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mpart inner join meka..mtipe on part_kode=type_kode where type_createdate between '2016-05-1' and '2016-05-31' 
--and type_kode_group='otp' 
--and part_cabang between '03' and '08'
and type_createuser='yani' or type_createuser='puguh' 


select top 10000 part_cabang,part_kode,part_kode_group,part_kode_wh,part_nama,type_harga_beli3,type_harga_jual3,part_dbp,part_harga_jual,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mpart inner join meka..mtipe on part_kode=type_kode where type_modifydate between '2016-05-1' and '2016-05-31' 




select top 100 part_cabang,part_kode,part_kode_group,part_kode_wh,part_nama,type_harga_beli3,type_harga_jual3,part_dbp,part_harga_jual, type_modifyuser, type_createuser
from meka..mpart inner join meka..mtipe on part_kode=type_kode where day(type_modifydate)=12 and month(type_modifydate)=6 and year(type_modifydate)=2016  
--and type_kode_group='otp'
and part_cabang between '03' and '08'



select type_kode_group,type_kode,type_nama,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mtipe where type_createdate between '2016-06-09' and '2016-06-19'

select type_kode_group,type_kode,type_nama,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mtipe where type_modifydate between '2016-06-09' and '2016-06-19'

select top 100 type_kode_group,type_kode,type_nama,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mtipe where type_kode='op-04-dc-igp-069'

select top 100 type_kode,type_nama,type_harga_beli3,type_harga_jual3,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mtipe where day(type_modifydate)=12 and month(type_modifydate)=6 and year(type_modifydate)=2016  



select top 100 * from meka..mtipe on part_kode=type_kode where type_createdate='2016-06-12'
and type_kode_group='otp'
select top 100 * from meka..mtipe where type_modifydate='2016-06-12' 
and type_kode_group='otp'

select top 10 * from meka..mtipe where  day(type_modifydate)=12 and month(type_modifydate)=6 and year(type_modifydate)=2016  