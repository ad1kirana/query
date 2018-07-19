select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,PART_DBP
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '01' and '02' and part_stock_bisa_total>'0' and part_kode_group <>'oth' 
union all
select  part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,PART_DBP
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '30' and '35' and part_stock_bisa_total>'0' and part_kode_group <>'oth' order by product_group asc

select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,PART_DBP
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '07' and '20' and PART_Stock_Total>'0' and part_kode_group <>'oth' 
order by part_cabang asc, PART_Kode_WH asc, PRODUCT_GROUP asc, PART_Kode_Group asc, part_kode asc

select top 10 * from meka..mpart where part_kode='ECA272000-3400'
--update meka..mpart set part_stock_bisa_jual='4', part_stock_total='4' from meka..mpart where part_kode='ECA272000-3400' and part_kode_wh='15'
JS260340-0310

select * from meka..mprod where product_kode='tor'

select rtrim(part_kode) as kode,part_dbp
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang='' and part_stock_bisa_jual>'0' and part_kode_group <>'oth' order by product_group asc

select part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode) as kode,part_nama,part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_cabang between '03' and '07' and part_kode_group ='oth'
and type_status = '0'

select rtrim(type_kode) as kode,type_nama,type_harga_beli,type_harga_jual3
from meka..mtipe 
where type_kode_group ='ach'
and type_status = '0'

select part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode) as kode,part_nama,part_dbp,part_harga_jual
--select top 10 * 
from meka..mpart where part_cabang between '03' and '07' and part_kode_group ='ach'


