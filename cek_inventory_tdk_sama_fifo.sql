select 
RTRIM(LED_TranReff) as ledger, 
rtrim(LED_Indicator) as indi_ledger,
LED_Amount as amount_ledger,
t.ref as fifo,
t.indi as indi_fifo,
t.amount2 as amount_fifo
 from 
 (select 
 rtrim(MC_No_Doc) as ref,
 rtrim(MC_Sifat_Trn) as indi,
 sum(MC_Harga_Pokok_UNIT*mc_qty) as amount2
 from MEKA..HFFMOV
 where MC_Cabang between '01' and '30'
 and MC_Tanggal between '2018/01/01' and '2018/06/03'
 group by MC_No_Doc,MC_Sifat_Trn) t
 inner join MEKA..hledger on t.ref=led_tranreff
 where LED_PostAccount='130100000' 
 and LED_Cabang between '01' and '35'
 and LED_TranDate between '2018/01/01' and '2018/06/03'
 and  LED_Amount <> t.amount2
 group by LED_TranReff, LED_Indicator,led_amount, t.ref, t.indi, t.amount2
 
 union all
 
select 
RTRIM(LED_TranReff) as ledger, 
rtrim(LED_Indicator) as indi_ledger,
LED_Amount as amount_ledger,
t.ref as fifo,
t.indi as indi_fifo,
t.amount2 as amount_fifo
 from 
 ( select 
 rtrim(MC_No_Doc) as ref,
 rtrim(MC_Sifat_Trn) as indi,
 sum(MC_Harga_Pokok_UNIT*mc_qty) as amount2
 from MEKA..HFFMOV
 where MC_Cabang between '01' and '30'
 and MC_Tanggal between '2018/01/01' and '2018/06/03'
 group by MC_No_Doc,MC_Sifat_Trn) t
full outer join MEKA..hledger on t.ref=led_tranreff
 where LED_PostAccount='130100000' 
 and LED_Cabang between '01' and '35'
 and LED_TranDate between '2018/01/01' and '2018/06/03'
 and  (led_tranreff is null or t.ref is null)
 group by LED_TranReff, LED_Indicator,led_amount, t.ref, t.indi, t.amount2
 order by ref, indi_ledger