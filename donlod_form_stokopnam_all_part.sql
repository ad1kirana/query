select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '35' and '35'-- and part_kode_group ='otp' 
and (part_stock_bisa_jual+part_stock_dn+part_stock_total)>'0'
order by product_group asc


select part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '30' and '35' 
and (part_stock_bisa_jual+part_stock_dn+part_stock_total)>'0'

and part_kode_group<>'she'
and part_kode_wh='18' 
order by product_group asc

select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,part_dbp,part_harga_jual
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '01' and '01' --and part_kode_group ='she' 
and (part_stock_bisa_jual+part_stock_dn+part_stock_total)>'0'
order by product_group asc


select type_kode_group,type_kode,type_nama,type_harga_beli3,type_harga_jual3,type_harga_beli4,type_harga_jual4,type_createdate,type_modifydate, type_modifyuser, type_createuser
from meka..mtipe where type_kode like 'op%' and type_status='0'