select t.cab, t.invoice, t.prod_non_jasa, t.qty_non_jasa, t.disc_non_jasa, t.netsales_part_non_jasa,
 t.prod_jasa, t.qty_jasa, t.disc_jasa, t.netsales_part_jasa 
 from (
select rtrim(hs_cabang) as cab,
rtrim(HS_Nomor_Faktur) as invoice,
DS_Kode_Product as prod_non_jasa,
sum(ds_qty) as qty_non_jasa,
sum(convert(float,HS_Nilai_Disc4))  as disc_non_jasa,
sum(convert(float,(((ds_amount-ds_amount_d4)/nullif(ds_qty,0))*(ds_qty - ds_qty_retur)))) as netsales_part_non_jasa,
'' as prod_jasa,
'' as qty_jasa,
'' as disc_jasa,
'' as netsales_part_jasa
 from MEKA..TSLSH inner join MEKA..TSLSD 
 on HS_Nomor_Faktur=DS_Nomor_Faktur
 where HS_Cabang between '03' and '08'
 and HS_Tanggal between '2018/07/01' and '2018/07/31'
 and DS_Kode_Product <> 'oth'
 group by hs_cabang, HS_Nomor_Faktur, DS_Kode_Product
 
 union all
 
 select rtrim(hs_cabang) as cab,
rtrim(HS_Nomor_Faktur) as invoice,
'' as prod_non_jasa,
'' as qty_non_jasa,
'' as disc_non_jasa,
'' as netsales_part_non_jasa,
DS_Kode_Product as prod_jasa,
sum(ds_qty) as qty_jasa,
sum(convert(float,HS_Nilai_Disc4))  as disc_jasa,
sum(convert(float,(((ds_amount-ds_amount_d4)/nullif(ds_qty,0))*(ds_qty - ds_qty_retur)))) as netsales_part_jasa
 from MEKA..TSLSH inner join MEKA..TSLSD 
 on HS_Nomor_Faktur=DS_Nomor_Faktur
 where HS_Cabang between '03' and '08'
 and HS_Tanggal between '2018/07/01' and '2018/07/31'
 and DS_Kode_Product = 'oth'
 group by hs_cabang, HS_Nomor_Faktur, DS_Kode_Product
) t
order by cab, invoice asc