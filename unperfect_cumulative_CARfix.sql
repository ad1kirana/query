select distinct  CASE
    WHEN hs_cabang = '03'  THEN 'WR_Supratman'
    WHEN hs_cabang = '04'  THEN 'Solo'
    WHEN hs_cabang = '05'  THEN 'Tugu'
	WHEN hs_cabang = '06'  THEN 'Yogya'
    WHEN hs_cabang = '07'  THEN 'Mrican'
    WHEN hs_cabang = '08'  THEN 'Majapahit'
END as cab, 
month(hs_tanggal) as "month",
YEAR(hs_tanggal) as "year",
rtrim(ds_kode_product)as prod,
rtrim(ds_kode_barang) as kode_barang,
sum(ds_qty) as qty,
sum(hs_nilai_disc4_after) as net_sales,
sum(ds_tot_harga_pokok) as cogs 
from 
meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur 
where
hs_tanggal between '2017/11/01' and '2018/05/31' 
and hs_cabang between '03' and '08' 
and ds_kode_product between '0' and 'zz' 
and HS_SalesOffice between '0' and 'zz' 
group by HS_Cabang,MONTH(hs_tanggal), YEAR(hs_tanggal), DS_Kode_Barang, DS_Kode_Product

order by cab,prod,kode_barang, year, month