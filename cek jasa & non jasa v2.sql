
 select distinct CASE
    WHEN t1.cab <> 'NULL'  THEN t1.cab
    ELSE t2.cab
END as cab,
CASE
    WHEN t1.invoice <> 'NULL'  THEN t1.invoice
    ELSE t2.invoice
END as invoice,
t1.prod_non_jasa, t1.qty_non_jasa, t1.disc_non_jasa, t1.netsales_part_non_jasa,
t2.prod_jasa, t2.qty_jasa, t2.disc_jasa, t2.netsales_part_jasa
  from
(select distinct CASE
    WHEN hs_cabang = '03'  THEN 'WR_Supratman'
    WHEN hs_cabang = '04'  THEN 'Solo'
    WHEN hs_cabang = '05'  THEN 'Tugu'
	WHEN hs_cabang = '06'  THEN 'Yogya'
    WHEN hs_cabang = '07'  THEN 'Mrican'
    WHEN hs_cabang = '08'  THEN 'Majapahit'
END as cab,
rtrim(HS_Nomor_Faktur) as invoice,
DS_Kode_Product as prod_non_jasa,
sum(ds_qty) as qty_non_jasa,
sum(convert(float,HS_Nilai_Disc4))  as disc_non_jasa,
sum(convert(float,(((ds_amount-ds_amount_d4)/nullif(ds_qty,0))*(ds_qty - ds_qty_retur)))) as netsales_part_non_jasa
 from MEKA..TSLSH inner join MEKA..TSLSD 
 on HS_Nomor_Faktur=DS_Nomor_Faktur
 inner join meka..mtipe on ds_kode_barang=type_kode
 where HS_Cabang between '03' and '03'
 and HS_Tanggal between '2018/07/09' and '2018/07/15'
 and DS_Kode_Product <> 'oth'
 group by hs_cabang, HS_Nomor_Faktur, DS_Kode_Product ) t1
 
full join
 
 (select distinct CASE
    WHEN hs_cabang = '03'  THEN 'WR_Supratman'
    WHEN hs_cabang = '04'  THEN 'Solo'
    WHEN hs_cabang = '05'  THEN 'Tugu'
	WHEN hs_cabang = '06'  THEN 'Yogya'
    WHEN hs_cabang = '07'  THEN 'Mrican'
    WHEN hs_cabang = '08'  THEN 'Majapahit'
END as cab,
rtrim(HS_Nomor_Faktur) as invoice,
DS_Kode_Product as prod_jasa,
sum(ds_qty) as qty_jasa,
sum(convert(float,HS_Nilai_Disc4))  as disc_jasa,
sum(convert(float,(((ds_amount-ds_amount_d4)/nullif(ds_qty,0))*(ds_qty - ds_qty_retur)))) as netsales_part_jasa
 from MEKA..TSLSH inner join MEKA..TSLSD 
 on HS_Nomor_Faktur=DS_Nomor_Faktur
 inner join meka..mtipe on ds_kode_barang=type_kode
 where HS_Cabang between '03' and '03'
 and HS_Tanggal between '2018/07/09' and '2018/07/15'
 and DS_Kode_Product = 'oth'
 group by hs_cabang, HS_Nomor_Faktur, DS_Kode_Product) t2
 on t1.cab=t2.cab and t1.invoice=t2.invoice
 order by cab,invoice