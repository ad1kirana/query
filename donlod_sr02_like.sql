select PART_Cabang, rtrim(part_kode_group),rtrim(PART_Kode),rtrim(PART_Nama),part_stock_bisa_jual
from MEKA..MPART
where PART_Cabang between '03' and '08'
and PART_Stock_Bisa_Jual <>'0'
and PART_Kode_Group <>'oth'

group by PART_Cabang,PART_Kode_Group, PART_Kode,PART_Nama,part_stock_bisa_jual


select hs_tanggal,hS_Company,HS_Cabang,DS_Kode_Product, DS_Kode_Barang,
(DS_Amount-Ds_amount_D4) as nett_b4_rtr, DS_Qty

 from MEKA..TSLSH inner join MEKA..tslsd
on HS_Nomor_Faktur=ds_nomor_faktur

where YEAR(hs_tanggal)=2017
and MONTH(hs_tanggal)=7
and HS_Cabang between '03' and '03'

group by hs_tanggal,hS_Company,HS_Cabang,DS_Kode_Product, DS_Kode_Barang,DS_Amount,Ds_amount_D4,ds_qty,DS_Qty_Retur

select DRC_Product,DRC_Kode_Barang,DRC_Qty,((DRC_Harga_Net-DRC_Disc4)/DRC_Qty) as nett from MEKA..trtrh inner join MEKA..TRTRD on HRC_No_Retur=DRC_Nomor_Retur
where YEAR(hrc_tanggal)=2017
and MONTH(hrc_tanggal)=7
and HRC_Cabang='03'

group by DRC_Product,DRC_Kode_Barang,DRC_Qty,DRC_Harga_Net,DRC_Disc4
