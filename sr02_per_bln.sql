
select distinct 
rtrim(b.hs_warehouse) as wh ,
rtrim(a.ds_kode_barang) as part_kode, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '01') as jan


--(select sum(c.ds_qty-c.ds_qty_retur) 
--  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
--  where a.ds_kode_barang=c.ds_kode_barang 
--  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and b.hs_warehouse=d.hs_warehouse) as YTD 
from meka..tslsd a inner join meka..tslsh b on a.ds_nomor_faktur=b.hs_nomor_faktur 
where b.hs_cabang = '01'
and a.ds_kode_product between '0' and 'zz' 
and b.hs_tanggal between '2018/01/01' and '2018/12/31' 
order by wh,part_kode asc


select c.DS_Kode_Barang,sum(c.ds_qty-c.ds_qty_retur),d.HS_WareHouse 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where
  d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '01'
and c.ds_kode_product between '0' and 'zz' 
and d.hs_tanggal between '2018/01/01' and '2018/12/31' 
group by c.DS_Kode_Barang, d.HS_WareHouse



(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '02') as feb, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '03') as mar, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '04') as apr, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '05') as may, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '06') as jun, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '07') as jul, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '08') as aug, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '09') as sep, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '10') as oct, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '11') as nov, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and b.hs_warehouse=d.hs_warehouse 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and month(d.hs_tanggal) = '12') as dec, 
(select sum(c.ds_qty-c.ds_qty_retur) 
  from meka..tslsd c inner join meka..tslsh d on c.ds_nomor_faktur=d.hs_nomor_faktur 
  where a.ds_kode_barang=c.ds_kode_barang 
  and d.hs_tanggal between '2018/01/01' and '2018/12/31' and b.hs_warehouse=d.hs_warehouse) as YTD 
from meka..tslsd a inner join meka..tslsh b on a.ds_nomor_faktur=b.hs_nomor_faktur 
where b.hs_cabang = '01'
and a.ds_kode_product between '0' and 'zz' 
and b.hs_tanggal between '2018/01/01' and '2018/12/31' 
order by wh,part_kode asc