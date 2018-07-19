TYPE_MaterialType,TYPE_SATUAN,TYPE_VOLUME,TYPE_BERAT,TYPE_LAST,TYPE_STATUS,TYPE_KODE_SPL_2

select distinct(type_kode),description,type_kode_group,product_nama,product_supplier,sup_nama,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,TYPE_KODE_SPL_1,part_dbp,part_harga_jual,TYPE_MaterialType,TYPE_SATUAN,TYPE_VOLUME,TYPE_BERAT,TYPE_LAST,TYPE_STATUS,TYPE_KODE_SPL_2,TYPE_Createdate
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where 
part_cabang between '03' and '08'
group by description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,type_kode_spl_1,part_stock_bisa_jual,part_stock_total,part_dbp,part_harga_jual,TYPE_MaterialType,TYPE_SATUAN,TYPE_VOLUME,TYPE_BERAT,TYPE_LAST,TYPE_STATUS,TYPE_KODE_SPL_2,TYPE_Createdate
order by TYPE_KODE asc






select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '03' and '08' 
and part_kode_group<>'oth'
and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'

select type_kode_group,part_kode_wh,part_stock_bisa_jual,type_kode,type_nama,type_status,type_kode_spl_1,type_kode_spl_1,part_stock_bisa_jual,PART_Stock_DN, part_stock_total,part_dbp,part_harga_jual
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where type_status='0'
--and part_kode_wh ='31'
and part_cabang between '03' and '08'
and type_kode_group <> 'oth'
--and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'
and type_Kode='BA2.001      '
--and TYPE_KODE_SPL_1='-'
union all
select type_kode_group,part_kode_wh,part_stock_bisa_jual,type_kode,type_nama,type_status,type_kode_spl_1,type_kode_spl_1,part_stock_bisa_jual,part_stock_total,part_dbp,part_harga_jual
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where type_status='0'
--and part_kode_wh ='31'
and part_cabang between '03' and '08'
and type_kode_group <> 'oth'
and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'
and TYPE_KODE_SPL_1 is null


select description,type_kode_group,product_nama,part_kode_wh,part_stock_bisa_jual,product_supplier,sup_nama,type_kode,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,type_kode_spl_1,part_stock_bisa_jual,part_stock_total,part_dbp,part_harga_jual
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where --type_status<>'2'
--and part_kode_wh ='31' and 
part_cabang between '03' and '08'
--and type_kode_group <>'oth'
--and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'

group by description,type_kode_group,product_nama,part_kode_wh,part_stock_bisa_jual,product_supplier,sup_nama,type_kode,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,type_kode_spl_1,part_stock_bisa_jual,part_stock_total,part_dbp,part_harga_jual
order by TYPE_KODE asc

select description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,type_kode_spl_1
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) 
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group)
where type_status<>'2'
group by description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,type_kode_spl_1


select type_kode_group,product_nama,type_kode,type_nama,type_kode_spl_1,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) 
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group)
where type_status<>'2'

select description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,type_status,type_kode_spl_1,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where type_status<>'2'
--and part_kode_wh ='31'
and part_cabang between '03' and '08'
and type_kode_group <>'oth'
and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'

group by description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,type_status,type_kode_spl_1
order by TYPE_KODE asc
