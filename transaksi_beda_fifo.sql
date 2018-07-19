select t.mc_no_doc, t.mc_kode_barang, t.mc_nomor_fifo, t.mc_harga_pokok_unit
from(
  select mc_no_doc, mc_kode_barang, mc_nomor_fifo, mc_harga_pokok_unit
  from meka..hffmov
  group by mc_no_doc, mc_kode_barang, mc_nomor_fifo, mc_harga_pokok_unit
) r
inner join meka..hffmov t on t.mc_no_doc=r.mc_no_doc 
and t.mc_kode_barang =r.mc_kode_barang
where 
t.mc_kode_barang='ACC.072'
and t.mc_harga_pokok_unit<>r.mc_harga_pokok_unit
--and t.mc_kode_transaksi = 'sls'
order by t.mc_no_doc asc, t.mc_kode_barang asc, t.mc_nomor_fifo asc


--transaksi beda fifo
select t.mc_no_doc, t.mc_kode_barang, t.mc_nomor_fifo, t.mc_qty
from
(  select mc_no_doc, mc_kode_barang, mc_nomor_fifo
  from meka..hffmov
  group by mc_no_doc, mc_kode_barang, mc_nomor_fifo
) r
inner join meka..hffmov t on t.mc_no_doc=r.mc_no_doc 
and t.mc_kode_barang =r.mc_kode_barang
where 
t.mc_nomor_fifo<>r.mc_nomor_fifo and
and t.mc_cabang='03'
and t.mc_kode_barang='SHE-HX7-10W-40(4LT)'


t.mc_tanggal
--

select stok_cabang,
convert(varchar(10),stok_tanggal,103) as tgl,
stok_warehouse,
stok_kode_barang,
stok_qty,
stok_no_doc,
stok_kode_transaksi,
stok_kode_product
from 


meka..hkstok left join meka..hffmov on stok_no_doc=mc_no_doc and stok_kode_barang=mc_kode_barang
where stok_kode_barang='SHE-HX7-10W-40(4LT)' 
and stok_cabang='03' 
and stok_kode_transaksi not like 't%'
and STOK_Tanggal>='2017-01-01'
and mc_qty is null 



--

select t.mc_cabang, t.mc_tanggal as tgl ,t.mc_no_doc, t.mc_kode_barang, t.mc_nomor_fifo, t.mc_qty
from(
  select mc_no_doc, mc_kode_barang, mc_nomor_fifo
  from meka..hffmov
  group by mc_no_doc, mc_kode_barang, mc_nomor_fifo
) r
inner join meka..hffmov t on t.mc_no_doc=r.mc_no_doc 
and t.mc_kode_barang =r.mc_kode_barang
where 
t.mc_kode_barang='SHE-HX7-10W-40(4LT)'
and t.mc_nomor_fifo<>r.mc_nomor_fifo
order by tgl desc
----
select stok_cabang,
stok_tanggal as tgl,
stok_kode_transaksi,
stok_warehouse,
stok_no_doc,
stok_kode_product,
stok_kode_barang,
stok_qty,
a.qty as qty_fifo,
(STOK_Qty-a.qty) as selisih



from 
(select t.mc_cabang as cab, t.mc_tanggal as tgl ,t.mc_no_doc as doc, t.mc_kode_barang as brg,  sum(t.mc_qty) as qty
from(
  select mc_no_doc, mc_kode_barang, mc_nomor_fifo
  from meka..hffmov
  group by mc_no_doc, mc_kode_barang, mc_nomor_fifo
) r
inner join meka..hffmov t on t.mc_no_doc=r.mc_no_doc 
and t.mc_kode_barang =r.mc_kode_barang
where
t.MC_Cabang='03' and 
t.mc_kode_barang='AMB.002'
and t.mc_nomor_fifo<>r.mc_nomor_fifo
and t.MC_Tanggal >= '2017-01-01' 
group by t.mc_cabang, t.mc_tanggal  ,t.mc_no_doc, t.mc_kode_barang) a
right join meka..hkstok  on stok_no_doc=a.doc and stok_kode_barang=a.brg
where stok_kode_barang='AMB.002' 
and stok_cabang='03' 
and stok_kode_transaksi not like 't%'
and STOK_Tanggal >= '2017-01-01' 
--and a.qty is not null
--and (STOK_Qty-a.qty) <> '0'
order by tgl desc