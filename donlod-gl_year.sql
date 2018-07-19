select top 10 *
--select * 
from meka..hledger where year(led_fiscalyear)=2006
and led_companycode <>'20'

and led_fiscalmonth <'07'

select * 
from meka..hledger where year(led_fiscalyear)=2004
and led_companycode <>'20'
and led_fiscalmonth >'06'

and led_tranno='010104007024GL'

and led_cabang='01'

--select * 
from meka..hledger where year(led_trandate)=2005
and led_companycode <>'20'

--select * 
from meka..hledger where year(led_trandate)=2006
and led_companycode <>'20'

select top 10 * from meka..sledger