select top 2000 * from MEKA..MRJDWSL where --JS_Customer='61BAROK' and 
JS_Kode_Sales='1ek' and JS_SO='02'


--delete from MEKA..MRJDWSL where
JS_Kode_Sales='purn' and JS_SO='08'

select js_customer,AR_Nomor_Bukti,AR_Flag_Lunas,(select top 1 DS_Kode_Product from MEKA..tslsd inner join MEKA..HAR on DS_Nomor_Faktur=AR_Nomor_Bukti) as prod
 from MEKA..MRJDWSL 
right join meka..har on JS_Customer=AR_Kode_Cust
 where --JS_Customer='61BAROK' and 
JS_Kode_Sales='1ek' and AR_Flag_Lunas='n'

select js_customer,AR_Nomor_Bukti,AR_Flag_Lunas,AR_Salesman,hs_kode_salesman,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod
from MEKA..HAR inner join MEKA..MRJDWSL on AR_Kode_Cust=JS_Customer
inner join MEKA..TSLSH on AR_Nomor_Bukti=hs_nomor_faktur 
where JS_Kode_Sales='1ek' and AR_Flag_Lunas='n'

select top 10 * from MEKA..har


