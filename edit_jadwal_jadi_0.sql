select js_kode_sales,js_kode_area,js_customer,cust_kode_area,area_nama from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode
inner join meka..marea on cust_kode_area=area_kode
and cust_companycode=area_company
 where js_kode_sales='toto' order by js_customer asc 

select * from meka..mrjdwsl  where js_kode_sales='toto' and Js_customer like '34%'

--update meka..mrjdwsl set js_kode_area='04', js_minggu='0',js_senin='0', js_selasa='0', js_rabu='0', js_kamis='0', js_jumat='0', js_sabtu='0'
where js_kode_sales='toto' and Js_customer like '34%'
