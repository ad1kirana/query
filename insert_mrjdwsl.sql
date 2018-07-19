select top 3 * from meka..mrjdwsl
select sales_cabang,sales_kode,sales_nama,sales_sts,sales_supervisor from meka..mslsmn

select top 100 * from meka..mtipe where type_kode_group='bps' and type_status='0'

--insert into meka..mrjdwsl (js_company,js_so,js_kode_area,js_kode_sales,js_customer,js_sts,js_minggu,js_senin,js_selasa,js_rabu,js_kamis,js_jumat,js_sabtu,js_interval_minggu,js_createuser,js_createdate,js_createtime,js_modifyuser, js_modifydate,js_modifytime) values('01','01','00','NUGRO','02ADJM','M','0','1','1','1','1','1','0','15','SYSTEM','2015-01-23 00:00:00.000','','','','')


select *  from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='tgw' and cust_kode_area='05'
select *  from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='0af'