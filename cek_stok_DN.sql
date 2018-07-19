select top 1000 part_cabang,part_kode_wh,'',part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where --part_stock_dn <>'0' 
--or 
part_stock_bisa_jual <> part_stock_total
and part_kode_group <> 'oth'
and type_status <>'2'
--and part_kode_group like 'SHE'
--and part_cabang='20'
--and part_kode like
--and part_kode_wh<>'27'
order by part_kode_wh asc

select top 1000 part_cabang,part_kode_wh,part_kode,part_kode_group,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_stock_dn <>'0' 
and part_kode_group <> 'oth'
and type_status <>'2'
--and part_kode_group like 'SHE'
--and part_cabang='20'
--and part_kode like
--and part_kode_wh<>'27'
order by part_kode_wh asc



select top 1000 part_cabang,part_kode_wh,part_kode,part_kode_group,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where  (part_stock_dn <>'0' or part_stock_bisa_jual <> part_stock_total)
and part_kode_group <> 'oth'
and type_status <>'2'
and part_kode='SHE-HX5-15W-40(4L)' 
--SHE-RML-R240-CF(1LT)
order by part_cabang asc

select top 1000 part_cabang,part_kode_wh,part_kode,part_kode_group,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where part_stock_bisa_jual > part_stock_total
and part_kode_group <> 'oth'
and type_status <>'2'
order by part_kode_wh asc


select top 1000 part_cabang,part_kode_wh,part_kode,part_kode_group,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mtipe on part_kode=type_kode
where (part_stock_bisa_jual > part_stock_total)
and part_kode_group <> 'oth'
and type_status <>'2'
and part_cabang='30'
order by part_cabang asc

select top 10 * from meka..mpart where part_kode='SHE-SPR-G80W-90(1LT)' and part_stock_total <>'0'
