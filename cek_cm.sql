select top 100 * from meka..tcmh inner join meka..tcmd on h_document=documentno
where 
h_cabang<>'20' and
h_remarks like '%service%' and
--year(tanggal)=2015 and
account_trn='715000002' and
h_createuser='yayuk'

--and h_document='010116006753cm'
--amount='300000' and h_date >'2012-12-31' and 
--and amount='300000'

select top 10 * from meka..tcmd 
inner join meka..tcmd on h_document=documentno  and 

select top 100 * from meka..tcmh inner join meka..tcmd on h_document=documentno
where h_cabang='01'
and h_date >='2014-01-01' and 
h_remarks like '%head%'
and type='c'
and account_trn='713000000'
order by h_date asc

h_remarks like '%shell%' and 
