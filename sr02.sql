select distinct rtrim(b.HS_Cabang) as cab ,
rtrim(a.ds_kode_barang) as part_kode, 
year(b.hs_tanggal) as tahun,
MONTH(b.hs_tanggal) as month,
sum(a.ds_qty-a.ds_qty_retur) as qty, 
SUM(DS_Amount-Ds_amount_D4) as amount,
(select sum(PART_Stock_Bisa_Jual)  from MEKA..MPART 
where PART_Cabang=b.HS_Cabang and PART_Kode=a.DS_Kode_Barang ) 
from meka..tslsd a inner join meka..tslsh b on a.ds_nomor_faktur=b.hs_nomor_faktur 
where b.hs_cabang BETWEEN '01' AND '01'
and a.ds_kode_product between '0' and 'zz'
and b.hs_tanggal between '2018/01/01' and '2018/02/28'
group by b.HS_Cabang, a.DS_Kode_Barang,YEAR(b.hs_tanggal), MONTH(b.HS_Tanggal)
order by cab, part_kode asc

