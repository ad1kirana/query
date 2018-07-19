select top 10 * from meka..tpjkh a inner join meka..tpjkd b
on a.faktur_pajak=b.faktur_pajak
where a.faktur_pajak='010.000-17.82724009' and 

select top 10 * from meka..tpjkh where kode_customer='001'
select top 10 * from meka..tpjkd where faktur_pajak='010.018-17.30953821'           
select top 10 * from meka..tpjkh where faktur_pajak='010.018-17.30953821'           
 --cabang='01', 
--update meka..tpjkh set Kode_customer='007', nilai_faktur='35600000', nilai_pajak='3560000'
,namacust='PT SHELL INDONESIA', alamat1cust='TALAVERA OFFICE PARK 22-27 FLOR',
alamat2cust='JL.LETJEN SIMATUPANG KAV.22-26JAKARTA SELATAN'from meka..tpjkh where faktur_pajak='010.018-17.30953821'  

--update meka..tpjkd set --cabang='02', 
dokumen='023/FIN-V-MAP/2017',nilai_dokumen='35600000', nilai_pajak='3560000',
note ='BRG/JASA REIMBST SLSMN HNDL Q1 2017 MEKA'
from meka..tpjkd where faktur_pajak='010.018-17.30953821'

select top 10 * from meka..tpjkd where faktur_pajak='010.018-17.30961993'           
select top 10 * from meka..tpjkh where faktur_pajak='010.018-17.30961993'           
select top 10 * from meka..tpjkd where faktur_pajak='010.018-17.30952043x'           

select top 10 * from meka..tpjkd where faktur_pajak='010.018-17.30952043'           
select top 10 * from meka..tpjkh where faktur_pajak='010.018-17.30952043'           
--update meka..tpjkd set faktur_pajak='010.018-17.30952043x' from meka..tpjkd where faktur_pajak='010.018-17.30952043'           
--update meka..tpjkh set faktur_pajak='010.018-17.30952043x' from meka..tpjkh where faktur_pajak='010.018-17.30952043'           

--update meka..tpjkd set faktur_pajak='010.018-17.30952043' from meka..tpjkd where faktur_pajak='010.018-17.30961993'  

select top 10 * from meka..tslsh where hs_nomor_faktur='010517005037FP'      
select top 10 * from meka..tslsh where hs_nomor_faktur='010317005568FP'  
--update meka..tslsh set hs_nomor_ppn='1730961993' from meka..tslsh where hs_nomor_faktur='010317005568FP'     
--update meka..tslsh set hs_nomor_ppn='1730952043' from meka..tslsh where hs_nomor_faktur='010517005037FP'     

--update meka..tpjkh set faktur_pajak='010.018-17.30952043' from meka..tpjkh where faktur_pajak='010.018-17.30961993'           
--update meka..tpjkh set npwp='01.429.230.4-511.000', npwpcust='' from meka..tpjkh where faktur_pajak='010.018-17.30952043'           
                                 