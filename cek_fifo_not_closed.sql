select stok_company,stok_cabang,stok_kode_product,stok_kode_barang,stok_warehouse,stok_tanggal,rtrim(stok_no_doc),stok_kode_transaksi,stok_kode_cust_sup,stok_qty,stok_sifat_trn
from meka..hkstok
where stok_cabang='03'
and stok_tanggal between '2001-09-01' and '2016-11-30'
and stok_kode_BARANG like 'bulb-003'

select top 10000 mc_company,mc_cabang,mc_nomor_fifo,mc_tanggal,mc_kode_barang,mc_qty,mc_kode_transaksi,mc_no_doc,mc_warehouse,mc_sifat_trn
--select top 3 * 
from meka..hffmov
where --mc_no_doc='010315006352bm' and
mc_nomor_fifo='45849' and
mc_cabang='03' and
mc_kode_barang='otp.185'

select top 10 * from meka..mffcost where ff_counter='45849'
select top 1000 * from meka..mffcost where ff_kode_barang='otp.185' and ff_cabang='03'
and ff_flag_closed='n' and ff_qty_keluar <> ff_qty_masuk 
select top 1000 * from meka..mffcost where ff_qty_keluar > ff_qty_masuk and ff_flag_closed='n'

select top 10 * from meka..mffcost where ff_counter='83588'
select top 100 * from meka..mffcost where ff_counter='75982'and ff_kode_barang='acc.072' and ff_cabang='03'