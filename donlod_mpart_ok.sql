select description,type_kode_group,product_nama,part_kode_wh,part_stock_bisa_jual,product_supplier,sup_nama,type_kode,type_nama,type_harga_beli,type_harga_jual,type_status,type_kode_spl_1,part_stock_bisa_jual,part_stock_total,part_dbp,part_harga_jual
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where type_status='0'
--and part_kode_wh ='31'
and part_cabang between '03' and '08'
and type_kode_group <>'oth'
--and part_stock_bisa_jual <>'0'
--and product_supplier='002'
--and part_kode_wh='80'
--and part_stock_bisa_jual>'0'
--and type_kode_group not like 'b%'


--cek_diskripsi_inq_beda_dg_material_katalok
select type_kode_group,part_cabang,part_kode_wh,product_supplier,type_kode,type_nama,part_nama,type_harga_beli,type_harga_jual,type_status,part_dbp,part_harga_jual, part_stock_bisa_jual
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
inner join meka..mwh on part_kode_wh=wh_kode
where part_cabang between '01' and '35' 
--and type_nama<>part_nama
--and part_nama like '%stopper%'
and type_status='2'
--and type_nama ='[PART di BLOK]'
and wh_status='0'
--and part_stock_bisa_jual <>'0'
--and type_kode_group='otp'
and part_nama not like 'op-%'
and part_stock_bisa_jual >'0'


select part_cabang,part_kode_wh,description,type_kode,type_nama,type_harga_beli,type_harga_jual,type_harga_jual2,type_harga_jual3,type_harga_jual4,type_status,type_kode_spl_1,
part_stock_bisa_jual,part_stock_total,part_dbp,part_harga_jual
from (((meka..mtipe inner join meka..mprod on type_kode_group=product_kode) inner join meka..mpart
on type_kode=part_kode)
inner join meka..mspl on product_supplier=sup_kode_supplier)  inner join meka..mgprod on product_group=kode_group
where type_status='2'
and PART_Stock_Bisa_Jual<>'0'
and type_kode_group <> 'oth'
--and part_kode_wh ='31'
and part_cabang between '01' and '02'


select top 1 * from meka..mtipe
select top 1 * from meka..mprod 
select top 1 * from meka..mgprod 
where part_kode_wh='20' and part_kode='sta.004' and part_kode_group='tgp'

--mtipe
select description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,type_harga_beli,type_harga_jual,type_status,type_kode_spl_1
from meka..mtipe inner join meka..mprod on type_kode_group=product_kode
inner join meka..mspl on product_supplier=sup_kode_supplier inner join meka..mgprod on product_group=kode_group
where type_status='0'
--and part_kode_wh ='31'
--and type_kode_group like 'om6'
--and part_stock_bisa_jual <>'0'
and product_supplier='002'
and type_kode_group not like 'b%'

select top 100 * from meka..mgprod
select top 100 * from meka..mspl where sup_nama like '%king%'




--update meka..mpart set part_kode_group='STA' from meka..mpart where part_kode_wh='20' and part_kode='sta.004' and part_kode_group='tgp'