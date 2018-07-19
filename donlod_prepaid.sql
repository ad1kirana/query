
--donlod prepaid_23_22
select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2016'
and led_fiscalmonth between '10' and '11'
and led_cabang between '01' and '02'
and led_postaccount ='140100001'
order by led_postaccount asc


select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2016'
and led_fiscalmonth between '10' and '11'
and led_cabang between '01' and '02'
and led_postaccount ='140100004'
order by led_postaccount asc
