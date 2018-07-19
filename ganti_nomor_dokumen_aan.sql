select top 10 * from MEKA..TCMH where H_Document='021017000029CM'
select top 10 * from MEKA..TCMd where Documentno='021018000003CM'

select top 10 * from MCOUNTR where CT_Jenis_Trans='cm' and CT_Tahun='2017' and CT_Cabang='10'
select top 10 * from MCOUNTR where CT_Jenis_Trans='cm' and CT_Tahun='2018' and CT_Cabang='10'
--update meka..tcmh set h_document='021017000029CM' from MEKA..TCMH where H_Document='021018000003CM'
--update MEKA..TCMD set DocumentNo='021017000029CM' from MEKA..TCMd where Documentno='021018000003CM'

select top 10 * from MEKA..HLEDGER where LED_TranReff='021017000029CM'
select top 10 * from MEKA..TCMH where H_Post='n' and H_Cabang='10'
select top 10 * from MEKA..TCMH where H_Post='n' and H_Cabang='10'
select  * from MEKA..TCMH where H_Cabang='10' order by H_Document desc


--update meka..tcmh set h_document='021017000035CM' from MEKA..TCMH where H_Document='021018000009CM'
--update meka..tcmh set h_document='021017000031CM' from MEKA..TCMH where H_Document='021018000005CM'
--update meka..tcmh set h_document='021017000032CM' from MEKA..TCMH where H_Document='021018000006CM'
--update meka..tcmh set h_document='021017000033CM' from MEKA..TCMH where H_Document='021018000007CM'
--update meka..tcmh set h_document='021017000034CM' from MEKA..TCMH where H_Document='021018000008CM'

--update MEKA..TCMD set DocumentNo='021017000035CM' from MEKA..TCMd where Documentno='021018000009CM'
--update MEKA..TCMD set DocumentNo='021017000031CM' from MEKA..TCMd where Documentno='021018000005CM'
--update MEKA..TCMD set DocumentNo='021017000032CM' from MEKA..TCMd where Documentno='021018000006CM'
--update MEKA..TCMD set DocumentNo='021017000033CM' from MEKA..TCMd where Documentno='021018000007CM'
--update MEKA..TCMD set DocumentNo='021017000034CM' from MEKA..TCMd where Documentno='021018000008CM'

select top 10 * from MCOUNTR where CT_Jenis_Trans='cm' and CT_Tahun='2017' and CT_Cabang='10'
--update meka..mcountr set ct_last_number ='35' from MCOUNTR where CT_Jenis_Trans='cm' and CT_Tahun='2017' and CT_Cabang='10' and ct_last_number='34'
