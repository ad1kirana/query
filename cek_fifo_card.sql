select top 1000 * from meka..mffcost where ff_kode_barang='08880-83220' and ff_cabang='05' and ff_counter='5271'

select top 1000 * from meka..mffcost where ff_cabang='03' and ff_counter='83656'
select top 1000 * from meka..hffmov where mc_nomor_fifo='12529' and mc_cabang='05' order by mc_tanggal desc

select top 1000 * from meka..hffmov where mc_kode_barang='BUSHING-041' and mc_cabang='03' and mc_nomor_fifo='83656'
select sum(mc_qty) from meka..hffmov where mc_kode_barang='08880-83220' and mc_cabang='05' and mc_nomor_fifo='5271' and mc_sifat_trn='-'

--update meka..mffcost set ff_qty_keluar='18' from meka..mffcost where ff_kode_barang='SHE-HX7-10W-40(4LT)' and ff_cabang='03' and ff_counter='78711'

select top 10 * from meka..mpart where part_kode like '08880-8%' and part_stock_bisa_jual <> '0'

select top 1000 * from meka..mffcost where ff_kode_barang='ECA028300-5820' and ff_cabang='01' and ff_counter='5001'
--update meka..mffcost set ff_qty_keluar='6', ff_flag_closed='N' from meka..mffcost where ff_kode_barang='ECA028300-5820' and ff_cabang='01' and ff_counter='5001'


select rtrim(mc_no_doc)as doku ,mc_tanggal,(mc_qty*mc_harga_pokok_unit) as amount from meka..hffmov where mc_tanggal between '2016-04-01' and '2016-04-30' and mc_cabang='03'

select top 10 * from meka..mpart where part_kode='BUSHING-041' and part_kode_wh='15'
--update meka..mpart set part_stock_bisa_jual='0' from meka..mpart where part_kode='BUSHING-041' and part_kode_wh='15'