select led_cabang,led_postaccount,idt_description,led_tranno,led_trandate,led_tranreff,led_trandescription,led_indicator,led_amount
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode and led_companycode=idt_company
where --led_fiscalyear='2013' and 
led_cabang between '01' and '01' and
led_trandate between '2015-12-01' and '2017-07-31' and
led_postaccount='160000006' and
led_trandescription like  '%asus%'
order by led_postaccount asc

select top 3 * from meka..hledger
select top 3 * from meka..mcoa

--perjalanan ini.....
select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2016' AND led_fiscalmonth between '08' and '08'
--and led_fiscalmonth='02'
and led_cabang<>'20'
and led_postaccount between '700114000' and '700999999'
order by led_postaccount asc


select led_cabang,led_postaccount,idt_description,led_tranno,led_trandate,led_tranreff,led_trandescription,led_indicator,led_amount
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
where led_fiscalyear='2016'
and led_postaccount between '140000002' and '140000002'
and led_trandescription like '%dell%'

select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2016' AND led_fiscalmonth between '10' and '10'
--and led_fiscalmonth='02'
and led_cabang='03'
and led_postaccount between '130100000' and '130100000'
order by led_postaccount asc


--cogs
select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where 
--led_fiscalyear='2016' AND led_fiscalmonth between '10' and '10'
led_trandate between '2016-01-01' and '2016-10-31'
and led_cabang between '03' and '08'
and led_postaccount between '400100101' and '400100102'
order by led_postaccount asc