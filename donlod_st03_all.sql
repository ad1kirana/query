select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '01' and '35' 
and part_kode_group<>'oth'
and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'

--and PART_Kode='OM6-594375'
union all
select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '030' and '30' 
and part_kode_group<>'oth'
and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'


select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '01' and '01' 
and part_kode_group='she'
and (part_stock_bisa_jual+part_stock_dn+part_stock_total) <>'0'
order by PART_CABANG ASC, PART_KODE_WH ASC, product_group asc, part_kode_group asc, kode asc 

--cek stok not balance
select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '01' and '35' and
part_kode_group<>'oth'
and part_stock_bisa_jual<>part_stock_total
and PART_Stock_DN='0'
union all
select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where part_cabang between '01' and '35' and
part_kode_group<>'oth'
and part_stock_bisa_jual>part_stock_total
and PART_Stock_DN='0'
order by product_group asc


select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where -- part_cabang between '01' and '01' 
part_cabang<>'20'
and part_kode_group<>'oth'
--and product_supplier='002'
--and part_kode_wh='04' 
--and part_kode_wh='04' 
and part_stock_total >'0'-- or part_stock_bisa_jual >'0'
order by product_group asc

select top 10 * from meka..mprod

select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
where -- part_cabang between '01' and '01' 
part_cabang='20'
and part_stock_total >'0'-- or part_stock_bisa_jual >'0'
order by product_group asc

--cek stok not balance_join_mtipe
select part_cabang,part_kode_wh,product_group,part_kode_group,rtrim(part_kode) as kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total,type_materialtype
from meka..mpart inner join meka..mprod on part_kode_group=product_kode
inner join meka..mtipe on part_kode=type_kode
where --part_cabang between '02' and '02' 
--part_cabang='02'and
part_kode_group<>'oth'
and part_stock_bisa_jual<>part_stock_total
--and part_stock_bisa_jual>part_stock_total
order by product_group asc

select top 3 * from meka..mtipe