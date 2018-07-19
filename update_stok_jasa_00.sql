 JASA-ENG.255

	select top 10 * from meka..mtipe where type_kode_group='oth' and type_materialtype<>'s'
--update meka..mtipe set type_materialtype='S' from meka..mtipe where type_kode_group='oth' and type_materialtype<>'s'
--update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000'
from meka..mpart where part_kode like 'JASA-oil%' and part_kode_group='oth' and part_kode_wh='20'
--update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000'
from meka..mpart where part_kode like 'JASA-ENG.320%' and part_kode_group='oth' and part_kode_wh='21'
--update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000'
from meka..mpart where part_kode like 'JASA-CLH.058%' and part_kode_group='oth' and part_kode_wh='15'
--update meka..mpart set part_stock_bisa_jual='1000',part_stock_total='1000'
from meka..mpart where part_kode like 'JASA-BAT.005' and part_kode_group='oth' and part_kode_wh='21'

select top 10000 * from meka..mtipe where type_kode_group='oth' and type_status='0'

--update meka..mpart set part_stock_bisa_jual='1000'
--select * 
from meka..mpart where part_kode_group='oth' and part_kode_wh='28'