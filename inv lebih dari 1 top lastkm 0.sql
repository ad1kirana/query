select a.HS_Cabang, a.HS_Nomor_SPK, t.inv , a.hs_last_km 
from
(select b.hs_nomor_faktur as inv, COUNT(b.hs_nomor_spk) as jml_spk, 
	(select top 1 c.hs_last_km 
	from MEKA..TSPKM c 
	where c.HS_Nomor_Faktur=b.HS_Nomor_Faktur) as last_km
from meka..TSPKM b
group by b.HS_Nomor_Faktur
) t 
left join MEKA..TSPKM a on t.inv=HS_Nomor_Faktur

where t.jml_spk > '1'
and t.last_km = '0'
--and a.HS_Cabang between '03' and '08'
order by HS_Cabang, inv, hs_nomor_spk
