select top 10 * from meka..tpjkd where dokumen='010515002456FP' and faktur_pajak='010.000-15.44181445'

select top 10 * from meka..tpjkh where faktur_pajak='010.000-15.44181445'

select top 10 * from meka..tpjkd
--update meka..tpjkd set nilai_dokumen='767000', diskon='-247000' from meka..tpjkd where dokumen='010515002456FP' and faktur_pajak='010.000-15.44181445'
--update meka..tpjkh set nilai_faktur='767000', diskon='247000' from meka..tpjkh where faktur_pajak='010.000-15.44181445'
767000	247000

select top 10 * from meka..tslsh where hs_nomor_faktur='010515002456FP'
select top 10 * from meka..tslsd where ds_nomor_faktur='010515002456FP' and ds_kode_barang='JASA-ENG.136' 
--update meka..tslsh set hs_total_belum_disc='767000', hs_nilai_disc3_after='767000', hs_nsudah_disc='767000', hs_nilai_disc4='247000' from meka..tslsh where hs_nomor_faktur='010515002456FP'
--update meka..tslsd set ds_amount_d4='149999' from meka..tslsd where ds_nomor_faktur='010515002456FP' and ds_kode_barang='JASA-ENG.136' 

select top 10 * from meka..torderh where hs_nomor_faktur='010515002514OR'
select top 10 * from meka..torderd where ds_nomor_faktur='010515002514OR' and ds_kode_barang='JASA-ENG.136' 
--update meka..torderh set hs_total_belum_disc='767000', hs_nilai_disc3_after='767000', hs_nsudah_disc='767000', hs_nilai_disc4='247000' from meka..torderh where hs_nomor_faktur='010515002514OR'
--update meka..torderd set ds_amount_d4='149999' from meka..torderd where ds_nomor_faktur='010515002514OR' and ds_kode_barang='JASA-ENG.136' 