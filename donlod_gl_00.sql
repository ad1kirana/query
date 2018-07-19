select distinct led_tranreff,led_cabang,led_postaccount,idt_description,led_tranno,led_trandate,led_trandescription,led_indicator,led_amount
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
where -- led_fiscalyear='2013' and 
led_cabang='30'
and led_trandate between '2013-08-27' and '2014-02-28'
and led_postaccount='120500000'
and led_tranreff like '%cm'
order by led_tranreff asc


select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2016'
and led_fiscalmonth='06'
and led_cabang='05'
--and led_postaccount like  '300000001' and '300400000'
--and led_postaccount like  '300%'
order by led_postaccount asc
