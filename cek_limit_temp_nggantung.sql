select top 1000 * from meka..hlimit1 where rcl_customer='51ON' --and rcl_iden='34012' 
order by rcl_tanggal_in desc
select top 1000 * from meka..hlimit1 where rcl_customer='031500403C' -- and rcl_iden='36810' 
order by rcl_tanggal_in desc
select top 100 * from meka..ubah_cl where kode_customer='11karu' order by nodocument desc

--delete from meka..hlimit1 where rcl_customer='51on' and rcl_iden='38645'
--delete from meka..hlimit1 where rcl_customer='56edmo' and rcl_iden='33836'
--update meka..hlimit1 set rcl_status_balik='1' from meka..hlimit1 where rcl_customer='51ON' and rcl_iden='38752'

select top 10 * from meka..mclimit where cust_code='51ON'
38751
38752

select so,nodocument,status,kode_customer,cust_nama,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date ,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl inner join meka..mcust on kode_customer=cust_kode
where kode_customer='51ON'
order by create_date desc
