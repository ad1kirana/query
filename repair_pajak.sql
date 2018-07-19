select top 10 * from meka..tslsh where hs_nomor_faktur = '010817005981FP'
select top 10 * from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
where b.dokumen='010817005981FP'

select top 10 * from meka..tpjkd where faktur_pajak='010.001-18.68877534'-- and dokumen='010817005981FP'
select top 10 * from meka..tpjkh where faktur_pajak='010.001-18.68877534' --and kode_customer='081701730C'

--update meka..tpjkh set faktur_pajak='020.019-17.70916368' from meka..tpjkh where faktur_pajak='010.019-17.70916368' and kode_customer='081701730C'
--update meka..tpjkd set faktur_pajak='020.019-17.70916368' from meka..tpjkd where faktur_pajak='010.019-17.70916368' and dokumen='010817005981FP'

select top 10 * from meka..tpjkh where faktur_pajak='010.000-14.15473887'
--update meka..tpjkh set namacust='MARGO REJO', alamat1cust='BABADAN' from meka..tpjkh where faktur_pajak='010.000-14.15473887' 
select top 10 * from meka..mapjk where kode_customer='11MARE    '

--UPDATE MEKA..TPJKH set Nilai_Pajak='168000' from MEKA..TPJKH where faktur_pajak='010.001-18.68877534' and Cabang='20'
--UPDATE MEKA..TPJKd set Nilai_Pajak='168000' from MEKA..TPJKd where faktur_pajak='010.001-18.68877534' and Cabang='20'

--UPDATE MEKA..TPJKH set Nilai_Pajak='1108000' from MEKA..TPJKH where faktur_pajak='010.001-18.68877535' and Cabang='20'
--UPDATE MEKA..TPJKd set Nilai_Pajak='1108000' from MEKA..TPJKd where faktur_pajak='010.001-18.68877535' and Cabang='20'

--UPDATE MEKA..TPJKH set Nilai_Pajak='8142816' from MEKA..TPJKH where faktur_pajak='010.001-18.68877536' and Cabang='20'
--UPDATE MEKA..TPJKd set Nilai_Pajak='8142816' from MEKA..TPJKd where faktur_pajak='010.001-18.68877536' and Cabang='20'

--UPDATE MEKA..TPJKH set Nilai_Pajak='2712505' from MEKA..TPJKH where faktur_pajak='010.001-18.68877538' and Cabang='20'
--UPDATE MEKA..TPJKd set Nilai_Pajak='2712505' from MEKA..TPJKd where faktur_pajak='010.001-18.68877538' and Cabang='20'

--UPDATE MEKA..TPJKH set Nilai_Pajak='11307249' from MEKA..TPJKH where faktur_pajak='010.001-18.68877539' and Cabang='20'
--UPDATE MEKA..TPJKd set Nilai_Pajak='11307249' from MEKA..TPJKd where faktur_pajak='010.001-18.68877539' and Cabang='20'

                              
                                                     
20	20	010.001-18.68877534           	PT.SHELL INDONESIA                                	                                                  	09/06/18	 1.680.000 	 168.000 	 1.848.000 
20	20	010.001-18.68877535           	PT.SHELL INDONESIA                                	                                                  	09/06/18	 11.080.000 	 1.108.000 	 12.188.000 
20	20	010.001-18.68877536           	PT.SHELL INDONESIA                                	                                                  	09/06/18	 81.428.159 	 8.142.816 	 89.570.975 
20	20	010.001-18.68877538           	PT.SHELL INDONESIA                                	                                                  	09/06/18	 27.125.050 	 2.712.505 	 29.837.555 
20	20	010.001-18.68877539           	PT.SHELL INDONESIA                                		09/06/18	 113.072.489 	 11.307.249 	 124.379.738 
 