select top 10 * from meka..mtipe where type_kode not like 'op-%' and type_status='0' and type_kode_group='otp'
select top 10 * from meka..mtipe where type_kode='BULB-002'            
select top 10 * from meka..mtipe where type_kode='OTP.2538 '  

--update meka..mtipe set type_status='1' from meka..mtipe where type_kode not like 'op-%' and type_status='0' and type_kode_group='otp'
         

select type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser from meka..mtipe where type_kode_group='otp' and type_harga_jual<type_harga_beli and type_status='0'
select type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser from meka..mtipe where type_kode_group='otp' and type_harga_jual2<type_harga_beli2 and type_status='0'
select type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser from meka..mtipe where type_kode_group='otp' and type_harga_jual3<type_harga_beli3 and type_status='0'
select type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser from meka..mtipe where type_kode_group='otp' and type_harga_jual4<type_harga_beli4 and type_status='0'
select type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser from meka..mtipe where type_company='01'


select part_kode_wh,type_kode,type_nama,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total from meka..mtipe inner join meka..mpart on type_kode=part_kode 
where type_kode not like 'op-%' and type_status='1' and type_kode_group='otp' and (part_stock_bisa_jual+part_stock_dn+part_stock_total)>'0'
and part_kode_wh='15'

select part_kode_wh,type_kode,type_nama,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,
part_harga_jual,part_dbp,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4
from meka..mtipe inner join meka..mpart on type_kode=part_kode 
where part_cabang between '03' and '08'
and part_kode='ACC.002'


select part_cabang,part_kode_wh,part_kode_group,type_kode,type_nama,part_nama,
part_dbp,part_harga_jual,type_harga_beli3,type_harga_jual3
from meka..mtipe inner join meka..mpart on type_kode=part_kode 
where part_cabang between '03' and '08' and
part_kode_group='oth' and
type_status='0'


select top 10 * from meka..mpart

select part_kode_wh,type_kode,type_nama,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,
type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual2,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4
from meka..mtipe ineer join meka..mpart on type_kode=part_kode 
where type_kode like 'op-%' and type_status='0' and type_kode_group='otp' 
