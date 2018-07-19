select * from meka..mpart inner join meka..mtipe
on part_kode=type_kode and part_kode_group=type_kode_group
where part_kode_group='oth' and part_kode_wh='21'
and type_status='0'
and part_stock_bisa_jual >'0'
order by part_kode asc
and part_kode like 'r2-%'


--update meka..mtipe set type_status='2' from meka..mpart inner join meka..mtipe
on part_kode=type_kode and part_kode_group=type_kode_group
where part_kode_group='oth' and part_kode_wh='15'
and type_status='0'
and part_stock_bisa_jual ='0'

--update meka..mtipe set type_status='0' from meka..mpart inner join meka..mtipe
on part_kode=type_kode and part_kode_group=type_kode_group
where part_kode_group='oth' and part_kode_wh='20'
and type_status<>'0'
and part_kode like 'r2-%'

update meka..mpart set part_stock_bisa_jual='0',part_stock_total='0',part_stock_dn='0' from meka..mpart 
where part_kode_group='oth' and part_kode='JASA-FIX1.1412' and part_kode_wh='23'
update meka..mpart set part_stock_bisa_jual='0',part_stock_total='0',part_stock_dn='0' from meka..mpart 
where part_kode_group='oth' and part_kode='JASA-FIX2.1412' and part_kode_wh='23'
update meka..mpart set part_stock_bisa_jual='0',part_stock_total='0',part_stock_dn='0' from meka..mpart 
where part_kode_group='oth' and part_kode='JASA-FIX3.1412' and part_kode_wh='23'
update meka..mpart set part_stock_bisa_jual='0',part_stock_total='0',part_stock_dn='0' from meka..mpart 
where part_kode_group='oth' and part_kode='JASA-FIX4.1412' and part_kode_wh='23'

inner join meka..mtipe

select part_kode_wh,part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total from meka..mpart
where part_kode_group='oth' and part_kode_wh='15'
inner join meka..mtipe
where part_kode_group='oth' and part_kode_wh='15'


select * from meka..mpart inner join meka..mtipe
on part_kode=type_kode and part_kode_group=type_kode_group
where part_kode_group='oth' and part_kode_wh='21'
and type_status='0'
and part_stock_bisa_jual >'0'

--update meka..mpart set part_stock_bisa_jual='0',part_stock_total='0',part_stock_dn='0' from meka..mpart where part_kode_group='oth' and part_kode_wh='21'

inner join meka..mtipe

select part_kode_wh,part_kode_group,part_kode,part_nama,part_stock_bisa_jual,part_stock_dn,part_stock_total from meka..mpart
where part_kode_group='oth' and part_kode_wh='15'
inner join meka..mtipe
where part_kode_group='oth' and part_kode_wh='15'

--update meka..mpart set part_stock_bisa_jual='1000'
from meka..mpart where part_kode_group='oth' 
and part_kode_wh='21'
and part_kode = 'JASA-BAT.005'
JASA-BAT.005
--update meka..mpart set part_stock_bisa_jual='1000'
from meka..mpart where part_kode_group='oth' 
and part_kode_wh='28'
and part_kode = 'jasa-tre.006'


select * from meka..mpart where part_kode like 'JASA-ENG.518' and part_kode_group='oth' and part_kode_wh='15'

update meka..mpart set part_stock_bisa_jual='10000',part_stock_total='10000' from meka..mpart where part_kode like 'JASA-ENG.518' and part_kode_group='oth' and part_kode_wh='25'

select top 10 * from meka..mtipe where type_kode_group='oth' and type_materialtype<>'s'
--update meka..mtipe set type_materialtype='S' from meka..mtipe where type_kode_group='oth' and type_materialtype<>'s'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-AC.%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BAT%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BDY%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BRK%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-CLH%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-ELC%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-ENG%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-OIL%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-STR%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-TRE%' and part_kode_group='oth' and part_kode_wh='15'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-UND%' and part_kode_group='oth' and part_kode_wh='15'

update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-AC.%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BAT%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BDY%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BRK%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-CLH%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-ELC%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-ENG%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-OIL%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-STR%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-TRE%' and part_kode_group='oth' and part_kode_wh='21'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-UND%' and part_kode_group='oth' and part_kode_wh='21'

update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-AC.%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BAT%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BDY%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-BRK%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-CLH%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-ELC%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-ENG%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-OIL%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-STR%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-TRE%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'JASA-UND%' and part_kode_group='oth' and part_kode_wh='20'
update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000' from meka..mpart where part_kode like 'r2-%' and part_kode_group='oth' and part_kode_wh='20'

