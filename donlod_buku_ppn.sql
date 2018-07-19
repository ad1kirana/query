select a.cabang,a.tanggal,a.faktur_pajak,a.namacust,a.npwp,(a.nilai_faktur-a.diskon)as dpp,a.nilai_pajak,b.dokumen,hs_tanggal,hs_customer
--select top 10 *
from meka..tpjkh a inner join meka..tpjkd b
on a.faktur_pajak=b.faktur_pajak
inner join meka..tslsh on b.dokumen=hs_nomor_faktur and
a.cabang=hs_cabang
where a.tahun='2017' and 
month(a.tanggal)=06 and 
a.cabang between '03' and '08'
order by a.faktur_pajak asc

DATE	NO FAKTUR PAJAK	CUST NAME	CUST NPWP	DPP	PPN	INVOICE	DATE
