select top 10 HS_Nomor_Faktur,HS_Nomor_PPN from meka..tslsh where hs_nomor_faktur='010617005760fp'
select top 10 HS_Nomor_Faktur,HS_Nomor_PPN from meka..tslsh where hs_nomor_faktur='010517007615FP      '

select * from MEKA..TPJKH a inner join MEKA..TPJKD b on a.Faktur_Pajak=b.faktur_pajak where a.Cabang='08' and a.Tanggal='2017-08-24'
select * from MEKA..TPJKH a inner join MEKA..TPJKD b on a.Faktur_Pajak=b.faktur_pajak where b.Dokumen='010817005389fp'
select * from MEKA..TPJKH a inner join MEKA..TPJKD b on a.Faktur_Pajak=b.faktur_pajak where a.faktur_pajak='010.019-17.70907352'
--update meka..tslsh set HS_Nomor_PPN='' from meka..tslsh where hs_nomor_faktur='010517007615FP'
--update meka..tslsh set HS_Nomor_PPN='' from meka..tslsh where hs_nomor_faktur='010817005389fp'

 010817004938fp
 010617005760fp