select top 10 * from meka..mffcost
select top 10 * from meka..hffmov

select rtrim(mc_no_doc),mc_tanggal,  mc_kode_barang, mc_qty, mc_kode_transaksi,mc_sifat_trn, mc_harga_pokok_unit,(mc_qty*mc_harga_pokok_unit) from meka..hffmov where mc_cabang='03' and mc_tanggal between '2016-01-01' and '2016-05-31'
select rtrim(mc_no_doc),mc_tanggal,  mc_kode_barang, mc_qty, mc_kode_transaksi,mc_sifat_trn, mc_harga_pokok_unit from meka..hffmov inner join meka..mprod on mc_kode_product=product_kode where mc_cabang='03' and product_group='002'



select mc_cabang,mc_warehouse ,rtrim(mc_no_doc),mc_tanggal,  mc_kode_barang, mc_qty, mc_kode_transaksi,mc_sifat_trn, mc_harga_pokok_unit
from meka..hffmov where --mc_kode_barang like 'OP-02-BEA-KYO -002' and 
--mc_tanggal between '2016-10-01' and '2016-10-31' and
mc_cabang='03' and 
--mc_no_doc='010316001074BM' and
mc_kode_barang='otp.185'and 


select rtrim(mc_no_doc),mc_tanggal,  mc_kode_barang, mc_qty, mc_kode_transaksi,mc_sifat_trn, mc_harga_pokok_unit,(mc_qty*mc_harga_pokok_unit) from meka..hffmov where mc_cabang='03' and mc_tanggal between '2016-01-01' and '2016-05-31'
select top 10 * from meka..hffmov where mc_no_doc='010316001074BM'