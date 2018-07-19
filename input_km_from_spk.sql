select top 10 * from meka..tslsh where hs_nomor_faktur='010318008889fp'
--update meka..tslsh set hs_last_km='390359' from meka..tslsh where hs_nomor_faktur='010318008889fp'
select top 10 * from meka..tspkm where hs_nomor_faktur='010318008889fp'
select top 10 * from meka..tspkm where hs_nomor_spk='010318005429SP'  
--update meka..TSPKM set hs_last_km='390359' from meka..tspkm where hs_nomor_spk='010318014639SP'  
select top 10 (select top 1 from meka..tspkm from meka..tslsh a where a.hs_nomor_faktur='010317014510fp'    
select top 10 * from meka..tspkm where hs_cabang='08' order by hs_tanggal asc

'CARfix Wr Supratman, [16.07.18 14:27]
yg benar adh : 390.359

CARfix Wr Supratman, [16.07.18 14:28]
no incoice 