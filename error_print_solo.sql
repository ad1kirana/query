select top 10 * from meka..tpjkd where dokumen='010415000904FP' and faktur_pajak='010.900-15.00000001'
select top 10 * from meka..tpjkd where dokumen='010415000905FP' and faktur_pajak='010.900-15.00000002'
select top 10 * from meka..tpjkd where dokumen='010415000904FP' and faktur_pajak='010.000-15.44176090'
select top 10 * from meka..tpjkd where dokumen='010415000905FP' and faktur_pajak='010.000-15.44176091'
select top 10 * from meka..tpjkh where faktur_pajak='010.900-15.00000001'           
select top 10 * from meka..tpjkh where faktur_pajak='010.900-15.00000002'         

select top 10 * from meka..tpjkh where faktur_pajak='010.000-15.44176090'
select top 10 * from meka..tpjkh where faktur_pajak='010.000-15.44176091' 

select top 10 hs_nomor_ppn from meka..tslsh where hs_nomor_faktur='010415000904FP'
select top 10 * from meka..tslsh where hs_nomor_faktur='010415000905FP'

--update meka..tslsh set hs_nomor_ppn='1544176090' from meka..tslsh where hs_nomor_faktur='010415000904FP'
--update meka..tslsh set hs_nomor_ppn='1544176091' from meka..tslsh where hs_nomor_faktur='010415000905FP'

--update meka..tpjkh set alamat1cust='TITAN CENTER LT 5 JL.BOULEVARD BINTARO BLOK B7/B1', alamat2cust='NO.5  BINTARO JAYA SEKTOR 7PONDOK JAYA,PONDOK AREN' from meka..tpjkh where faktur_pajak='010.000-15.44176090'
--update meka..tpjkh set alamat1cust='TITAN CENTER LT 5 JL.BOULEVARD BINTARO BLOK B7/B1', alamat2cust='NO.5  BINTARO JAYA SEKTOR 7PONDOK JAYA,PONDOK AREN' from meka..tpjkh where faktur_pajak='010.000-15.44176091' 
--delete from meka..tpjkh where faktur_pajak='010.900-15.00000001' and cabang='04'
--delete from meka..tpjkh where faktur_pajak='010.900-15.00000002' and cabang='04'
--delete from meka..tpjkd where dokumen='010415000904FP' and faktur_pajak='010.900-15.00000001'
--delete from meka..tpjkd where dokumen='010415000905FP' and faktur_pajak='010.900-15.00000002'



--TITAN CENTER LT 5 JL.BOULEVARD BINTARO BLOK B7/B1 
--NO.5  BINTARO JAYA SEKTOR 7PONDOK JAYA,PONDOK AREN   
--Nurseto Dwi P/Sales Counter          