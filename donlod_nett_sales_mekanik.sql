select top 1000 * from meka..mslsmn where sales_cabang between '03' and '07'

select * from meka..tslsh where hs_kode_salesman ='wahid'

select sum(ds_amount-ds_amount_d4) as nett from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where hs_tanggal>='2014-01-01' and hs_cabang between '03' and '07' and ds_qty_retur='0' and hs_kode_salesman='wahid'
ACM  
IF   
IFAN 
ROV  
SBD  
SO   
SOCA 
TEK  
UD   
UDI  
WAHID
