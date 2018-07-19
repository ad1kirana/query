select js_so,js_kode_sales,js_kode_area,js_customer,cust_nama,cust_alamat_1,cust_kota,cust_kode_area,js_sts  from meka..mrjdwsl inner join meka..mcust on js_customer=cust_kode where js_kode_sales='0adh'
js_kode_sales,js_customer,js_sts


select js_so,js_kode_area,js_kode_sales,sales_nama,js_customer,js_senin,js_selasa,js_rabu,js_kamis,js_jumat,js_sabtu
  from meka..mrjdwsl inner join meka..mslsmn on js_kode_sales=sales_kode and js_so=sales_cabang 
where js_so='02'


select *  from meka..mrjdwsl where js_kode_sales='didi' and js_kode_area='00'
--ubah_jadwal_harian
--update meka..mrjdwsl set js_minggu='0', js_senin='1', js_selasa='1', js_rabu='1', js_kamis='1', js_jumat='1',js_sabtu='0' from meka..mrjdwsl where js_kode_sales='0adh'

--update meka..mrjdwsl set js_kode_sales='0ADH' from meka..mrjdwsl where js_kode_sales='0adh'
--update meka..mrjdwsl set js_sts='M' from meka..mrjdwsl where js_kode_sales='0adh'

--update meka..ttrfdoch set tf_recuser='WIDYA' from meka..ttrfdoch where tf_createuser='ery' and tf_recuser='ery'
select tf_branch,tf_createuser,tf_recuser,tf_document from meka..ttrfdoch where tf_createuser='ery' and tf_recuser='ngadiono'