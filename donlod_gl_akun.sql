select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 10 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2012' --AND led_fiscalmonth between '08' and '08'
--and led_fiscalmonth between '01' and '05'
and led_cabang='03'
and led_postaccount = '160000006'
--and led_trandescription like '%epson%'
order by led_postaccount asc