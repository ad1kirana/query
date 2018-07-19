select top 10 * from meka..tbrvh 
select top 10 * from meka..tbrvd 

select top 3 * from meka..tcgrd 
select top 3 * from meka..tcgrh


--(giro)
select top 3 *
--select top 3 *,(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur)as prod
from meka..tgrh inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro 

where hg_company='01'

--(pencairan)
select top 3 * from meka..tcgrh inner join meka..tcgrd on hpg_nomor_pencairan=dpg_nomor_pencairan


--(giro & pencairan)
select top 3 *
--(select dg_nomor_giro from meka..tgrd where dpg_nomor_giro=dg_nomor_giro) as no_giro
--select dg_nomor_faktur,(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur)as prod
from meka..tcgrh inner join meka..tcgrd on hpg_nomor_pencairan=dpg_nomor_pencairan
inner join meka..tgrd on dpg_nomor_giro=dg_nomor_giro
inner join meka..tslsh on dg_nomor_faktur=hs_nomor_faktur
where hpg_company='01' and hpg_tanggal  between '2015-01-01' and '2015-01-31' and dg_nomor_faktur <>''

select top 10 * from meka..tcgrd

select top 3 *
--select top 3 *,(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur)as prod
from meka..tgrh inner join meka..tcon hg_nomor_giro=dg_nomor_giro 


--penerimaan kas
select *
--select *,(select top 1 ds_kode_product from meka..tslsd where dtt_nomor_faktur=ds_nomor_faktur) as prod
from meka..ttrmtgh inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima 
where htt_tanggal between '2015-01-01' and '2015-01-31' and htt_company='01'




select top 3 * from meka..tcgrd
 inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro

(select top 1 ds_kode_product from meka..tslsd where dg_nomor_faktur=ds_nomor_faktur) as prod,