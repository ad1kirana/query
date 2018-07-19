select top 10 * from meka..torderd where ds_kode_barang='OP-02-BEA-NCH-001'
select top 10 * from meka..torderd where ds_nomor_faktur='010417000481OR'

select top 10 * from meka..torderh where hs_nomor_faktur='010417000481OR'
select top 10 * from meka..tspkm where hs_nomor_spk='010417000507SP'

select top 10 * from meka..mpart where part_kode='OP-02-BEA-NCH-001' and part_kode_wh='20'
--update meka..mpart set part_stock_bisa_jual='1', part_stock_dn='0' from meka..mpart where part_kode='OP-02-BEA-NCH-001' and part_kode_wh='20'