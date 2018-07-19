select a.ff_company,a.ff_cabang,b.mc_warehouse,b.mc_no_doc,b.mc_kode_transaksi,c.type_kode_group,b.mc_kode_barang,c.type_nama,a.ff_qty_masuk,a.ff_qty_keluar, (a.ff_qty_masuk-a.ff_qty_keluar) as stok_akhir,b.mc_harga_pokok_unit, ((a.ff_qty_masuk-a.ff_qty_keluar)*b.mc_harga_pokok_unit) as amount
from meka..mffcost a, meka..hffmov b,meka..mtipe c
where
a.ff_company=b.mc_company and
a.ff_cabang=b.mc_cabang and
a.ff_kode_barang=b.mc_kode_barang and
a.ff_counter=b.mc_nomor_fifo and
a.ff_kode_barang=c.type_kode and
b.mc_kode_barang=c.type_kode and

a.ff_flag_closed <> 'y'
and b.mc_cabang <> '20'
and b.mc_sifat_trn = '+'
and mc_tanggal <'2013-10-20' 
