b.hf_cabang,
a.type_kode_group,
b.hf_kode_part,
b.hf_nomor_fifo,
b.hf_stock_awal
from meka..mtipe a 
left join meka..hbsff b on a.type_kode=b.hf_kode_part
left join 
where b.hf_company between '01' and '01'
and a.type_kode_group between 'kxa' and 'kxa'
and b.hf_tanggal between '2017/03/01' and '2017/03/31'

group by b.hf_cabang, b.hf_nomor_fifo, a.type_kode_group, b.hf_kode_part

select mc_cabang,mc_kode_product,mc_kode_barang,mc_nomor_fifo, 
(select mc_qty from meka..hffmov  where mc_sifat_trn='+' and mc_tanggal between '2017-04-01' and '2017-04-17'
 group by mc_cabang,mc_nomor_fifo, mc_kode_product, mc_kode_barang, mc_qty)

from  meka..hffmov 
left join meka..hbsff on mc_nomor_fifo=hf_nomor_fifo and mc_kode_barang=hf_kode_part and mc_cabang=hf_cabang
where mc_kode_product='inp'
and mc_cabang='01'
and mc_tanggal between '2017-04-01' and '2017-04-17'
group by mc_cabang,mc_kode_product,mc_kode_barang,mc_nomor_fifo

------------------------------

select 
hf_cabang, mc_kode_product, hf_kode_part, hf_nomor_fifo, 
(select sum(hf_stock_awal) from meka..hbsff where hf_tanggal between'2016/01/01' and '2016/01/31' 
and hf_cabang=mc_cabang and hf_kode_part=mc_kode_barang and mc_nomor_fifo=hf_nomor_fifo 
group by hf_cabang, hf_kode_part, hf_nomor_fifo) as awal,
(select sum(mc_qty) from meka..hffmov where mc_sifat_trn = '+' and mc_tanggal between'2016/01/01' and '2016/01/31' 
and hf_cabang=mc_cabang and hf_kode_part=mc_kode_barang and mc_nomor_fifo=hf_nomor_fifo 
group by mc_cabang, mc_kode_barang, mc_nomor_fifo) as masuk,
(select sum(mc_qty) from meka..hffmov where mc_sifat_trn = '-' and mc_tanggal between'2016/01/01' and '2016/01/31' 
and hf_cabang=mc_cabang and hf_kode_part=mc_kode_barang and mc_nomor_fifo=hf_nomor_fifo 
group by mc_cabang, mc_kode_barang, mc_nomor_fifo) as keluar

from meka..hffmov
left join meka..hbsff on mc_nomor_fifo=hf_nomor_fifo 
and mc_cabang=hf_cabang 
and mc_kode_barang=hf_kode_part
where hf_cabang = '01'
and mc_kode_product between 'INF' and 'INP'
and mc_tanggal between '2016/01/01' and '2016/01/31'
group by hf_cabang,mc_cabang, mc_kode_barang, hf_kode_part, mc_nomor_fifo, hf_nomor_fifo, mc_kode_product