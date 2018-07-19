select satu, dua, tiga, empat, lima, enam, tujuh, delapan, sembilan, sepuluh, sebelas, duabelas, tigabelas ,empatbelas, limabelas, enambelas, tujuhbelas, delapanbelas, sembilanbelas from

(select a.koloma as satu, a.kolomb as dua, a.kolomc as tiga, a.kolomd as empat, a.kolome as lima, a.kolomf as enam, a.kolomg as tujuh, a.kolomh as delapan, a.kolomi as sembilan, a.kolomj as sepuluh, a.kolomk as sebelas, a.koloml as duabelas, a.kolomm as tigabelas, a.kolomn as empatbelas, a.kolomo as limabelas, a.kolomp as enambelas, a.kolomq as tujuhbelas, a.kolomr as delapanbelas, a.koloms as sembilanbelas, a.kolomt as duapuluh from
(select 
distinct
'FK' as koloma,
'01' as kolomb,
'0' as kolomc,
replace(replace(a.faktur_pajak,'.',''),'-','') as kolomd,
MONTH(a.tanggal) as kolome,
rtrim(Tahun) as kolomf,
convert(varchar(10),a.Tanggal,103) as kolomg,
replace(replace(a.NPWP,'.',''),'-','') as kolomh,
rtrim(a.NamaCust) as kolomi,
(rtrim(f.Alamat1)+' '+rtrim(f.alamat2)+' '+rtrim(f.kota)) as kolomj,
(a.Nilai_Faktur-a.Diskon) as kolomk,
a.Nilai_Pajak as koloml,
'0' as kolomm,
'' as kolomn,
'0' as kolomo,
'0' as kolomp,
'0' as kolomq,
'0' as kolomr,
rtrim(b.Dokumen) as koloms,
a.Faktur_Pajak as kolomt
from MEKA..TPJKH a
inner join MEKA..TPJKD b on a.Faktur_Pajak=b.Faktur_Pajak
inner join MEKA..MCOY c on c.COY_CompanyCode=a.Company
inner join MEKA..TSLSD d on d.ds_nomor_faktur=b.dokumen
inner join MEKA..MTIPE e on e.TYPE_KODE=d.DS_Kode_Barang
inner join meka..mapjk f on a.kode_customer=f.kode_customer
where a.Cabang='$brfrom'
and a.Tahun='$year' 
and a.Tanggal between '$dfrom' and '$dto') a

union all

select d.koloma as satu, d.kolomb as dua, d.kolomc as tiga, d.kolomd as empat, d.kolome as lima, d.kolomf as enam, d.kolomg as tujuh, d.kolomh as delapan, d.kolomi as sembilan, d.kolomj as sepuluh, d.kolomk as sebelas, d.koloml as duabelas, d.kolomm as tigabelas, d.kolomn as empatbelas, d.kolomo as limabelas, d.kolomp as enambelas, d.kolomq as tujuhbelas, d.kolomr as delapanbelas, d.koloms as sembilanbelas, d.kolomt as duapuluh from
(select 
distinct
'FK' as koloma,
'01' as kolomb,
'0' as kolomc,
replace(replace(a.faktur_pajak,'.',''),'-','') as kolomd,
MONTH(a.tanggal) as kolome,
rtrim(Tahun) as kolomf,
convert(varchar(10),a.Tanggal,103) as kolomg,
replace(replace(a.NPWP,'.',''),'-','') as kolomh,
rtrim(a.NamaCust) as kolomi,
(rtrim(g.cust_Alamat_1)+' '+rtrim(g.cust_Alamat_2)+' '+rtrim(g.cust_kota)) as kolomj,
(a.Nilai_Faktur-a.Diskon) as kolomk,
a.Nilai_Pajak as koloml,
'0' as kolomm,
'' as kolomn,
'0' as kolomo,
'0' as kolomp,
'0' as kolomq,
'0' as kolomr,
rtrim(b.Dokumen) as koloms,
a.Faktur_Pajak as kolomt
from MEKA..TPJKH a
inner join MEKA..TPJKD b on a.Faktur_Pajak=b.Faktur_Pajak
inner join MEKA..MCOY c on c.COY_CompanyCode=a.Company
inner join MEKA..TSLSD d on d.ds_nomor_faktur=b.dokumen
inner join MEKA..MTIPE e on e.TYPE_KODE=d.DS_Kode_Barang
inner join meka..mcust g on g.cust_kode=a.kode_customer
left outer join meka..mapjk f on a.kode_customer=f.kode_customer
where a.Cabang='$brfrom'
and a.Tahun='$year' 
and a.Tanggal between '$dfrom' and '$dto'
and f.kode_customer is null) d

union all 

select  b.koloma as satu, b.kolomb as dua, b.kolomc as tiga, b.kolomd as empat, b.kolome as lima, b.kolomf as enam, b.kolomg as tujuh, b.kolomh as delapan, b.kolomi as sembilan, b.kolomj as sepuluh, b.kolomk as sebelas, b.koloml as duabelas, b.kolomm as tigabelas, b.kolomn as empatbelas, b.kolomo as limabelas, b.kolomp as enambelas, b.kolomq as tujuhbelas, b.kolomr as delapanbelas, b.koloms as sembilanbelas, b.kolomt as duapuluh from
(select 
distinct
'FAPR' as koloma,
CASE
    WHEN a.company = '01' THEN 'PT. MEKA ADIPRATAMA'
    WHEN a.company = '30' THEN 'PT. MEKA MEKAR NIAGA'
    WHEN a.company = '20' THEN 'PT. GRAHA ARTA KALTIM SENTOSA'
  END as kolomb,
CASE
    WHEN a.company = '01' THEN 'JL.PUSPOWARNO TENGAH NO.7-13 SEMARANG'
    WHEN a.company = '30' THEN ''
    WHEN a.company = '20' THEN 'JL.IR.SUTAMI,KMPLK PRGDGNGN BLOK J NO.9,SAMARINDA'
  END as kolomc,
'' as kolomd,
'' as kolome,
'' as kolomf,
'' as kolomg,
'' as kolomh,
'' as kolomi,
'' as kolomj,
'' as kolomk,
'' as koloml,
'' as kolomm,
'' as kolomn,
'' as kolomo,
'' as kolomp,
'' as kolomq,
'' as kolomr,
'' as koloms,
convert(varchar(50),a.faktur_pajak)+convert(varchar(10),c.COY_Description) as kolomt

from MEKA..TPJKH a
inner join MEKA..TPJKD b on a.Faktur_Pajak=b.Faktur_Pajak
inner join MEKA..MCOY c on c.COY_CompanyCode=a.Company
inner join MEKA..TSLSD d on d.ds_nomor_faktur=b.dokumen
inner join MEKA..MTIPE e on e.TYPE_KODE=d.DS_Kode_Barang
inner join meka..mapjk f on a.kode_customer=f.kode_customer
where a.Cabang='$brfrom'
and a.Tahun='$year' 
and a.Tanggal between '$dfrom' and '$dto'
) b

union all 

select distinct e.koloma as satu, e.kolomb as dua, e.kolomc as tiga, e.kolomd as empat, e.kolome as lima, e.kolomf as enam, e.kolomg as tujuh, e.kolomh as delapan, e.kolomi as sembilan, e.kolomj as sepuluh, e.kolomk as sebelas, e.koloml as duabelas, e.kolomm as tigabelas, e.kolomn as empatbelas, e.kolomo as limabelas, e.kolomp as enambelas, e.kolomq as tujuhbelas, e.kolomr as delapanbelas, e.koloms as sembilanbelas, e.kolomt as duapuluh from
(select 
'FAPR' as koloma,
CASE
    WHEN a.company = '01' THEN 'PT. MEKA ADIPRATAMA'
    WHEN a.company = '30' THEN 'PT. MEKA MEKAR NIAGA'
    WHEN a.company = '20' THEN 'PT. GRAHA ARTA KALTIM SENTOSA'
  END as kolomb,
CASE
    WHEN a.company = '01' THEN 'JL.PUSPOWARNO TENGAH NO.7-13 SEMARANG'
    WHEN a.company = '30' THEN ''
    WHEN a.company = '20' THEN 'JL.IR.SUTAMI,KMPLK PRGDGNGN BLOK J NO.9,SAMARINDA'
  END as kolomc,
'' as kolomd,
'' as kolome,
'' as kolomf,
'' as kolomg,
'' as kolomh,
'' as kolomi,
'' as kolomj,
'' as kolomk,
'' as koloml,
'' as kolomm,
'' as kolomn,
'' as kolomo,
'' as kolomp,
'' as kolomq,
'' as kolomr,
'' as koloms,
convert(varchar(50),a.faktur_pajak)+convert(varchar(10),c.COY_Description) as kolomt

from MEKA..TPJKH a
inner join MEKA..TPJKD b on a.Faktur_Pajak=b.Faktur_Pajak
inner join MEKA..MCOY c on c.COY_CompanyCode=a.Company
inner join MEKA..TSLSD d on d.ds_nomor_faktur=b.dokumen
inner join MEKA..MTIPE e on e.TYPE_KODE=d.DS_Kode_Barang
left outer join meka..mapjk f on a.kode_customer=f.kode_customer
where a.Cabang='$brfrom'
and a.Tahun='$year' 
and a.Tanggal between '$dfrom' and '$dto'
and f.kode_customer is null
) e

union all

select c.koloma as satu, c.kolomb as dua, c.kolomc as tiga, c.kolomd as empat, c.kolome as lima, c.kolomf as enam, c.kolomg as tujuh, c.kolomh as delapan, c.kolomi as sembilan, c.kolomj as sepuluh, c.kolomk as sebelas, c.koloml as duabelas, c.kolomm as tigabelas, c.kolomn as empatbelas, c.kolomo as limabelas, c.kolomp as enambelas, c.kolomq as tujuhbelas, c.kolomr as delapanbelas, c.koloms as sembilanbelas, c.kolomt as duapuluh from
(select 
'OF' as koloma,
rtrim(d.ds_kode_barang) as kolomb,
rtrim(e.TYPE_NAMA) as kolomc,
str(d.DS_Harga_Jual,10,0) as kolomd,
str(d.DS_Qty,10,0) as kolome,
str(d.DS_Amount,10,0) as kolomf,
str(d.Ds_amount_D4,10,0) as  kolomg,
str(d.DS_Amount-d.Ds_amount_D4,10,0) as kolomh,
str(0.1*(d.DS_Amount-d.Ds_amount_D4),10,0) as kolomi,
'0' as kolomj,
'0' as kolomk,
'' as koloml,
'' as kolomm,
'' as kolomn,
'' as kolomo,
'' as kolomp,
'' as kolomq,
'' as kolomr,
'' as koloms,
convert(varchar(50),a.faktur_pajak)+convert(varchar(10),c.COY_Description)+convert(varchar(10),d.ds_kode_barang) as kolomt

from MEKA..TPJKH a
inner join MEKA..TPJKD b on a.Faktur_Pajak=b.Faktur_Pajak
inner join MEKA..MCOY c on c.COY_CompanyCode=a.Company
inner join MEKA..TSLSD d on d.ds_nomor_faktur=b.dokumen
inner join MEKA..MTIPE e on e.TYPE_KODE=d.DS_Kode_Barang
inner join meka..mapjk f on a.kode_customer=f.kode_customer
where a.Cabang='$brfrom'
and a.Tahun='$year' 
and a.Tanggal between '$dfrom' and '$dto'
) c

union all

select f.koloma as satu, f.kolomb as dua, f.kolomc as tiga, f.kolomd as empat, f.kolome as lima, f.kolomf as enam, f.kolomg as tujuh, f.kolomh as delapan, f.kolomi as sembilan, f.kolomj as sepuluh, f.kolomk as sebelas, f.koloml as duabelas, f.kolomm as tigabelas, f.kolomn as empatbelas, f.kolomo as limabelas, f.kolomp as enambelas, f.kolomq as tujuhbelas, f.kolomr as delapanbelas, f.koloms as sembilanbelas, f.kolomt as duapuluh from
(select 
'OF' as koloma,
rtrim(d.ds_kode_barang) as kolomb,
rtrim(e.TYPE_NAMA) as kolomc,
str(d.DS_Harga_Jual,10,0) as kolomd,
str(d.DS_Qty,10,0) as kolome,
str(d.DS_Amount,10,0) as kolomf,
str(d.Ds_amount_D4,10,0) as  kolomg,
str(d.DS_Amount-d.Ds_amount_D4,10,0) as kolomh,
str(0.1*(d.DS_Amount-d.Ds_amount_D4),10,0) as kolomi,
'0' as kolomj,
'0' as kolomk,
'' as koloml,
'' as kolomm,
'' as kolomn,
'' as kolomo,
'' as kolomp,
'' as kolomq,
'' as kolomr,
'' as koloms,
convert(varchar(50),a.faktur_pajak)+convert(varchar(10),c.COY_Description)+convert(varchar(10),d.ds_kode_barang) as kolomt

from MEKA..TPJKH a
inner join MEKA..TPJKD b on a.Faktur_Pajak=b.Faktur_Pajak
inner join MEKA..MCOY c on c.COY_CompanyCode=a.Company
inner join MEKA..TSLSD d on d.ds_nomor_faktur=b.dokumen
inner join MEKA..MTIPE e on e.TYPE_KODE=d.DS_Kode_Barang
left outer join meka..mapjk f on a.kode_customer=f.kode_customer
where a.Cabang='$brfrom'
and a.Tahun='$year' 
and a.Tanggal between '$dfrom' and '$dto'
and f.kode_customer is null
) f
) x
order by duapuluh