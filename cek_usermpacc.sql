select top 10 * from meka..trtrh where hrc_no_retur='010115000210ca'

select top 10 part_kode_wh,part_kode,part_harga_jual,part_stock_bisa_jual from meka..mpart where part_kode='acc.072' and part_stock_bisa_jual > '0'

select * from meka..usermpacc --order by r_userid asc
 where r_userid='wiwin'

--delete from meka..usermpacc where r_userid='NURYANI' and r_postaccount='400100001'	
--delete from meka..usermpacc where r_userid='NURYANI' and r_postaccount='400100002'	


