select top 10 * from meka..tcold where ddt_nomor_document='010115036589fp'
select top 10 * from meka..tcolh where hdt_nomor_tagihan='010116000129TH'
select cust_kode,cust_kode_area from meka..mcust where cust_kode='28yads'
select top 10 * from meka..mrjdwsl where js_customer='62SURDHA  '
select top 10 * from meka..tcold inner join meka..tcold on 
select top 1000 * from meka..mrjdwsl where js_kode_sales='PURN' 
order by js_customer asc   and js_kode_area='00'

--update meka..mrjdwsl set js_so='02' from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08'

--cek_list_dth 
select top 10000 hdt_nomor_tagihan,hdt_tanggal, hdt_penagih,hdt_flag_penerimaan, ddt_nomor_document, ddt_nilai_document,ddt_nilai_tagihan,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,(ar_nilai_total-ar_nilai_sudah_cair) as sisa_ar, ar_status_giro
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan
inner join meka..har on ddt_nomor_document=ar_nomor_bukti
where ddt_nomor_document='010215018451fp'

select top 10 ar_kode_cust,ar_flag_lunas,ar_status_giro,ar_nomor_bukti,ar_salesman from meka..har where ar_nomor_bukti='0102150fp'

--update meka..har set ar_status_giro='N'  from meka..har where ar_status_giro='y' and ar_nomor_bukti='010115037147fp'

select top 10 * from meka..mslsmn where sales_kode like '2na%'
select top 100 * from meka..har inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur and ar_cabang=hs_cabang where ar_kode_cust='05gunb2' and ar_salesman='1kri' and ar_flag_lunas='n'
order by ar_nomor_bukti desc
ar_nomor_bukti='010115036589fp'

--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62AMI'     
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62ANMO'    
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62ANUG'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62BARMO'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62BERKA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62BIBA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62DITOR'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62GALAXI'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62GAMO'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62GHATFAN' 
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62GUJA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62HONO'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62IKUNG'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62INJA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62JUNED'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62KENDA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62LATAN'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62LUMINTU'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62MAKJA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62MANDI'  
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62PANDA'  
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62PRYT'  
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62RICKY'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62SIJA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62SYIFA'
--delete meka..har from meka..mrjdwsl where js_kode_sales='PURN' and js_so='08' and js_customer='62YANTO'
