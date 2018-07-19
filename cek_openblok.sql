select  * from meka..openblock -- 
where --approvaluser is null and
year(createdate)=2017 and
month (createdate)=02 and
--createuser='kiki' 
--and cabang='06'
approvaldate='2017-02-28'
order by approvaltime desc

select * from meka..openblock where approvaluser='buditri' and createdate>='2015-04-01' and flag_approve<>'y'
--update meka..openblock set approvaluser='DRAJAT' from meka..openblock where approvaluser is null and createuser='roviq'  and flag_approve<>'y'
 and createdate>='2015-04-01' and flag_approve<>'y'

--update meka..openblock set approvaluser='DRAJAT' from meka..openblock where approvaluser='buditri'
select  * from meka..openblock where flag_approve='n'
--and createuser='mahfud' 
order by createdate desc

select  * from meka..openblock-- where --flag_approve='n' --and approvaluser is null 
--and createuser='mahfud' 
order by createdate desc


select top 100 * from meka..openblock where 
--createdate>'2014-09-11' and 
--flag_approve='n'

select top 100 * from meka..openblock where createuser='tulus' order by createdate desc
--update meka..openblock set flag_approve='T' from meka..openblock where flag_approve='n'
--and createuser <> 'null' 
and flag_approve <>
--update meka..openblock set approvaluser='DRAJAT' from meka..openblock where approvaluser is null and createdate>='2015-04-01' and flag_approve<>'y'
--update meka..openblock set approvaluser='DRAJAT' from meka..openblock where approvaluser is null and createuser='TULUS' 
select top 10 * from meka..openblock where invoice='010514008045FP'
--update meka..openblock set approvaluser='DARMAWAN' from meka..openblock where customer='95LAN3461' and invoice='010415001252FP'


--update meka..openblock set approvaluser='DRAJAT' from meka..openblock where approvaluser is null and createdate='2015-12-31'
select top 100 * from meka..openblock where approvaluser is null and createuser is null and createdate='2015-12-31'

select top 100 * from meka..openblock where invoice='010315003257FP'
select top 100 * from meka..openblock where 
createuser='mahfud' 
--and createdate='2014-09-29'and 
--customer='03suma1'
--and createtime is null
--and approvaltime='000000'
order by createdate desc

--update meka..openblock set approvaluser='DRAJAT', flag_approve='N' from meka..openblock where approvaluser is null and flag_approve ='Y' and invoice='303015004134FP'
--update meka..openblock set flag_approve='N' from meka..openblock where approvaluser='DRAJAT' and flag_approve ='Y' and invoice='010515007339FP'
--update meka..openblock set flag_approve='Y' from meka..openblock where approvaluser='DRAJAT' and flag_approve ='N' and invoice='010515007339FP'

select top 100 * from meka..openblock where invoice='010115020112FP'    
select top 100 * from meka..openblock where invoice='010315004699FP'  and approvaluser='DRAJAT' and createtime is null
T-00000266
k-00000169

select top 100 * from meka..openblock where 
--createuser='wiwin' 
--and createdate='2014-09-29'and 
customer like '04PUMO'
--and createtime is null
--and approvaltime='000000'
--and approvaluser is null
--and invoice='010315005323FP'
order by createdate desc

--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='31kbo2'

select top 100 * from meka..openblock where 
--createuser='wiwin' 
--and createdate='2014-09-29'and 
customer like '03EKJA'
--and createtime is null
--and approvaluser is null
order by invoice desc

order by createdate desc
010116028395FP      
--update meka..openblock set approvaluser='DRAJAT', flag_approve='N' from meka..openblock where approvaluser is null and flag_approve ='Y' and customer like '051300044c' and approvaluser is null





--delete from meka..openblock where customer='P-00000610' and approvaluser is null

--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='16ide'
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='P-00000949'

--delete from meka..openblock where 
customer='051300044c'
and approvaltime='000000'
and invoice='010315005323FP'


--delete from meka..openblock where customer='041401273c'
--createuser='wiwin' 
--and createdate='2014-09-29'and 

--update meka..openblock set flag_approve='N',approvaluser='DRAJAT', duedate='2015-05-25', createdate='2015-05-25' from meka..openblock where invoice='010315003160FP'

--update meka..openblock set flag_approve='N' from meka..openblock where invoice='010315005323FP'  and approvaluser='DRAJAT' and approvaltime='000000'  
--update meka..openblock set flag_approve='N',approvaluser='DRAJAT',DueDate='2015-04-30 00:00:00.000' from meka..openblock where invoice='010315004079FP'      
--update meka..openblock set flag_approve='N',approvaluser='DRAJAT' from meka..openblock where createdate='2015-05-05' and createuser='nuryani' and  approvaluser is null  
--update meka..openblock set flag_approve='N',approvaluser='DRAJAT' from meka..openblock where invoice='010315003266FP' and createtime is null and approvaltime='000000'
--update meka..openblock set flag_approve='N',approvaluser='DRAJAT' from meka..openblock where invoice='010215002318FP' and createdate='2015-04-30 00:00:00.000'      
--update meka..openblock set flag_approve='N',approvaluser='DRAJAT' from meka..openblock where invoice='010315003257FP' and approvaltime='152834'
P-00000989; 010314010720FP      
 and --createuser='hady'
08164287848         

select * from sjtrade..smscontentoutbox where smscontent like 'Kiki, Req OB%' order by smsdate desc
select * from sjtrade..smscontentinbox where smscontent like '%041401273c%'
select * from sjtrade..smscontentoutbox where smscontent like '%041401273c%' order by smsdate desc
select * from sjtrade..smscontentoutbox where smscontent like 'DRAJAT, OB Approval%'order by smsdate desc
select * from sjtrade..smscontentoutbox where smshpno='081904464467'order by smsdate desc

select * from sjtrade..smscontentoutbox where smscontent like '%03suma1%' order by smsdate desc
select * from sjtrade..smscontentinbox where smscontent like '%03suma1%'
--update sjtrade..smscontentoutbox set smscounter='0',smsstatus='1' from sjtrade..smscontentoutbox where smscontent like '%p-00002010%' and smsno='16941'
select top 100 createuser,customer,cust_nama,duedate,approvaluser,flag_approve,createdate,cabang 
--select * 
from meka..openblock inner join meka..mcust on customer=cust_kode
where flag_approve ='n'
order by createdate desc

select top 100 createuser,customer,duedate,approvaluser,flag_approve,createdate,cabang 
--select * 
from meka..openblock
where flag_approve ='n' and approvaluser is null
order by createdate desc

--update meka..openblock set approvaluser='DRAJAT' from meka..openblock where flag_approve ='n' and approvaluser is null 




select top 1000 * from meka..openblock where flag_approve ='n' and createdate<'2014-01-01'
--update meka..openblock set flag_approve='T' from meka..openblock where flag_approve ='n' and createdate<'2014-01-01'

='2014-01-27'
select top 100 * from meka..openblock where flag_approve <>'y' and createdate>'2013-11-29' 
select top 100 * from meka..openblock where approvaluser is null and createdate>'2013-11-29' and createuser <> 'null'  and flag_approve <>'y'

select * from sjtrade..smscontentoutbox where smscontent like '%OB%' order by smsdate desc

approvaluser is null and 

select top 100 * from meka..openblock where approvaluser is null and createdate>='2015-04-01' and flag_approve='n'
--delete from meka..tbl_approval_multi where userid='mahfud' and branch='02' and flag='n'
