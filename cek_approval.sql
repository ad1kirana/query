
--level3
select top 100 so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,level1,level2,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl where aprovalsts='n' and flaglevel1='y' and flaglevel2='y'
order by no_lm asc
--level2
select top 100 so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,level1,level2,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl where aprovalsts='n' and flaglevel1='y' and flaglevel2='n'
--and so='01'
--and create_user='kiki'
order by no_lm asc
--level1
select so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,level1,level2,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl where aprovalsts='n' and flaglevel1='n'
--and so='20'
--and level1='sugeng'
order by create_date desc
 
 
--update meka..ubah_cl set flaglevel1='R',aprovalsts='R' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='n' aprovalsts='n'


081326030948=pak gunawan; 08122839484=pak anxy
085876407679=bu fita; 081280840319=pak widi
08164287848=pak drajat; 081575892039=pak_bambang_2
08122915882= pak nono
08122503934= pak sugeng
081215376399=pak bambang_1

select * from sjtrade..smscontentoutbox inner join sjtrade..userlogin on smshpno=mobileno where smshpno='081215376399'
order by smsdate desc
select smsdate,smssentdate,smshpno,mobileno from sjtrade..smscontentoutbox inner join sjtrade..userlogin on smshpno=mobileno where 
smscontent like 'micha%'
and smssentdate='2016-11-23'
select top 10 mobileno from sjtrade..userlogin where userid='anxy'

select top 10 * from sjtrade..userlogin where userid='bambang'
select * from sjtrade..smscontentoutbox WHERE SMSSTATUS='2' AND smsdate >'2018-07-15'
--UPDATE sjtrade..smscontentoutbox set smsstatus='2' from sjtrade..smscontentoutbox WHERE SMSSTATUS='1' AND SMSDATE<'2016-11-23'
--delete from sjtrade..smscontentoutbox WHERE SMSSTATUS='2' AND smscontent is null
--UPDATE sjtrade..smscontentoutbox set smsstatus='1',smscounter='1' from sjtrade..smscontentoutbox WHERE SMSSTATUS='2' AND smsdate >'2018-07-15'
--delete from sjtrade..smscontentoutbox
--delete from sjtrade..smscontentinbox 

303018000727LM
303018000728LM
303018000724LM
303018000723LM
303018000719LM
303018000720LM
303018000721LM
303018000722LM
010118000981LM

--update sjtrade..smscontentoutbox set smsstatus='1'
from sjtrade..smscontentoutbox where smsno='9'
and smscontent like '%010117001439LM%'

select * from sjtrade..smscontentoutbox where smsstatus='2' and smsdate>='2018-06-01' and smscontent<>'null'
--update sjtrade..smscontentoutbox set smsstatus='1' from sjtrade..smscontentoutbox where smsstatus='2' and smsdate>='2018-06-01' and smscontent<>'null'
select * from sjtrade..smscontentoutbox where smscontent like '%303018000727LM%'order by smsdate desc
select * from sjtrade..smscontentinbox where smscontent like '303018000728LM%'order by smsdate desc
select * from sjtrade..smscontentoutbox where smscontent like '%010217003196LM%'order by smsdate desc
select * from sjtrade..smscontentinbox where smscontent like '010217003196LM%'order by smsdate desc
select * from sjtrade..smscontentoutbox where smshpno='085866264145' order by smssentdate desc        
select * from sjtrade..smscontentoutbox where smscontent like '%010216004060LM%'order by smsdate desc
select * from sjtrade..smscontentinbox where smscontent like '%010216004060LM%'
select * from sjtrade..smscontentoutbox where smscontent like '%ob a/r%'order by smsdate desc
select * from sjtrade..smscontentinbox where smscontent like 'ob%'order by smsdate desc

select * from sjtrade..smscontentoutbox where smscontent like '%010117001434LM%' and smsno='47563'
--update sjtrade..smscontentoutbox set smsstatus='1'
from sjtrade..smscontentoutbox where smsno='53248' and smscontent like '%010117001439LM%'


select * from sjtrade..smscontentinbox where smshpno like '%8179419138' order by smsdate desc
select * from sjtrade..smscontentinbox where smshpno like '%85866264145' order by smsdate desc

select * from sjtrade..smscontentoutbox where smsno='49282'
--update sjtrade..smscontentoutbox set smscontent='DRAJAT, Req Approval - Code : 58MMMO     - Type : Temp, Name : MM MOTOR , CL : 75000000 , NL : 85000000, AR : 81313281 ,No : 010217002154LM', smshpno='085866264145' from sjtrade..smscontentoutbox where smsno='49282'

select * from sjtrade..smscontentoutbox where smshpno='085866264145' order by smssentdate desc
select * from sjtrade..smscontentinbox order by smsdate desc
select * from sjtrade..smscontentoutbox where smshpno='081215376399' order by smssentdate desc      
select * from sjtrade..smscontentinbox where smshpno='+6281215376399' order by smsdate desc  
select * from sjtrade..smscontentinbox where smshpno='+628164287848' order by smsdate desc  
select * from sjtrade..smscontentinbox where smscontent like 'ob,03EKJA%' order by smsdate desc

051600517C
303017000082LM,y                                                                                                                                                                                                                                               
303017000082LM
select * from sjtrade..smscontentoutbox where smsstatus='2' 
and smsdate='2015-07-01'
order by smsdate desc


select top 100 so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl where nodocument='010616000021LM'


010217003094LM (micha)
 010117002407LM (rita)
 
--update meka..ubah_cl set flaglevel2='Y' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='n' and nodocument='010815000028LM' and approval_user='SUSILO' and aprovalsts='n'
--update meka..ubah_cl set flaglevel1='Y' from meka..ubah_cl where aprovalsts='n' and flaglevel1='N' and flaglevel2='n' and nodocument='010116001703LM' and approval_user='SUSILO' and aprovalsts='n'
--update meka..ubah_cl set flaglevel1='R',aprovalsts='R' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='n' and nodocument='010118000019LM'

--update meka..ubah_cl set flaglevel1='R' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='n' and nodocument='303017001828LM' and approval_user='SUSILO' and aprovalsts='n'
--update meka..ubah_cl set flaglevel2='N' from meka..ubah_cl where aprovalsts='N' and flaglevel1='Y' and flaglevel2='R' and aprovalsts='n' and nodocument='010616000021LM' and so='08'
--update meka..ubah_cl set flaglevel2='R',aprovalsts='R' from meka..ubah_cl where aprovalsts='n' and flaglevel1='Y' and flaglevel2='N' and aprovalsts='n' and
nodocument='010117002407LM'
--update meka..ubah_cl set flaglevel1='Y',aprovalsts='Y'  from meka..ubah_cl where aprovalsts='n' and flaglevel1='N' and flaglevel2='n' and nodocument='010816000055LM' and approval_user='SUSILO' and aprovalsts='n'
--update meka..ubah_cl set flaglevel1='R',aprovalsts='R' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='n' and nodocument='303017001014LM' and approval_user='SUSILO' and aprovalsts='n'

303017001515LM
303017001516LM
--update meka..ubah_cl set aprovalsts='R' from meka..ubah_cl where aprovalsts='n' and flaglevel1='Y' and flaglevel2='n' and aprovalsts='n' and nodocument='010816000021LM' so='08'
--update meka..ubah_cl set aprovalsts='Y' from meka..ubah_cl where aprovalsts='n' and flaglevel1='Y' and flaglevel2='n' and aprovalsts='n' and nodocument='010816000021LM' so='08'
--update meka..ubah_cl set aprovalsts='R' from meka..ubah_cl where aprovalsts='N' and flaglevel1='Y' and flaglevel2='R' and nodocument='010516000016LM'
 
--update meka..ubah_cl set aprovalsts='R' from meka..ubah_cl where aprovalsts='N' and flaglevel1='Y' and flaglevel2='Y' and nodocument='303018000166LM' 

select top 10 * from meka..ubah_cl where nodocument='010116000383LM' 


select so,nodocument,status,kode_customer,cust_nama,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date ,flaglevel1,flaglevel2,aprovalsts
--select top 3 * 
from meka..ubah_cl inner join meka..mcust on kode_customer=cust_kode
where kode_customer='051300107c'
--and aprovalsts='n'
--noDocument='010114003962LM'
--and create_date > '2014-11-01' 
order by create_date desc

select top 10 * from meka..mclimit where cust_code='11emp'

--update meka..mclimit set cust_cabang='01' from meka..mclimit where cust_code='11emp'

G0200637  
04AMAS    
63MULYA   
051300010C
G0200631  
G0200406  


select top 10 * from sjtrade..userlogin where mobileno='081325345009'





--delete from meka..ubah_cl where nodocument='010516000016LM'

select top 100 * from meka..ubah_cl where nodocument='010215002960LM'
--update meka..ubah_cl set approval_user='LEVELTEST' from meka..ubah_cl where nodocument='010215002960LM'
select top 100 * from meka..ubah_cl where flaglevel1='r' and aprovalsts ='n' and create_date >='2015-01-01'
and approval_user='RUDI'
order by create_date desc

--update meka..ubah_cl set level1='RUDI',LEVEL2='RUDI' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n'
and approval_user='rudi'
order by create_date desc


select top 10 * from meka..mclimit where lock_user <>''
--update meka..ubah_cl set aprovalsts='R'
from meka..ubah_cl where aprovalsts='n' and flaglevel1='Y' and flaglevel2='Y' and nodocument='010115002573LM' and approval_user='WIDIJARTO' and aprovalsts='n'

select * from meka..ubah_cl where aprovalsts='n' and flaglevel1='Y' and flaglevel2='N' and aprovalsts='n' and so='08'

--update meka..ubah_cl set flaglevel1='Y', flaglevel2='N' from meka..ubah_cl where aprovalsts='n' and flaglevel1='n' and flaglevel2='Y' and nodocument='010815000028LM' and approval_user='SUSILO' and aprovalsts='n'



select top 10 so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl where flaglevel1='s'

--update meka..ubah_cL set flaglevel1='N' from meka..ubah_cl where flaglevel1='s'
select top 10 * from meka..ubah_cl where nodocument='303515000119LM'

and nodocument='010115000952LM'
order by no_lm asc


select * from sjtrade..smscontentoutbox where smsdate between '2014-08-31' and '2014-09-30' and smsstatus='2' and smshpno <>''
select * from sjtrade..smscontentoutbox where smsstatus='2'and smscontent <> 'null' and smsdate >='2017-06-01'  between '2014-06-17' and '2014-06-30'
--update sjtrade..smscontentoutbox set smscounter='0',smsstatus='1'  from sjtrade..smscontentoutbox where smsstatus='2' and smsdate >'2014-12-20' and smscontent <> 'null'

--update sjtrade..smscontentoutbox set smscounter='0',smsstatus='1'  from sjtrade..smscontentoutbox where smsstatus='2' and smsno='27893'
--update sjtrade..smscontentoutbox set smscounter='0',smsstatus='1'  from sjtrade..smscontentoutbox where smsstatus='2'and smscontent <> 'null' and smsdate >='2017-06-01'
select * from sjtrade..smscontentoutbox where smsstatus='2'and smscontent is null 
--delete from sjtrade..smscontentoutbox where smsstatus='2' and smscontent is null 
--delete from sjtrade..smscontentoutbox where smsstatus='2' and smsdate <'2014-06-01'
--update sjtrade..smscontentoutbox set smscounter='4',smsstatus='2'  from sjtrade..smscontentoutbox where smsstatus='1' and smsdate <'2014-06-18'

select * from sjtrade..smscontentoutbox where smsstatus='1' and smsdate < '2016-01-19'
--update sjtrade..smscontentoutbox set smscounter='1',smsstatus='3'  from sjtrade..smscontentoutbox where smsstatus='2' and smsdate < '2016-01-19' and sms_status='1'
--update sjtrade..smscontentoutbox set smscounter='1',smsstatus='3'  from sjtrade..smscontentoutbox where smsstatus='1' and smsdate < '2016-01-19'

select * from sjtrade..smscontentoutbox where smsstatus='2' and smscontent is null
--delete from sjtrade..smscontentoutbox where smsstatus='2' and smscontent is null
--1	Queuing
--2	Fail
--3	Sent
--4	Receive
select top 10 * from meka..ubah_cl where noDocument='010114004027LM'
--update meka..ubah_cl set Aprovalsts='Y' from meka..ubah_cl where noDocument='010815000009LM'
--update meka..ubah_cl set Flaglevel1='Y', flaglevel2='Y', Aprovalsts='Y' from meka..ubah_cl where noDocument='010815000009LM'

select * from sjtrade..smscontentoutbox where smsstatus='1' and year(smsdate)=2016 and month(smsdate)=5 and day(smsdate)=31
--update sjtrade..smscontentoutbox set smsstatus='3' from sjtrade..smscontentoutbox where smsstatus='1' and year(smsdate)=2016 and month(smsdate)=5 and day(smsdate)=31

aprovalsts='n' and flaglevel1='n'

select top 10 * from meka..ubah_cl where nodocument='010815000010LM'
--delete from meka..ubah_cl where nodocument='010815000010LM'

select top 10 so,nodocument,status,kode_customer,cust_nama,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date ,flaglevel1,flaglevel2,aprovalsts
from meka..ubah_cl inner join meka..mcust on 
kode_customer=cust_kode where  aprovalsts='n' and flaglevel1='y' and flaglevel2='n'

--nodocument='010314000042LM'
kode_customer='01PPM' 
AND 
create_date > '2014-01-01'

select * from sjtrade..smscontentinbox 
--select * from sjtrade..smscontentinbox where smshpno like '%8122839484'
order by smsdate desc
select * from sjtrade..smscontentoutbox 
--select * from sjtrade..smscontentoutbox where smshpno like '%8122839484'
where smsstatus='2' and smshpno is null
and day(smsdate)=19 and month(smsdate)='05'
order by smsdate desc


--delete from sjtrade..smscontentoutbox where smsstatus='2' and smshpno is null

--update sjtrade..smscontentoutbox set smsstatus='1' from sjtrade..smscontentoutbox 
where smsstatus='2' and smshpno is not null
and day(smsdate)=19 and month(smsdate)='05'
order by smsdate desc


--delete from sjtrade..smscontentinbox
--update sjtrade..mastersms set smsnooutbox =1
--delete from sjtrade..smscontentoutbox 
--update  sjtrade..mastersms set smsnoinbox =1
--select top 10 * 

select * from sjtrade..smscontentinbox where smshpno='+6285866264145'
order by smsdate desc

select * from sjtrade..smscontentoutbox where smshpno='+628122503934'
order by smsdate desc

select * from sjtrade..smscontentoutbox where smshpno='+628122503934'
order by smsdate desc



select * from sjtrade..smscontentoutbox where smsdate between '2014-05-30' and '2014-05-31' order by smsdate desc
select * from sjtrade..smscontentoutbox where smsstatus='2' and smscontent is null 
and smsdate between '2014-05-30' and '2014-05-31' and smscontent <>'' and smshpno <>'41'
--delete from sjtrade..smscontentoutbox where smsstatus='2' and smscontent is null 

select * from sjtrade..smscontentoutbox where smsstatus='2'and smsdate > '2014-05-30'and smscontent <>'' and smshpno <>'41'
--update sjtrade..smscontentoutbox set smsstatus='1',smscounter='0' from sjtrade..smscontentoutbox where smsstatus='2'and smsdate > '2014-05-30'and smscontent <>'' and smshpno <>'41'
select * from sjtrade..masterstatus
select top 10 * from sjtrade..userlogin where userid='nono'
 mobileno='41'

select top 10 * from sjtrade..userlogin where userid='widijarto'


select top 10 so,rtrim(nodocument) as no_lm,status,kode_customer,approval_user,create_user,create_date,flaglevel1,flaglevel2,aprovalsts,level1,level2
--select top 10 * 
from meka..ubah_cl where flaglevel1='n'

select top 10 so,rtrim(nodocument) as no_lm,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru,totalar,create_user,approval_user,create_date,flaglevel1,flaglevel2,aprovalsts
--update meka..ubah_cl set approval_user='NONO' 

from meka..ubah_cl where aprovalsts='n' and flaglevel1='y' and flaglevel2='y' and approval_user='widijarto'
order by no_lm asc


