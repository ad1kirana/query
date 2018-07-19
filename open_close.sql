--delete from meka..hspos where hps_tanggal='2017-05-01' and hps_cabang='30'
select * from meka..hspos where hps_tanggal='2017-05-01' and hps_cabang='30'

select * from meka..hbsff where hf_tanggal='2017-05-01' and hf_cabang='30'
--delete from meka..hbsff where hf_tanggal='2017-05-01' and hf_cabang='30'

select top 3 * from meka..hpostblc where pba_cabang='30' and pba_fiscalyear='2017' and pba_postaccount='900000000' 
and pba_balance04='-10397163.24'

select top 3 * from meka..hpostblc where pba_cabang='30' and pba_fiscalyear='2017' and pba_postaccount='900000000' 
select top 3 * from meka..hpostblc where pba_cabang='30' and pba_fiscalyear='2017' and pba_postaccount='290000000' 

--update meka..hpostblc set pba_balance04='0' from meka..hpostblc where pba_cabang='30' and pba_fiscalyear='2017' and pba_postaccount='900000000' 
--update meka..hpostblc set pba_balance04='0' from meka..hpostblc where pba_cabang='30' and pba_fiscalyear='2017' and pba_postaccount='290000000' 

--update meka..tperiod set status='O' from meka..tperiod where cabang='30' and
month='2017-04-01 00:00:00.000'and status='C'
266778958