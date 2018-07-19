select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 10 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2017' --AND led_fiscalmonth between '08' and '08'
and led_fiscalmonth ='06'
order by led_cabang asc,led_postaccount asc, led_trandate asc, led_tranno asc
