select top 10 * from meka..tpjkd where dokumen='010417005695fp'
select top 10 * from meka..tpjkh where faktur_pajak='010.031-16.65561175'
select top 10 * from meka..tslsh where hs_nomor_faktur='010417005695fp'
select top 10 * from meka..mcountr where ct_jenis_trans='PJ' and ct_tahun='2018' and ct_company='30' and ct_cabang='00' 
select top 10 * from meka..mcountr where ct_jenis_trans='PJ' and ct_tahun='2018' and ct_company='01' and ct_cabang='00' 
select top 10 * from meka..mcountr where ct_jenis_trans='PJ' and ct_tahun='2018' and ct_company='20' and ct_cabang='00' 

select top 100 * from meka..mcountr where ct_jenis_trans='PJ' and ct_company='01' and ct_cabang='00' 
select top 100 * from meka..mcountr where ct_jenis_trans='PJ' and ct_company='20' and ct_cabang='00' 


select top 10 * from meka..tpjkh where faktur_pajak like '%.031-16.65561175' and year(tanggal)=2016

1770939906	010117039136FP      
1770939907	010517010124FP      
1770939908	010517010125FP      
1770939909	010117039135FP      

select top 10 * from meka..tpjkd where dokumen='010317013852FP'
select top 10 * from meka..tpjkh where faktur_pajak='010..                         '



--delete from meka..tpjkd where dokumen='010317013852FP' and Faktur_Pajak='010..                         '
--delete from meka..tpjkh where faktur_pajak='010..                         ' and Kode_Customer='031703109C'



--update meka..tslsh set hs_nomor_ppn='1795291640' from meka..tslsh where hs_nomor_faktur='010417005695fp'
--update meka..tpjkd set faktur_pajak='010.020-17.95291641' from meka..tpjkd where dokumen='010417005695fp'
--update meka..tpjkh set faktur_pajak='010.020-17.95291641' from meka..tpjkh where faktur_pajak='010.001-18.53619884'




--update meka..tslsh set hs_nomor_ppn='1795278636' from meka..tslsh where hs_nomor_faktur='010117039136FP'
--update meka..tslsh set hs_nomor_ppn='1795278637' from meka..tslsh where hs_nomor_faktur='010517010124FP'
--update meka..tslsh set hs_nomor_ppn='1795278638' from meka..tslsh where hs_nomor_faktur='010517010125FP'
--update meka..tslsh set hs_nomor_ppn='1795278639' from meka..tslsh where hs_nomor_faktur='010117039135FP'

--update meka..tpjkd set faktur_pajak='010.020-17.95278636' from meka..tpjkd where dokumen='010117039136FP'
--update meka..tpjkd set faktur_pajak='010.020-17.95278637' from meka..tpjkd where dokumen='010517010124FP'
--update meka..tpjkd set faktur_pajak='010.020-17.95278638' from meka..tpjkd where dokumen='010517010125FP'
--update meka..tpjkd set faktur_pajak='010.020-17.95278639' from meka..tpjkd where dokumen='010117039135FP'

--update meka..tpjkh set faktur_pajak='010.020-17.95278636' from meka..tpjkh where faktur_pajak='010.019-17.70939906'
--update meka..tpjkh set faktur_pajak='010.020-17.95278637' from meka..tpjkh where faktur_pajak='010.019-17.70939907'
--update meka..tpjkh set faktur_pajak='010.020-17.95278638' from meka..tpjkh where faktur_pajak='010.019-17.70939908'
--update meka..tpjkh set faktur_pajak='010.020-17.95278639' from meka..tpjkh where faktur_pajak='010.019-17.70939909'


--update meka..mcountr set ct_last_number ='1770939909' from meka..mcountr where ct_jenis_trans='PJ' and ct_tahun='2017' and ct_company='01' and ct_cabang='00' and ct_last_number='1770939909'
--update meka..mcountr set ct_last_number ='1781073478' from meka..mcountr where ct_jenis_trans='PJ' and ct_tahun='2017' and ct_company='20' and ct_cabang='00' and ct_last_number='1781073477'

--update meka..mcountr set ct_last_number ='1665561174' from meka..mcountr
where ct_jenis_trans='PJ' and ct_tahun='2016' and ct_company='01' and ct_cabang='00' and ct_last_number='1665561175'

--update meka..mcountr set ct_last_number ='1781068001' from meka..mcountr
where ct_jenis_trans='PJ' and ct_tahun='2017' and ct_company='20' and ct_cabang='00' and ct_last_number='1781067999'

select top 10 * from meka..mcountr where ct_jenis_trans='PJ' and ct_tahun='2018' and ct_company='01' and ct_cabang='00' 
and ct_last_number='1781067999'

select a.CT_Company,a.CT_Cabang,a.CT_Tahun,(b.endrunningcounter-a.CT_Last_Number) as sisa 
from meka..mcountr a inner join MEKA..mcountrtax b on a.CT_Company=b.ct_company
where a.ct_jenis_trans='PJ' and a.ct_tahun='2018' and a.ct_company='01' and a.CT_Cabang='00' 


select a.CT_Company,a.CT_Cabang,a.CT_Tahun,(b.endrunningcounter-a.CT_Last_Number) as sisa 
from meka..mcountr a inner join MEKA..mcountrtax b on a.CT_Company=b.ct_company
where a.ct_jenis_trans='PJ' and a.ct_tahun='2018' and a.ct_company between '01' and '30' and a.CT_Cabang='00' 


select top 10 * from meka..mcountrtax

mau isi : 1782703975 s/d 1782703986

last disii : 1782703973
start1 disii : 1782703970
end1 disi : 1782703973

start2 disi : 1782704459(last existing+1)
end2 disi : 1782729848(end1 existing)

1665561174 
1636227863

010.000-16.77708349           
1636227301

1513627512
1513627514

select top 100 * from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
where a.faktur_pajak between '010.000-17.82703975' and '010.000-17.82703986' order by a.faktur_pajak asc

select top 100 * from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak 
where b.dokumen between '010217002347FP' and '010217002358FP'

--update meka..tpjkd set faktur_pajak='010.000-17.82703975x' from meka..tpjkd where faktur_pajak='010.000-17.82703975'

--update meka..tslsh set hs_nomor_ppn='0' from meka..tslsh where hs_nomor_faktur='010217002347FP'
--update meka..tslsh set hs_nomor_ppn='0' from meka..tslsh where hs_nomor_faktur='010217002348FP'
--update meka..tslsh set hs_nomor_ppn='0' from meka..tslsh where hs_nomor_faktur='010217002349FP'
--update meka..tslsh set hs_nomor_ppn='1782703978x' from meka..tslsh where hs_nomor_faktur='010217002350FP'
--update meka..tslsh set hs_nomor_ppn='1782703979x' from meka..tslsh where hs_nomor_faktur='010217002351FP'
--update meka..tslsh set hs_nomor_ppn='1782703980x' from meka..tslsh where hs_nomor_faktur='010217002352FP'
--update meka..tslsh set hs_nomor_ppn='1782703981x' from meka..tslsh where hs_nomor_faktur='010217002353FP'
--update meka..tslsh set hs_nomor_ppn='1782703982x' from meka..tslsh where hs_nomor_faktur='010217002354FP'
--update meka..tslsh set hs_nomor_ppn='1782703983x' from meka..tslsh where hs_nomor_faktur='010217002355FP'
--update meka..tslsh set hs_nomor_ppn='1782703984x' from meka..tslsh where hs_nomor_faktur='010217002356FP'
--update meka..tslsh set hs_nomor_ppn='1782703985x' from meka..tslsh where hs_nomor_faktur='010217002357FP'
--update meka..tslsh set hs_nomor_ppn='1782703986x' from meka..tslsh where hs_nomor_faktur='010217002358FP'

