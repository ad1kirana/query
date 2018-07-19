select hs_nomor_ppn,hs_nomor_faktur,hs_tanggal,HS_Counter_Cetak,HS_Creator,HS_WareHouse,HS_SalesOffice from meka..tslsh
where hs_company='01' and 
--HS_Cabang='02' and 
hs_tanggal between '2017-01-01' and '2017-12-31'
order by hs_nomor_ppn asc

select hs_nomor_ppn,hs_nomor_faktur,hs_tanggal,HS_Counter_Cetak,HS_Creator,HS_WareHouse,HS_SalesOffice,Faktur_Pajak from 
MEKA..TPJKD left join meka..tslsh on Dokumen=HS_Nomor_Faktur
where hs_company='20' and 
--HS_Cabang='02' and 
hs_tanggal between '2017-01-01' and '2017-12-31'
order by hs_nomor_ppn asc

010417001328FP 1782723210
010517002543FP 1782719456

--update MEKA..TSLSH set HS_Nomor_PPN='1782719456' from MEKA..TSLSH where HS_Nomor_Faktur='010517002543FP'

select HS_Customer,hs_nomor_ppn,hs_nomor_faktur,hs_tanggal,HS_Creator,HS_WareHouse,HS_SalesOffice from meka..tslsh
where HS_Nomor_Faktur='010517010124FP'
010517010124FP      
010517010125FP      
select top 10 * from MEKA..tslsd where DS_Nomor_Faktur='010217019336FP'

select a.cabang,a.faktur_pajak,b.faktur_pajak,a.kode_customer,b.dokumen,a.tanggal,c.HS_Creator,c.HS_WareHouse,c.HS_SalesOffice  
from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
left join MEKA..TSLSH c on b.Dokumen=c.HS_Nomor_Faktur
where a.tanggal between '2017-01-01' and '2017-12-15' and
a.company='20' and
b.Dokumen='010417001328FP'

select cabang,faktur_pajak,tanggal from meka..tpjkh
where tanggal between '2015-01-01' and '2015-12-31' 
and company='01'
order by faktur_pajak asc

select a.cabang,a.faktur_pajak,b.faktur_pajak,a.kode_customer,b.dokumen,a.tanggal from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
where a.tanggal between '2014-07-01' and '2014-12-31' 
and a.company='30'

select hs_nomor_ppn,hs_nomor_faktur,hs_tanggal from meka..tslsh
where hs_cabang='01' and hs_tanggal between '2014-12-01' and '2014-12-31'
order by hs_nomor_ppn asc

select a.cabang,a.faktur_pajak,b.faktur_pajak,a.kode_customer,b.dokumen,a.tanggal from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
where --a.tanggal between '2014-12-01' and '2014-12-31' and 
b.dokumen='010517010125FP'
and a.cabang='01'

select top 10 * from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
where b.Faktur_Pajak='010.900-13.33904665'
select * from meka..tpjkh where Faktur_Pajak like '010.019-17.70939907'
select top 10 * from meka..tpjkd where Faktur_Pajak='010.020-17.95278638'


b.dokumen='010517010125FP'
select top 10 * from meka..tslsh where hs_nomor_faktur='010114032276FP'