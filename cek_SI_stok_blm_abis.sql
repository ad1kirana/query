select  mc_nomor_fifo,dp_nomor_s_invoice,mc_tanggal,mc_kode_barang,mc_qty from meka..hffmov inner join meka..tsid
on mc_no_doc=dp_nomor_wrs  and mc_kode_barang=dp_kode_barang and mc_cabang=dp_cabang
inner join meka..mffcost on dp_kode_barang=ff_kode_barang and mc_cabang=ff_cabang and mc_nomor_fifo=ff_counter and mc_warehouse=ff_kode_wh and dp_cabang=ff_cabang 
where mc_cabang='30' and mc_kode_transaksi='beli' and mc_kode_barang like '%18W/7%' and ff_flag_closed <> 'y'

select * from meka..mffcost inner join meka.. hffmov 
on ff_counter=mc_nomor_fifo and ff_company=mc_company and ff_cabang=mc_cabang and ff_kode_barang=mc_kode_barang and ff_kode_wh=mc_warehouse
where ff_flag_closed='n' and ff_kode_barang like '%18w/7%'
and mc_sifat_trn='+'


select a.ff_company,a.ff_cabang,b.mc_warehouse,b.mc_no_doc,b.mc_tanggal,b.mc_kode_transaksi,c.type_kode_group,b.mc_kode_barang,c.type_nama,a.ff_qty_masuk,a.ff_qty_keluar, (a.ff_qty_masuk-a.ff_qty_keluar) as stok_akhir,b.mc_harga_pokok_unit, ((a.ff_qty_masuk-a.ff_qty_keluar)*b.mc_harga_pokok_unit) as amount
from meka..mffcost a, meka..hffmov b,meka..mtipe c,meka..tsid d
where
a.ff_company=b.mc_company and
a.ff_cabang=b.mc_cabang and
a.ff_kode_barang=b.mc_kode_barang and
a.ff_counter=b.mc_nomor_fifo and
a.ff_kode_barang=c.type_kode and
b.mc_kode_barang=c.type_kode and
b.mc_no_doc=d.dp_nomor_wrs  and 
b.mc_kode_barang=d.dp_kode_barang and 
mc_kode_barang like 'L 18W/7%' and
a.ff_flag_closed <> 'y'
and b.mc_cabang <> '30'
and b.mc_kode_transaksi='beli'
and mc_tanggal <='2015-01-14' 
