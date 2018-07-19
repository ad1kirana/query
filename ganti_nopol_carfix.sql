select top 1000 * from meka..tspkm a inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
 where a.hs_nomor_faktur='010318003528FP'
and a.hs_cabang between '03' and '08' 

select top 10 * from MEKA..TWRSH where HLBM_Nomor_Dokumen='010318004699sp'

=======================

Select rtrim(a.HS_Nomor_SPK) as no_spk, rtrim(b.HS_Nomor_Faktur) as no_order, RTRIM(a.hs_nomor_faktur) as no_faktur from meka..tspkm a inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
where a.hs_nomor_spk='010318004699SP'

select rtrim(a.HS_Nomor_SPK) as no_spk, rtrim(b.HS_Nomor_Faktur) as no_order, RTRIM(a.hs_nomor_faktur) as no_faktur from meka..tspkm a inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
 where a.hs_nomor_faktur='010318003445FP'
 

select top 10 * from meka..torderh where hs_nomor_faktur='010318005540OR'
select top 10 * from meka..tspkm where hs_nomor_spk='010318004699SP'
select top 10 * from meka..tslsh where hs_nomor_faktur='010318003528FP'
--update meka..tspkm set hs_vehicle='653-IX' from meka..tspkm where hs_nomor_spk='010318009936SP'
--update meka..torderh set hs_qq='653-IX' from meka..torderh where hs_nomor_faktur='010318010114OR'
--update meka..tslsh set hs_qq='653-IX' from meka..tslsh where hs_nomor_faktur='010318006183FP'

select top 10 * from MEKA..TSPKM where HS_Nomor_SPK='010318004699sp'

select top 100 * from MEKA..TWRSH where HLBM_Jenis_LBM='rt/s' and HLBM_Tanggal >='2018-03-14' and HLBM_Cabang='03'

select top 10 * from MEKA..TWRSH where HLBM_No_LBM='010318001104bm'

select top 10 * from MEKA..TWRSd where DLBM_Nomor_LBM='010318001104bm'

select top 10 * from MEKA..TOrderH where HS_Nomor_SPK='010318004699sp'

select top 10 * from MEKA..TOrderD where DS_Nomor_Faktur='010318004795OR'


ganti jadi 653-IX
031500371C
010318006183FP