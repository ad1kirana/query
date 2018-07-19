select a.ff_company,a.ff_cabang,b.mc_warehouse,d.wh_nama,
b.mc_no_doc,b.mc_tanggal,b.mc_kode_transaksi,c.type_kode_group,b.mc_kode_barang,c.type_nama,a.ff_qty_masuk,a.ff_qty_keluar, (a.ff_qty_masuk-a.ff_qty_keluar) as stok_akhir,b.mc_harga_pokok_unit, ((a.ff_qty_masuk-a.ff_qty_keluar)*b.mc_harga_pokok_unit) as amount, b.mc_nomor_fifo
from meka..mffcost a, meka..hffmov b,meka..mtipe c, meka..mwh d
where
a.ff_company=b.mc_company and
a.ff_cabang=b.mc_cabang and
a.ff_kode_barang=b.mc_kode_barang and
a.ff_counter=b.mc_nomor_fifo and
a.ff_kode_barang=c.type_kode and
b.mc_kode_barang=c.type_kode and
b.mc_warehouse=d.wh_kode and
b.mc_cabang=d.wh_cabang and

a.ff_flag_closed <> 'y'
and b.mc_cabang = '20'
and b.mc_sifat_trn = '+'
and mc_tanggal <='2017-06-30' 

and mc_no_doc='0103 - INITIAL STOCK'

and b.mc_kode_transaksi='ad/m'
and mc_warehouse='40'

--and c.type_kode_group='om6'
and a.ff_cabang='01'
select part_kode_group,part_nama,part_kode_wh,part_stock_total from meka..mpart
where part_stock_total <>'0'
and part_cabang='30'

select top 10 * from meka..mwh where wh_kode='40'

select a.ff_company,a.ff_cabang,b.mc_warehouse,d.wh_nama,
b.mc_no_doc,b.mc_tanggal,b.mc_kode_transaksi,c.type_kode_group,b.mc_kode_barang,c.type_nama,a.ff_qty_masuk,a.ff_qty_keluar, (a.ff_qty_masuk-a.ff_qty_keluar) as stok_akhir,b.mc_harga_pokok_unit, ((a.ff_qty_masuk-a.ff_qty_keluar)*b.mc_harga_pokok_unit) as amount
from meka..mffcost a, meka..hffmov b,meka..mtipe c, meka..mwh d
where
a.ff_company=b.mc_company and
a.ff_cabang=b.mc_cabang and
a.ff_kode_barang=b.mc_kode_barang and
a.ff_counter=b.mc_nomor_fifo and
a.ff_kode_barang=c.type_kode and
b.mc_kode_barang=c.type_kode and
b.mc_warehouse=d.wh_kode and
b.mc_cabang=d.wh_cabang and

a.ff_flag_closed <> 'y'
and b.mc_cabang = '20'
and b.mc_sifat_trn = '+'