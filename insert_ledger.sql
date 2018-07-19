select top 10 * from meka..hledger where led_tranreff='010816000001cl'

01	08	010816004971GL      	2016-04-01 00:00:00.000	010816000001CL      	CLAIM CL/MC  081500115C BUDI HARYANTO             	C	120500002	473782	115       	2016-04-01 00:00:00.000	141921    	ARIFIN    	04	2016

--insert into meka..hledger (LED_CompanyCode,LED_Cabang,LED_TranNo,LED_TranDate,LED_TranReff,LED_TranDescription,LED_Indicator,LED_PostAccount,LED_Amount,LED_TransID,LED_PostDate,LED_PostTime,LED_PostUser,LED_FiscalMonth,LED_FiscalYear)
values ('01','08','010816004971GL','2016-04-01 00:00:00.000','010816000001CL','CLAIM CL/MC 081500115C BUDI HARYANTO','C','120500000','473782','115','2016-04-01 00:00:00.000','141921','ARIFIN','04','2016')


select top 10 * from meka..hpostblc where pba_postaccount='120500000' and pba_cabang='08' and pba_fiscalyear='2016'
select top 10 * from meka..hledger where led_postaccount='120500000' and Led_cabang='08' 

--update meka..hpostblc set PBA_Balance04='473782',PBA_BegBalance05='473782', PBA_BegBalance06='473782', PBA_BegBalance07='473782',
PBA_BegBalance08='473782', PBA_BegBalance09='473782', PBA_BegBalance10='473782', PBA_BegBalance11='473782',
PBA_BegBalance12='473782', PBA_BegBalance13='473782', PBA_BegBalance14='473782' from meka..hpostblc where pba_postaccount='120500000' and pba_cabang='08' and pba_fiscalyear='2016'
