select hs_cabang,hs_nomor_faktur,hs_tanggal,hs_creator from meka..tslsh where hs_tanggal between '2017-09-01' and '2018-03-31' and hs_cabang between '01' and '02'
union all
select hs_cabang,hs_nomor_faktur,hs_tanggal,hs_creator from meka..tslsh where hs_tanggal between '2017-09-01' and '2018-03-31' and hs_cabang between '20' and '35'

select hrc_cabang,hrc_no_retur,hrc_tanggal, hs_creator, hrc_eks_faktur from meka..trtrh inner join meka..tslsh on hrc_eks_faktur=hs_nomor_faktur
and hrc_company=hs_company and hrc_cabang=hs_cabang and hrc_salesoffice=hs_salesoffice where hrc_tanggal between '2017-04-01' and '2017-09-30' and hrc_cabang between '01' and '02'
union all
select hrc_cabang,hrc_no_retur,hrc_tanggal, hs_creator, hrc_eks_faktur from meka..trtrh inner join meka..tslsh on hrc_eks_faktur=hs_nomor_faktur
and hrc_company=hs_company and hrc_cabang=hs_cabang and hrc_salesoffice=hs_salesoffice where hrc_tanggal between '2017-04-01' and '2017-09-30' and hrc_cabang between '30' and '35'


--select top 10 * from meka..trtrH where year(hrc_tanggal)=2014
 
--select
select hrc_cabang,hrc_no_retur,hrc_tanggal, hrc_creator from meka..trtrh where hrc_tanggal between '2017-09-01' and '2018-03-31' and hrc_cabang between '01' and '02' 
union all
select hrc_cabang,hrc_no_retur,hrc_tanggal, hrc_creator from meka..trtrh where hrc_tanggal between '2017-09-01' and '2018-03-31' and hrc_cabang between '20' and '30'

select hs_cabang,hs_nomor_faktur,hs_tanggal,hs_creator from meka..tslsh where hs_tanggal between '2017-09-01' and '2017-09-01' and hs_cabang between '20' and '20'
union all