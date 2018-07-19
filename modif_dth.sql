select top 10 * from meka..mrjdwsl where js_customer='01dme' and js_kode_sales='dodik'

select * from meka..mrjdwsl where js_kode_sales='1BSR' js_customer='02din'

select * from meka..mrjdwsl where js_kode_sales='nugro' and js_interval_minggu='90'
--update meka..mrjdwsl set js_interval_minggu='30' from meka..mrjdwsl where js_kode_sales='nugro' and js_interval_minggu='90'

select distinct ddt_kode_cust from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan where hdt_penagih='skm' and hdt_sampai_tanggal between '2013-10-01' and '2013-12-19'
select top 10 * from meka..tcold 


select top 10 * from meka..mrjdwsl where js_kode_sales='nugro'
select top 10 * from meka..mrjdwsl where js_customer='03GAYA' 
select * from meka..mrjdwsl where js_kode_sales='a-YA' and js_sts='n'
select js_kode_sales,js_kode_area,js_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_kota,js_senin,js_selasa,js_rabu,js_kamis,js_jumat,js_sabtu from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where 
(js_kode_sales='AFRI'
or js_kode_sales='ANDA'
or js_kode_sales='DODIK'
or js_kode_sales='EKOB'
or js_kode_sales='KRI'
or js_kode_sales='MUST'
or js_kode_sales='SUTR'
or js_kode_sales='TRIB')
and cust_status_cust <>'2'

select top 100 * from meka..mslsmn where sales_cabang='01' and sales_keterangan like 'osra%'
select * from meka..mrjdwsl where js_kode_sales='toto' and js_customer like '`         '
 and js_customer like '`         '
 
--update meka..mrjdwsl set JS_Sts='M' from meka..mrjdwsl where js_kode_sales='a-YA' and js_sts='n'

--update meka..mrjdwsl set js_kode_sales='A-YA' from meka..mrjdwsl where js_kode_sales='A-SW' and js_customer like '0%'