select faktur_pajak from meka..tpjkh where company='30' and year(tanggal)='2016' order by faktur_pajak asc

select top 10 *  from meka..tpjkh where company='01' and year(tanggal)='2016' order by faktur_pajak asc

select a.company,a.cabang,rtrim(a.faktur_pajak) as no_seri_pajak,a.tanggal,rtrim(b.dokumen) as invoice,a.npwpcust,a.namacust from meka..tpjkh a inner join meka..tpjkd b on
a.faktur_pajak=b.faktur_pajak and
a.company=b.company and 
a.cabang=b.cabang
where b.Dokumen='010617005760fp'


--ekualisasi_ppn_format
select a.company,a.cabang,rtrim(a.faktur_pajak) as no_seri_pajak,a.tanggal,rtrim(b.dokumen) as invoice,a.npwpcust, A.Kode_Customer, a.NamaCust, (a.Nilai_Faktur-a.Diskon) as dpp, a.Nilai_Pajak
from meka..tpjkh a inner join meka..tpjkd b on
a.faktur_pajak=b.faktur_pajak and
a.company=b.company and 
a.cabang=b.cabang
where --a.company='01' and 
year (a.Tanggal)=2017
-- between '2018-06-01' and '2018-06-30'
order by a.faktur_pajak asc

where year(a.tanggal)='2015' 
and a.Company<>'20'
order by a.company asc, a.faktur_pajak asc


select a.cabang,rtrim(a.faktur_pajak) as no_seri_pajak,a.tanggal,rtrim(b.dokumen) as invoice,a.npwpcust,a.namacust from meka..tpjkh a inner join meka..tpjkd b on
a.faktur_pajak=b.faktur_pajak and
a.company=b.company and 
a.cabang=b.cabang
where a.company='01' and year(a.tanggal)='2017' order by a.faktur_pajak asc

select rtrim(a.faktur_pajak) as no_seri_pajak,a.tanggal,rtrim(b.dokumen) as invoice,a.npwpcust,a.namacust from meka..tpjkh a inner join meka..tpjkd b on
a.faktur_pajak=b.faktur_pajak and
a.company=b.company and 
a.cabang=b.cabang
where a.company='30' and a.Tanggal between '1901-01-01' and '2014-12-31'
--year(a.tanggal)='2017' 
order by a.faktur_pajak asc

select rtrim(a.faktur_pajak) as no_seri_pajak,a.tanggal,rtrim(b.dokumen) as invoice,a.npwpcust,a.namacust from meka..tpjkh a inner join meka..tpjkd b on
a.faktur_pajak=b.faktur_pajak and
a.company=b.company and 
a.cabang=b.cabang
where a.company='20' and year(a.tanggal)='2017' order by a.faktur_pajak asc