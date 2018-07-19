select sum(hdt_total_tagihan) 
select hdt_cabang,hdt_nomor_tagihan,hdt_tanggal,hdt_penagih,hdt_kode_sales,hdt_total_tagihan,hdt_creator from meka..tcolh inner join meka..mslsmn on hdt_penagih=sales_kode and 
hdt_tanggal between '2016-03-01' and '2016-03-31'
and sales_supervisor='drj'

select hdt_cabang,hdt_nomor_tagihan,hdt_tanggal,hdt_penagih,hdt_kode_sales,hdt_total_tagihan,hdt_creator 
--select top 10 * 
from meka..tcolh --inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan 
inner join meka..mslsmn on hdt_penagih=sales_kode
where hdt_tanggal between '2016-03-01' and '2016-03-31'
and sales_supervisor='drj'


select top 100 * from meka..mslsmn where sales_supervisor='drj'
0ADH 
0AF  
0AFN 
0AN  
0AR  
0CA  
0CN  
0CT  
0EK  
0ET  
0PA  
0TK  
0WK  
0WU  
ADH  
AYS  
AYSP 
NGA  
NGD  
NGR  
NUG  
NUGRO
SKA  
SKM  
WDYA 
WK   