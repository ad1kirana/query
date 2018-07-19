select led_cabang,led_trandate,led_tranno,led_tranreff, led_trandescription, led_indicator,led_amount, led_fiscalmonth, led_fiscalyear 
--select top 10 * 
from meka..hledger where led_fiscalyear='2015' and led_cabang <>'20' and led_tranreff like '%br' and led_indicator='d' and led_fiscalmonth='01'
order by led_tranno asc 


select top 10 * from meka..sledger
