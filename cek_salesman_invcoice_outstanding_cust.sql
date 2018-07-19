select top 10 * from MEKA..HAR where AR_Nomor_Bukti='010117040633fp'

select top 1000 ar_nomor_bukti, ar_kode_cust, AR_Salesman, 
(select top 1 ds_kode_product from MEKA..tslsd where 
DS_Nomor_Faktur=AR_Nomor_Bukti) as prod

from MEKA..HAR where (AR_Kode_Cust='05DWM' or AR_Kode_Cust='05rama' or AR_Kode_Cust='39MUSMO' or AR_Kode_Cust='05DWUT2' or AR_Kode_Cust='05REJM')
and AR_Flag_Lunas='n'


select top 1000 ar_nomor_bukti, ar_kode_cust, AR_Salesman, 
(select top 1 ds_kode_product from MEKA..tslsd where 
DS_Nomor_Faktur=AR_Nomor_Bukti) as prod

from MEKA..HAR where AR_Kode_Cust='02agmo'
and AR_Flag_Lunas='n'

