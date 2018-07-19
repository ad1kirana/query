

select so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl where aprovalsts='n' and flaglevel1='n'
--and so='07'
order by create_date desc

--update meka..ubah_cl set flaglevel1='Y' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='N' and 
nodocument='010816000030LM' and approval_user='SUSILO' and aprovalsts='n'

select top 10* from meka..mclimit where cust_code='031500973c'
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user)
values ('031500973c','01','08','10000000','0','','')
--update meka..mclimit set cust_creditlimit='10000000' from meka..mclimit where cust_code='031500973c' and cust_cabang='08'

--update meka..mclimit set cust_creditlimit='5000000' from meka..mclimit where cust_code='031600209C' and cust_cabang='03'


--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('071800053C','01','07','1','0','','')
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('081800885C','01','08','1','0','','')
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('p-00000989','01','07','1','0','','')
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('061700504C','01','06','1','0','','')
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('051800432C','01','05','1','0','','')
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('041600667C','01','04','1','0','','')
--insert into meka..mclimit (Cust_code,Cust_company,Cust_cabang,cust_creditlimit,Cust_creditused,cust_status,lock_user) 
values ('031600764C','01','03','1','0','','')


061700504C

--update meka..mclimit set cust_cabang='08' from meka..mclimit where cust_code='071500335c'

select top 10* from meka..mclimit where cust_code='081500459C' and cust_cabang='08'
select top 10* from meka..mclimit where cust_code='031701035C' and cust_cabang='08'

select top 10 * from MEKA..TCAH where HDKN_No_CA='010717000008DA'
select top 10 * from MEKA..TCAH where HDKN_No_CA='010717000028CA'

--update meka..tcah set HDKN_Customer_Code='031701035C' from MEKA..TCAH where HDKN_No_CA='010717000008DA'
--update meka..tcah set HDKN_Customer_Code='081500459C' from MEKA..TCAH where HDKN_No_CA='010717000028CA'


--delete from meka..mclimit where cust_code='071500335c' and cust_cabang='08'

