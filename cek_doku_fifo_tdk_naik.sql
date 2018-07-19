select stok_cabang,
stok_tanggal as tgl,
stok_kode_transaksi,
stok_warehouse,
stok_no_doc,
stok_kode_product,
stok_kode_barang,
stok_qty,
a.qty as qty_fifo,
(STOK_Qty-isnull(a.qty,0)) as selisih
from 
(select t.mc_cabang as cab, t.mc_tanggal as tgl ,t.mc_no_doc as doc, t.mc_kode_barang as brg,  sum(t.mc_qty) as qty
from(
  select mc_no_doc, mc_kode_barang, mc_nomor_fifo
  from meka..hffmov
  group by mc_no_doc, mc_kode_barang, mc_nomor_fifo
) r
inner join meka..hffmov t on t.mc_no_doc=r.mc_no_doc 
and t.MC_NOMOR_FIFO=r.MC_NOMOR_FIFO
and t.mc_kode_barang =r.mc_kode_barang
where
t.MC_Cabang='02' 

and t.mc_kode_barang='EMO-2233'

and t.MC_Tanggal between '2018/06/01' and  '2018/06/03'
group by t.mc_cabang, t.mc_tanggal  ,t.mc_no_doc, t.mc_kode_barang) a
right join meka..hkstok  on stok_no_doc=a.doc and stok_kode_barang=a.brg 
where stok_kode_barang='EMO-2233' and
 stok_cabang='02' 

and stok_kode_transaksi not like 't%'
and STOK_Tanggal between '2018/06/01' and  '2018/06/03'

and (STOK_Qty-isnull(a.qty,0)) <> '0'
order by tgl desc