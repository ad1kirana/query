select top 1000000 part_cabang,part_kode_wh,type_status,part_kode_group,rtrim(part_kode)as part_kode,part_nama,type_harga_beli,type_harga_jual,type_harga_beli3,type_harga_jual3,part_dbp, part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode 
inner join meka..mprod on type_kode_group=product_kode
where 
--part_kode_wh='01' and
part_cabang between '20' and '22'
and type_status <>'2'
group by PART_Kode_WH, part_cabang, TYPE_STATUS, PART_Kode_Group, part_kode, PART_Nama, 
TYPE_HARGA_BELI,type_harga_jual,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,PART_DBP, PART_Harga_Jual
order by PART_Kode_Group asc, PART_Kode asc

--and part_kode_wh='25'
--and part_stock_bisa_jual>'1'
and part_kode_group like 'oth' 
--and part_kode like 'jasa-oil%'
and product_supplier='001'

select top 1000000 part_cabang,part_kode_wh,type_status,part_kode_group,rtrim(part_kode)as part_kode,part_nama,type_harga_beli,type_harga_jual,type_harga_beli3,type_harga_jual3,part_dbp, part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode 
inner join meka..mprod on type_kode_group=product_kode
where 
--part_kode_wh='01' and
part_cabang between '20' and '22'
and type_status <>'2'
--group by PART_Kode_WH, part_cabang, TYPE_STATUS, PART_Kode_Group, part_kode, PART_Nama, 
--TYPE_HARGA_BELI,type_harga_jual,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3,PART_DBP, PART_Harga_Jual
order by PART_Kode_Group asc, PART_Kode asc


select top 100000 part_cabang,part_kode_wh,part_kode_group,rtrim(part_kode),type_status,type_nama,part_nama,part_dbp, part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where 
--part_cabang between'03' and '08' --and type_status <>'2' and
type_kode_group like 'ba%'

--donlod_harga_incoe_distribusi
select top 1000000 part_cabang,part_kode_wh,type_status,part_kode_group,rtrim(part_kode),type_harga_beli,type_harga_jual,part_nama,part_dbp, part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode 
inner join meka..mprod on type_kode_group=product_kode
where 
--part_kode_wh='01' and
part_cabang between '01' and '02'
and type_status ='0'
and part_kode_group like 'in%' 
and product_supplier='001'

--donlod_harga_incoe_carfix
select top 1000000 part_cabang,part_kode_wh,type_status,part_kode_group,rtrim(part_kode),type_harga_beli3,type_harga_jual3,part_nama,part_dbp, part_harga_jual
from meka..mpart inner join meka..mtipe on part_kode=type_kode 
inner join meka..mprod on type_kode_group=product_kode
where 
--part_kode_wh='01' and
part_cabang between '03' and '08'
and type_status ='0'
and part_kode_group like 'in%' 
and product_supplier='001'


select top 10 * from meka..mprod


select * from meka..mpart where part_kode_wh='23' and part_kode_group='oth' and part_kode like 'jasa-oil%'

--update meka..mpart set Part_stock_bisa_jual='1000' from meka..mpart where part_kode_wh='24' and part_kode_group='oth' 
select * from meka..mpart where part_kode_wh='24' and part_kode_group='oth'