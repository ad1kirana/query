select  * from meka..openblock where flag_approve='t' 
order by createdate desc

02REFY    
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='G0200674'   
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='G0200687'   
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='G0400307'     
--update meka..mcust set cust_status_cust='2' from meka..mcust where cust_kode='05SAMJ'    
--update meka..mcust set cust_status_cust='2' from meka..mcust where cust_kode='39CHY'    

select top 10 cust_kode,cust_nama,cust_status_cust from meka..mcust where cust_kode='G0200495'
select top 10 cust_kode,cust_nama,cust_status_cust from meka..mcust where cust_kode='s-00000447'

mira, [31.07.17 20:02]
G0200674 MASIH AR

mira, [31.07.17 20:03]
G0200687

--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='051300931C'

select top 10 * from meka..har where ar_kode_cust='61KURNIA' and ar_flag_lunas='n'