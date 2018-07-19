select top 500000 led_fiscalyear, led_cabang,led_trandate,led_tranreff, led_indicator, led_postaccount, led_amount, led_trandescription from hledger 
where led_fiscalyear='2011' and led_cabang='01'and led_postaccount between '100210000' and '100310018'
