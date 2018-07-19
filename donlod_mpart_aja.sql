--update meka..mpart set part_stock_bisa_jual='1',part_stock_dn='0' from meka..mpart where part_kode_wh='80' and part_kode_group='GSA' and part_kode='GSPR-NS60S' and part_stock_total='1' and part_stock_bisa_jual='3'

select top 10000 part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode),part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where --part_stock_bisa_jual >'0' and  
part_company='20' and part_kode_group like 'k%' 
and part_kode_wh='80'
order by part_cabang asc


select top 10000 part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode),part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_stock_bisa_jual >'0' and  part_cabang<>'20'  and part_kode_group <>'oth' order by part_kode_group asc

select top 10 * from meka..mtipe

select top 10000 part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode),part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,part_dbp,part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_stock_bisa_jual >'0' and  part_cabang<>'20' and part_kode_group ='she' order by part_cabang asc

select top 10 * from meka..mpart
select top 10 * from meka..mtipe

select top 10000 part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode),part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_stock_bisa_jual >'0' and  part_company='30' and part_kode_group <>'oth' order by part_cabang asc


select top 100000 part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode),part_nama,part_dbp, part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_kode_wh='24'

select type_kode_group,product_nama,part_kode_wh,type_kode,type_nama,part_nama
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where 
type_kode_group like 'k%'
and part_kode_wh='80'
