select top 10 * from meka..mrjdwsl where js_customer='02nangs'

select hdt_cabang,hdt_nomor_tagihan,hdt_tanggal,hdt_flag_penerimaan,hdt_creator,
hdt_penagih,hdt_kode_sales,ar_flag_lunas,ar_status_giro,ddt_nomor_document 
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan inner join meka..har on ddt_nomor_document=ar_nomor_bukti
where --hdt_flag_penerimaan='n' 
hdt_nomor_tagihan='010116027717fpTH'
--ddt_nomor_document='010115009007fp'
order by ddt_nomor_document desc

select *  
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan inner join meka..har on ddt_nomor_document=ar_nomor_bukti
where --hdt_flag_penerimaan='n' 
--hdt_nomor_tagihan='010115002898TH'
ddt_nomor_document='010118006505fp'
order by hdt_tanggal asc

select top 10 * from meka..ttrfdoch inner join 
meka..ttrfdocd on
tf_document=trfd_document
where trfd_faktur between '010217012943fp' and '010217012943fp'

select top 10 * from meka..ttrfdoch where tf_document between '010117001431TD' and  '010117001431TD' 

select top 10 * from meka..ttrfdocd where trfd_document='010116003115TD'

010217012943fp abeth - 010217000799TD      
010217012948fp abeth - 010217000799TD      
010217012948fp abeth - 010217000799TD      