select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_warehouse='20' and hs_nomor_spk is null

select top 10 * from meka..tslsd where ds_nomor_faktur='010615004897fp'

select top 10 * from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where ds_nomor_faktur='010615004897fp'
select top 10 * from meka..tspkm where hs_nomor_faktur='010615004897FP'
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_qq='ab 1171 n'
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where
hs_nomor_faktur='010415004828or'
INGO-NS40ZL

 hs_nomor_spk='010615004426SP'
select top 10 * from meka..tspkm where hs_nomor_spk='010615004420SP'
select top 10 * from meka..tspkm where hs_nomor_spk='010615004878SP'      
select top 10 * from meka..tspkm where hs_vehicle='ab 9137 dh'  
--delete from meka..tspkm where hs_nomor_spk='010615002033sp'
select top 1000 * from meka..tspkm where hs_tanggal='2015-09-23'

select top 10 * from meka..torderd where ds_nomor_faktur='010715000623OR'

select top 10 * from meka..tslsh where hs_cabang='07'
   
select * from meka..tspkm where hs_nomor_faktur='' and hs_cabang='04'
order by hs_tanggal desc

select top 10 * from meka..torderh a inner join meka..torderd b on a.hs_nomor_faktur=b.ds_nomor_faktur
inner join meka..tspkm c on a.hs_nomor_spk 

select * from meka..hpostblc where pba_cabang='08'
select top 10 * from meka..tperiod where cabang='08'