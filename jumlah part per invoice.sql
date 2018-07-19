select  t.inv as inv, t.jml_part as jml_part
from
(select  HS_Nomor_Faktur as inv, count(DS_Kode_Barang) as jml_part from meka..tslsh 
inner join meka..tslsd on hs_nomor_faktur = ds_nomor_faktur
where HS_Tanggal > '2017/01/01'
and HS_Cabang between '03' and '08'
group by HS_Nomor_Faktur) t
where t.jml_part > '10'