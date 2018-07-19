select top 100 * from meka..hbsff

select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm 
where hlbm_no_lbm='010117001711bm'
select top 10 * from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po
where hpo_nomor_po='010117000210PO'

select top 10000 * from meka..hbsff right join meka..mffcost
on hf_nomor_fifo=ff_counter and 
hf_cabang=ff_cabang
where hf_kode_part like 'inpr%' and
hf_stock_awal >'0' and
hf_cabang='01' and
hf_tanggal='2017-04-01'

select top 10000 * from meka..mffcost -- right join meka..mffcost
--on hf_nomor_fifo=ff_counter and hf_cabang=ff_cabang
where ff_kode_barang like 'inpr%'
and ff_cabang='01'
and 

select top 10000 * from meka..hbsff inner join meka..hffmov
on hf_nomor_fifo=mc_nomor_fifo and 
hf_cabang=mc_cabang
where hf_kode_part like 'inpr%' and
hf_stock_awal >'0' and
hf_cabang='01' and
hf_tanggal='2017-04-01' and
mc_tanggal between '2017-04-01' and '2017-04-15'

select top 10000 * from meka..hffmov left join meka..hbsff
on mc_nomor_fifo=hf_nomor_fifo and 
mc_cabang=hf_cabang
where mc_kode_barang like 'inpr%' and
mc_cabang='01' and
mc_tanggal between '2017-04-01' and '2017-04-15'