select top 1000 hs_tanggal,hs_nomor_faktur,hs_qq,vecdescription,merkdescription,ssmerkdescription,variandescription
from 
meka..tslsh inner join meka.. mcmbl on hs_qq=cust_nokendaraan
inner join meka..mvt on cust_tipe=vectype
inner join meka..mvm on cust_merk=merk
inner join meka..mvms on cust_submerk=ssmerk
inner join meka..mvmsv on cust_varian=vvarian
and hs_tanggal between '2014-11-01' and '2015-02-28'
and hs_cabang='04'


select hs_cabang,hs_tanggal,hs_nomor_faktur,hs_qq,vecdescription,merkdescription,ssmerkdescription,variandescription 
--select top 10000 count (variandescription)

from meka..tslsh,meka.. mcmbl,meka..mvt,meka..mvm,meka..mvms,meka..mvmsv where 
hs_qq=cust_nokendaraan and
cust_tipe=vectype and
cust_merk=merk and
cust_submerk=ssmerk and
cust_merk=smerk and
cust_merk=vmerk and
cust_submerk=vsmerk and
cust_varian=vvarian and 
hs_tanggal between '2015-11-01' and '2015-02-28'
and hs_cabang='04'

select hs_nomor_faktur,hs_qq from meka..tslsh where
hs_tanggal between '2014-01-01' and '2014-08-31'
and hs_cabang='04'





master vehichle
select top 10 * from meka..mvm
select top 10 * from meka..mvt
--sub
select top 10 * from meka..mvms
select top 10 * from meka..mvmsv

select top 10 * from meka..mcmbl
