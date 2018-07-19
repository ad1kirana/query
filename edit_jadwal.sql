--update meka..mrjdwsl set js_minggu='0', js_senin='1', js_selasa='0', js_rabu='0', js_kamis='0', js_jumat='0' from meka..mrjdwsl where js_so='30' and js_customer='35jhony' and js_kode_sales='ekob'
--update meka..mrjdwsl set js_minggu='0', js_senin='1', js_selasa='1', js_rabu='1', js_kamis='1', js_jumat='1' from meka..mrjdwsl where js_kode_sales='1rsy'
--update meka..mrjdwsl set js_minggu='0', js_senin='1', js_selasa='1', js_rabu='1', js_kamis='1', js_jumat='1' from meka..mrjdwsl where js_kode_sales='1sus'

select top js_customer from meka..mrjdwsl where js_kode_sales='anm' js_so='30' and js_customer='35uj' and js_kode_sales='ekob'
select js_customer,cust_nama from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='esan' and js_so='02'
select js_customer,js_kode_area,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='band'
select top 10 *  from meka..mrjdwsl where js_kode_sales='1' and js_customer='33CAMO' and js_kode_area='00'
--delete from meka..mrjdwsl where js_kode_sales='1bsr' and js_customer='33CAMO' and js_kode_area='00'
select *  from meka..mrjdwsl where js_kode_sales='DIDI'-- and js_customer like '3%' js_sts='m' and
select *  from meka..mrjdwsl where js_kode_sales='6ri' --and js_customer='' and js_createuser='yustina'
select *  from meka..mrjdwsl where js_customer=''
select top 10 * from meka..mslsmn where sales_nama like 'a-%' and sales_cabang='30'

select *  from meka..mrjdwsl where js_kode_sales='tgw' and js_senin='1' and js_kode_area='02'
select *  from meka..mrjdwsl where js_kode_sales='A-ni' and js_sabtu='1'
 and js_customer='63suhar' and js_kode_area='00'
select *  from meka..mrjdwsl where js_kode_sales like'a-%' and js_kode_area='03'
 order by js_customer asc 
and js_customer='63suhar' and js_kode_area='00'

 select * from meka..mrjdwsl where js_kode_sales='1' and js_kode_area <>'00'

--delete from meka..mrjdwsl where js_kode_sales='1rsy' and js_kode_area ='02'
--delete from meka..mrjdwsl where js_kode_sales='1sus' and js_kode_area <>'04'

select * from meka..mrjdwsl where js_kode_sales='adh' and --js_customer='03TUC'
js_kode_area <>'04'




--delete from meka..mrjdwsl where js_kode_sales='afri' and js_kode_area='01'
select * from meka..mrjdwsl where js_kode_sales='1sus' and js_customer like '03cobs'
--delete from meka..mrjdwsl where js_kode_sales='1sus' and js_customer like '03cobs'


select js_customer from meka..mrjdwsl where js_kode_sales='a-rl'
select js_customer from meka..mrjdwsl where js_kode_sales='xAN'

select js_company,js_so,js_kode_area,js_kode_sales,js_customer,CUST_Nama, CUST_Kota ,cust_kode_area,cust_status_cust,js_createuser from meka..mrjdwsl inner join meka..mcust 
on js_customer=cust_kode where js_kode_sales='a-rl'
and JS_kode_area='03'
and js_createuser='andar'

select top 10 * from MEKA..HAR where AR_Nomor_Bukti='010117027660FP'
--update MEKA..HAR set AR_Salesman='xAN' from MEKA..HAR where AR_Nomor_Bukti='010117027660FP'


select * from meka..mrjdwsl where js_kode_sales='a-wi' and JS_Kode_Area='03'
select * from meka..mrjdwsl where js_kode_sales='3RK'
select * from meka..mrjdwsl where js_kode_sales='3GA' and JS_Kode_Area='01' and JS_Rabu='1'
select * from meka..mrjdwsl where js_kode_sales='1ar' and js_sts='n'
select * from meka..mrjdwsl where js_kode_sales='WANT'
select * from meka..mrjdwsl where JS_SO='01'
select * from meka..mrjdwsl where js_customer='03NURMOT1'
select * from meka..mrjdwsl where (js_kode_sales like 'd%' or JS_Kode_Sales='1ek')



select * from meka..mrjdwsl where js_kode_sales='2rk' and JS_Createuser <> 'andar'

(3RK) d ganti punyae ganesh(3GA)

--update meka..mrjdwsl set JS_Kode_Area='05' from meka..mrjdwsl where js_kode_sales='2rk' and JS_Createuser <> 'andar'
--update meka..mrjdwsl set js_kode_sales='A-WI',js_sts='M'  from meka..mrjdwsl where js_kode_sales='a-rl'
--update meka..mrjdwsl set js_kode_sales='6AGW',js_sts='M'  from meka..mrjdwsl where js_kode_sales='6RI'
--update meka..mrjdwsl set js_kode_sales='6FJ',js_sts='M'  from meka..mrjdwsl where js_kode_sales='6GA'
--update meka..mrjdwsl set js_kode_sales='xAN'  from meka..mrjdwsl where js_kode_sales='1AN'

 
 and js_kode_area <>'01' and js_sts <>'M'
--update meka..mrjdwsl set js_sts='N'  from meka..mrjdwsl where js_kode_sales='1AR' and js_sts='M' 
--update meka..mrjdwsl set js_kode_sales='2RK',js_sts='M'  from meka..mrjdwsl where js_kode_sales='2eep'
--update meka..mrjdwsl set js_kode_sales='2RKx'  from meka..mrjdwsl where js_kode_sales='2RK' and js_customer='04PTPM' and js_kode_area='02'

--update meka..mrjdwsl set js_kode_sales='2RHA',js_sts='M'  from meka..mrjdwsl where js_kode_sales='ANDA'
--update meka..mrjdwsl set js_kode_area ='01', js_sts ='M' where js_kode_sales='1rks' and js_kode_area <>'01' and js_sts <>'M'
--update meka..mrjdwsl set js_minggu='0', js_senin='1', js_selasa='1', js_rabu='1', js_kamis='1', js_jumat='1' from meka..mrjdwsl where js_kode_sales='4AM'
--update meka..mrjdwsl set js_kode_sales='3WA' from meka..mrjdwsl where js_kode_sales='ASP'
--update meka..mrjdwsl set js_kode_sales='A-NI' from meka..mrjdwsl where js_kode_sales='A-ZA'
--update meka..mrjdwsl set js_kode_sales='6ER' from meka..mrjdwsl where js_kode_sales='6HRI'
--update meka..mrjdwsl set js_kode_sales='TGW' from meka..mrjdwsl where js_kode_sales='uuu'
--update meka..mrjdwsl set js_kode_sales='TGW' from meka..mrjdwsl where js_kode_sales='uuu'
--update meka..mrjdwsl set js_kode_sales='1HAR' from meka..mrjdwsl where js_kode_sales='1SUS'
--update meka..mrjdwsl set js_sts ='N' from meka..mrjdwsl where js_kode_sales='BAM'
--update meka..mrjdwsl set js_sts ='N' from meka..mrjdwsl where js_kode_sales='KW4'
--update meka..mrjdwsl set js_kode_sales='6HRI' from meka..mrjdwsl where js_kode_sales='6jr'

select *  from meka..mrjdwsl where js_kode_sales='A-ni' and js_senin='1' and js_kode_area='02'
select *  from meka..mrjdwsl where js_kode_sales='A-ni' and js_kamis='1' and js_kode_area='02' and js_senin='1'

select top 10000 * from meka..mslsmn where sales_nama like '6jr'

--delete from meka..mrjdwsl where js_kode_sales='nar' and js_customer like '3%'

--update meka..mrjdwsl set js_kode_sales='1RKS' from meka..mrjdwsl Where js_customer='35AE' and js_kode_sales='AFRI'
select top 10 * from meka..mrjdwsl where js_customer='63agung' and js_kode_area='01'
--delete  from meka..mrjdwsl where js_customer='35AE' and js_kode_area='01' and js_kode_sales='1rks'
 2SC0N >>> 2RHA
select js_kode_sales,js_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_kode_area,js_kode_area,JS_Createuser  from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode
where js_kode_sales='2rk'

anang, yuda, guntur, anam, antok

select js_customer,cust_kode_area,js_sts  from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='want' and js_sts='m' and cust_kode_area='03'
--update meka..mrjdwsl set js_kode_sales='3AS', js_kode_area='01' from meka..mrjdwsl where js_kode_sales='ANAM' and js_customer='1122M' and js_kode_area='00'

--update meka..mrjdwsl set js_sts='N' from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='want' and js_sts='m' and cust_kode_area='03'

--update meka..mrjdwsl set js_sts='N'  from meka..mrjdwsl where js_kode_sales='1yul' and js_sts='m'

select *  from meka..mrjdwsl where js_kode_sales='6jr'
select *  from meka..mrjdwsl where js_kode_sales='6hri'

--update meka..mrjdwsl set js_interval_minggu='45' from meka..mrjdwsl where js_kode_sales='SKM'
select top 10 * from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan 
where hdt_flag_penerimaan<>'y' and ddt_kode_cust='63suhar'

select top 10 * from meka..mrjdwsl where js_so='30' and js_customer='01sal' and js_kode_sales='3epra' and js_kode_area='02'
--update meka..mrjdwsl set js_senin='0', js_rabu='1' from meka..mrjdwsl where js_so='30' and js_customer='36tehnika' and js_kode_sales='AFRI' and js_kode_area='00'
--
select top 100 * from meka..mrjdwsl where js_so='30' and js_createuser='kuncoro' and js_interval_minggu <>'0'
--update meka..mrjdwsl set js_interval_minggu ='0' from meka..mrjdwsl where js_so='30' and js_createuser='kuncoro' and js_interval_minggu <>'0'
--update meka..mrjdwsl set js_interval_minggu ='0' from meka..mrjdwsl where js_so='01' and js_kode_sales='adh'

select sales_cabang,sales_salesoffice,sales_kode,sales_nama,sales_supervisor from meka..mslsmn where sales_sts='0'