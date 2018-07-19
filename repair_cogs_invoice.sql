select top 10 hs_nomor_faktur,ds_kode_barang,ds_qty, ds_tot_harga_pokok,ds_sel_cgsdbp from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010516008121FP'
select top 10 hs_nomor_faktur,ds_kode_barang,ds_qty, ds_tot_harga_pokok,ds_sel_cgsdbp from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010516008418FP'
select top 10 hs_nomor_faktur,ds_kode_barang,ds_qty, ds_tot_harga_pokok,ds_sel_cgsdbp from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010516008545FP'
select top 10 hs_nomor_faktur,ds_kode_barang,ds_qty, ds_tot_harga_pokok,ds_sel_cgsdbp from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010516008670FP'
select top 10 hs_nomor_faktur,ds_kode_barang,ds_qty, ds_tot_harga_pokok,ds_sel_cgsdbp from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010516008671FP'


select top 10 * from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur=''

--update meka..tslsd set ds_tot_harga_pokok='336220' from meka..tslsd where ds_nomor_faktur='010516008121FP' and ds_kode_barang='SHE-HX8SYN-5W30(4L)'
--update meka..tslsd set ds_tot_harga_pokok='200000' from meka..tslsd where ds_nomor_faktur='010516008418FP' and ds_kode_barang='OP-01-BJ-555-007'
--update meka..tslsd set ds_tot_harga_pokok='50000' from meka..tslsd where ds_nomor_faktur='010516008545FP' and ds_kode_barang='OP-17-BK-OTH-002'

