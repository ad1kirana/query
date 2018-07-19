select rtrim(cust_kode),rtrim(cust_nokendaraan),merk,rtrim(merkdescription)
from meka..mcmbl inner join meka..mvm on cust_merk=merk where 
cust_nokendaraan like 'D 1477 FA%'
cust_kode='031200893C'

031200893C	HANDOKO                       	

select top 1000 * from meka..mvm


select top 10 hs_customer,hs_qq,cust_nokendaraan from meka.. tslsh right join meka..mcmbl on hs_customer=cust_kode where cust_kode='031200893C'
and hs_nomor_faktur='010314000008FP'     

select top 10 hs_tanggal,hs_nomor_faktur,hs_customer,hs_qq from meka.. tslsh where hs_qq like 'H 8492 JR'

select top 10 * from meka..mcmbl where 
cust_kode='031101006C' 
cust_nokendaraan='H 8492 JR'

AD 1769 VA
AD 3014CA
AD 4421 FU
AD 6702 LU
H 8492 JR