select top 10 dts_nomor_t_stock,hts_tanggal,hts_kode_warehous,hts_jenis_spb,hts_creator,hts_keterangan
--select top 10 * 
 from meka..ttsh inner join meka..ttsd on hts_no_Tran_stock=dts_nomor_t_stock where hts_jenis_spb like 'ib%' and hts_tanggal between '2013-12-01' and '2013-12-31'
select top 10 * from meka..ttsd

select mc_cabang,mc_tanggal,mc_kode_transaksi,mc_no_doc,mc_kode_product,mc_kode_barang,mc_qty,mc_harga_pokok_unit from meka..hffmov where mc_kode_transaksi like 'ib%' and mc_tanggal between '2013-12-01' and '2013-12-31'