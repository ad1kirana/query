select ff_cabang,ff_counter, FF_Flag_Closed, ff_kode_barang,ff_qty_masuk,ff_qty_keluar,
	(select sum(mc_qty) from meka..hffmov where MC_Sifat_Trn='-' and MC_Company=FF_Company and MC_Cabang=FF_Cabang and mc_nomor_fifo=FF_Counter 
		and MC_kode_barang=FF_Kode_Barang and MC_Warehouse=FF_Kode_WH) as qty
		from MEKA..MFFCOST
		where ff_kode_barang ='SRM62185CBH' and ff_cabang='02'
		GROUP BY FF_Company,ff_cabang,ff_counter, ff_kode_barang,ff_qty_masuk,ff_qty_keluar,FF_Kode_WH, FF_Flag_Closed
ORDER BY FF_COUNTER

21372