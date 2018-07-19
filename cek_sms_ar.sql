select * from sjtrade_alert..smscontentoutbox where smsdate between '2013-11-3' and '2013-11-26' and smsstatus='2' and smshpno like '%-%'
select * from sjtrade_alert..smscontentoutbox where smsdate between '2018-7-16' and '2018-12-31' and smsstatus='2' and smscounter='5' and smshpno like '08%'
select * from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='2' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%' and smshpno not like '08%' and smscounter='5'  
select * from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='1' and smshpno like '0815%'
select * from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='9' 
select * from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='1' and smscontent like 'Yth Cust, Inv%'

select * from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-04-11' and smsstatus='1' and smshpno like '08%'
select * from sjtrade_alert..smscontentoutbox where smsstatus='9' and smscontent not like 'Yth Cust, Terimakasih telah melakukan pembayaran%' and smscounter='0'
select * from sjtrade_alert..smscontentinbox order by smsno desc 
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsstatus='9'

--update SJtrade_alert..smscontentoutbox set smsstatus='5' from sjtrade_alert..smscontentoutbox where smsdate between '2018-7-16' and '2018-12-31' and smsstatus='2' and smscounter='5' and smshpno like '08%'

--update SJtrade_alert..smscontentoutbox set smsstatus='5' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='1' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%'
--update SJtrade_alert..smscontentoutbox set smsstatus='5' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='1' and smscontent like 'Yth Cust, Inv%'

--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smscontent like 'Yth Cust, Inv%'

--update SJtrade_alert..smscontentoutbox set smsstatus='5' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='1' and smshpno like '0815%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smshpno like '0816%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smshpno like '0857%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smshpno like '0856%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smshpno like '0858%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smshpno like '0814%'
--update SJtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-1-1' and '2018-12-31' and smsstatus='5' and smshpno like '0855%'



select * from sjtrade_alert..smscontentoutbox where smsdate between '2017-1-1' and '2018-12-31' and smsstatus='1' 
select cust_kode,cust_nama,mobileno from MEKA..TSLSH inner join MEKA..MCUST on HS_Customer=CUST_Kode where HS_Nomor_Faktur='010217021197fp'

--and smshpno like '0274-485138'
and smshpno like '08%' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%'

--resend sms fail sending
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2018-7-16' and '2018-12-31' and smsstatus='2' and smscounter='5' and smshpno like '08%' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%'

---warning
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1' from sjtrade_alert..smscontentoutbox where smsstatus='2' and smshpno like '08%' and  smsdate between '2017-3-11' and '2017-12-31'

--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='3' from sjtrade_alert..smscontentoutbox where smsdate < '2018-05-10'

between '2018-1-1' and '2018-12-31' and smsstatus='2' and smscounter='5' and smshpno like '08%' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%'


select * from sjtrade_alert..smscontentoutbox where smsdate between '2001-01-1' and '2018-02-18' and smsstatus='1' and smscontent like 'Yth Cust, Inv%'
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='2' from sjtrade_alert..smscontentoutbox where smsdate between '2001-01-1' and '2018-02-18' and smsstatus='1'

--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='2' from sjtrade_alert..smscontentoutbox where smsdate between '2001-01-1' and '2018-02-18' and smsstatus='1' and smscontent like 'Yth Cust, Inv%'
select * from sjtrade_alert..smscontentoutbox where smsno='69606'
--hapus sms lama tidak terkirim karena salah nomor
select * from sjtrade_alert..smscontentoutbox 
where smsdate between '2017-1-1' and '2017-12-31' and smsstatus='2' and smshpno like '08542335000'
--delete from sjtrade_alert..smscontentoutbox
where smsdate between '2017-1-1' and '2017-12-31' and smsstatus='2' and smshpno like '08542335000'

select * from sjtrade_alert..smscontentoutbox where smscontent like 'ulang%'
select * from sjtrade_alert..smscontentoutbox where smscontent like 'Yth Cust, Inv%' and smsstatus='1'
select * from sjtrade_alert..smscontentoutbox where smscontent like '%53.339.900%'
--resend sms not sent
select * from sjtrade_alert..smscontentoutbox where smsdate between '2016-12-1' and '2016-12-31' and smsstatus='3' and smscounter='0' and smssentdate is null
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1' from sjtrade_alert..smscontentoutbox where smsdate between '2016-12-1' and '2016-12-31' and smsstatus='3' and smscounter='0' and smssentdate is null




select * from sjtrade_alert..smscontentoutbox --order by smsdate asc
where smshpno not like '08%'
where year(smsdate)=2017 and month(smsdate)=4 and day(smsdate)=24 and smsstatus='1' 

select * from sjtrade_alert..smscontentoutbox where --smsdate between '2017-3-1' and '2017-3-8' and 
smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%19.707.000%'
and smshpno like '%0274) 4462179      '
and smsstatus='4' 



select count(smshpno) from sjtrade_alert..smscontentoutbox where year(smsdate)=2016 and month(smsdate)=6
select rtrim(ar_nomor_bukti) from meka..har where ar_company='30' and ar_flag_lunas='n'


--ganti nomor telp & kirim ulang sms
select * from sjtrade_alert..smscontentoutbox where smsdate between '2016-06-01' and '2016-06-30' and smshpno='0082242723151'
--update sjtrade_alert..smscontentoutbox set smshpno='082242723151' from sjtrade_alert..smscontentoutbox where smsdate between '2016-06-01' and '2016-06-30' and smshpno='0082242723151'
--update sjtrade_alert..smscontentoutbox set smscounter='0' from sjtrade_alert..smscontentoutbox where smsno between '61856' and '61857'
select * from sjtrade_alert..smscontentoutbox where smsno between '61856' and '61857'
select * from sjtrade_alert..smscontentoutbox where year(smsdate) year('2016-03-23' and '2016-3-23' and smsstatus='1' 
select * from sjtrade_alert..smscontentoutbox where smsstatus='1' smsdate <'2016-3-25' and smsstatus='1' 
select * from sjtrade_alert..smscontentoutbox where year(smsdate)=2016 and month(smsdate)=5 and day(smsdate)=09  and smsstatus='2'
select * from sjtrade_alert..smscontentoutbox where year(smsdate)=2016 and month(smsdate)=3 and day(smsdate)=22 and smscontent like 'yth cust, ter%'
 smsstatus='1' 

--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1'  from sjtrade_alert..smscontentoutbox where year(smsdate)=2016 and month(smsdate)=5 and day(smsdate)=09  and smsstatus='2' and smscontent like 'yth cust, ter%'
select * from sjtrade_alert..smscontentoutbox where smssentdate is null and year(smsdate)=2016 and month(smsdate)=3

select * from sjtrade_alert..smscontentoutbox where smsstatus='1' and smssentdate is not null
--update sjtrade_alert..smscontentoutbox set smscounter='5',smsstatus='3'  from sjtrade_alert..smscontentoutbox where smsstatus='1' and smssentdate is not null

select smsno,smscontent from sjtrade_alert..smscontentoutbox where smsdate between '2014-12-31' and '2015-01-22' and smsstatus='2' and smshpno like '08%'
and smscontent like 'Yth Cust, inv%'

select * from sjtrade_alert..smscontentinbox 
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1' sjtrade_alert..smscontentoutbox set smshpno='0271741077' from sjtrade_alert..smscontentoutbox where smsno='129820'
       
select * from sjtrade_alert..smscontentoutbox --order by smsno desc
 where --smsno='90145'
smshpno like '(0274) 4462179      '
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1'  from sjtrade_alert..smscontentoutbox where smsdate between '2016-03-23' and '2016-03-31' and smsstatus='2' and smshpno like '08%' 
and smshpno <>'080000000000' and smscontent like 'Yth Cust, inv%'
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1'  from sjtrade_alert..smscontentoutbox where smsdate between '2014-12-31' and '2015-01-10' and smsstatus='2' and smscontent like 'Yth Cust, Terimakasih telah melakukan pembayaran%'
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1', smscontent='Yth Cust, Terimakasih telah melakukan pembayaran Cash senilai Rp. 1.000.000.Pada tanggal 3 Jun 2014. Finance-PT Meka.'  from sjtrade_alert..smscontentoutbox where smsdate between '2014-05-28' and '2014-06-19' and smsstatus='2' and smsno='80663'
--update sjtrade_alert..smscontentoutbox set smsstatus='3' from sjtrade_alert..smscontentoutbox where smsdate between '2015-12-23' and '2016-05-31' and smsstatus='2' and smshpno like '08%'
--update sjtrade_alert..smscontentoutbox set smscounter='5',smsstatus='3'  from sjtrade_alert..smscontentoutbox where smsdate between '2016-3-21' and '2016-3-23'

select top 10 * from sjtrade_alert..smscontentoutbox where smsno='40954'
select top 10 * from sjtrade_alert..smscontentoutbox where smshpno='373185/373320' and smsstatus='2' 

--update sjtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsno='8964'
--update sjtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smshpno='0298-323368' and smsstatus='2' 
and smsno='43668'

--1	Queuing
--2	Fail
--3	Sent
--4	Receive

56EDMO (0274) 4462179   

select * from sjtrade_alert..smscontentoutbox where smshpno like '373185/373320' order by smsdate desc
select top 10 * from sjtrade_alert..smscontentoutbox where smsdate between '2014-05-28' and '2014-06-19' and smsstatus='2' and smsno='80663'
select top 1000 * from meka..mcust where --cust_kode='03artis'
mobileno like '081 229 739 787' and cust_status_cust <>'2'
cust_nama like 'zaky%'
order by cust_cabang asc
--update meka..mcust set mobileno='0271741077' from meka..mcust where cust_kode='95NM0802' 

--cek customer failed_send_sms
select cust_cabang,cust_kode,cust_nama,smshpno,mobileno from sjtrade_alert..smscontentoutbox left join meka..mcust on smshpno=mobileno
where smsdate between '2016-12-1' and '2017-12-31' and smsstatus='2' 

select top 10 * from sjtrade_alert..smscontentoutbox where smshpno='08130000031'
--update sjtrade_alert..smscontentoutbox set smsstatus='1' from sjtrade_alert..smscontentoutbox where smsno='43669'
smshpno='081390000031',
081390000031
085727662222   04SEJA    
0816688527
0816688527
select * from sjtrade_alert..smscontentoutbox where smsstatus='2' and smscontent like 'Yth Cust, Inv%' 

select * from sjtrade_alert..smscontentoutbox where smsstatus='2' and smshpno='0287 382815'
select * from sjtrade_alert..smscontentoutbox where smsstatus='2' and smshpno='087030931953'
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1',smshpno='087737685068'  from sjtrade_alert..smscontentoutbox where smsstatus='2' and smshpno='0287 382815' and smsdate between '2016-09-17' and '2016-12-31'
--update sjtrade_alert..smscontentoutbox set smscounter='0',smsstatus='1',smshpno='087710104111'  from sjtrade_alert..smscontentoutbox where smsstatus='2' and smshpno='08839551932' and smsdate between '2016-09-17' and '2016-12-31'



select * from sjtrade_alert..smscontentinbox where smsstatus='2' and smscontent like 'Yth Cust, Inv%' 
--delete sjtrade_alert..smscontentinbox
        

       
--update sjtrade_alert..smscontentoutbox set smshpno='0274517916' from sjtrade_alert..smscontentoutbox where smsno='131656' and smshpno='0274-517916'
--update sjtrade_alert..smscontentoutbox set smshpno='02470558335' from sjtrade_alert..smscontentoutbox where smsno='17256' and smshpno='024-70558335
--update sjtrade_alert..smscontentoutbox set smshpno='02470558335' from sjtrade_alert..smscontentoutbox where smsno='21448' and smshpno='024-70558335

select top 10 hs_cabang,hs_customer,cust_nama,cust_kota,cust_telefon,cust_hp,hs_creator from meka..tslsh inner join meka..mcust on hs_customer=cust_kode where hs_nomor_faktur='303016002018FP'
select top 10 hs_cabang,hs_customer,cust_nama,cust_kota,cust_telefon,cust_hp,hs_creator from meka..tslsh inner join meka..mcust on hs_customer=cust_kode where hs_nomor_faktur='010216013760FP'
select top 10 hs_cabang,hs_customer,cust_nama,cust_kota,cust_telefon,cust_hp,hs_creator from meka..tslsh inner join meka..mcust on hs_customer=cust_kode where hs_nomor_faktur='010116021363FP'


select * from sjtrade_alert..smscontentoutbox where smscontent like '%010117016360FP%'
--update sjtrade_alert..smscontentoutbox set smsstatus='3' 
from sjtrade_alert..smscontentoutbox where smscontent like '%010117016360FP%'
and smsno='18356'

select top 10 * from meka..tslsh where hs_nomor_faktur='010117016543fp'
087830907707