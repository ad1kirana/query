select
t1.cab as cab, t1.prod as prod, sum(t1.qty) as qty, sum(t1.amount) as amount, SUM(t1.cogs) as cogs, 
CASE WHEN SUM(t1.cogs) ='0' THEN '0'
ELSE(((sum(t1.amount) - SUM(t1.cogs) )/ SUM(t1.cogs) *100))
END  
as GP, 
SUM(t1.inventory) as inventory
from 
(
--stok awal bulan
select HF_Cabang as cab, 
PART_Kode_Group as prod,
'' as qty,
'' as amount,
'' as cogs,
sum(hf_stock_awal) as inventory  
from MEKA..HBSFF
inner join MEKA..MPART on hf_cabang=PART_Cabang and HF_Kode_Part=PART_Kode
WHERE HF_Cabang BETWEEN '01' AND '30'
AND HF_Tanggal ='2018/05/01'
group by HF_Cabang, PART_Kode_Group

UNION ALL
--sales selama 1 bulan
select Hs_Cabang as cab, 
DS_Kode_Product as prod,
SUM(ds_qty) as qty,
SUM(convert(float,(((ds_amount-ds_amount_d4)/nullif(ds_qty,0))*(ds_qty - ds_qty_retur)))) as amount,
sum(ds_tot_harga_pokok) as cogs ,
 '' as inventory
from  MEKA..TSLSH 
inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur
WHERE HS_Cabang BETWEEN '01' AND '30'
AND HS_Tanggal BETWEEN '2018/04/01' AND '2018/04/30'
GROUP BY Hs_Cabang, DS_Kode_Product
) t1
group by t1.cab, t1.prod
order by cab, prod asc