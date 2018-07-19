select top 10 * 
--select hs_cabang,hs_customer, hs_qq,hs_tanggal
 from meka..tslsh where hs_cabang='04' 
--or hs_cabang='04' 
--or hs_cabang='05' 
and year(hs_tanggal)=2014