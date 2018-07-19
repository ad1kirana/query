select top 100 * from meka..ttrmtgh where htt_nomor_terima='010118014430PK'
select top 100 * from meka..ttrmtgh where htt_nomor_terima='010217023362PK'

select top 100 * from meka..ttrmtgd where dtt_nomor_terima='010118014430PK'
select top 100 * from meka..ttrmtgh where htt_nomor_terima='010118006867PK'

--update meka..ttrmtgh set htt_nomor_tagihan='010118002364TH' from meka..ttrmtgh where htt_nomor_terima='010118014430PK' and htt_customer='03ISMAYA' 
--update meka..ttrmtgh set htt_nomor_tagihan='010117000345TH' from meka..ttrmtgh where htt_nomor_terima='010117004230PK' and htt_customer='03RM' 
--update meka..ttrmtgh set htt_nomor_tagihan='010117000345TH' from meka..ttrmtgh where htt_nomor_terima='010117004231PK' and htt_customer='03RM'
--update meka..ttrmtgh set htt_nomor_tagihan='010117000345TH' from meka..ttrmtgh where htt_nomor_terima='010117004064PK' and htt_customer='03ILMO'
--update meka..ttrmtgh set htt_nomor_tagihan='010117000345TH' from meka..ttrmtgh where htt_nomor_terima='010117004230PK' and htt_customer='03RM'

select top 100 rtrim(htt_nomor_terima),rtrim(htt_nomor_tagihan),rtrim(dtt_nomor_faktur),rtrim(htt_customer), HDT_Kode_Sales
from meka..ttrmtgh  inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima
inner join MEKA..TCOLH on HTT_Nomor_Tagihan=HDT_Nomor_Tagihan
where --htt_nomor_tagihan='010217003267th' and 
dtt_nomor_faktur='010118002695FP'

htt_customer='03promo'
select top 100 * from meka..ttrmtgd where 

select top 100 *
from meka..ttrmtgh  inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima 
inner join MEKA..TCOLH on HTT_Nomor_Tagihan=HDT_Nomor_Tagihan
where htt_nomor_tagihan='010217003267th' and 
dtt_nomor_faktur='010217017737fp'

--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118006867PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007066PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118007812PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118008081PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118008732PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118008732PK'
--update meka..ttrmtgh set htt_nomor_tagihan='010118001623TH' from meka..ttrmtgh where htt_customer='03UDMOH' and htt_nomor_terima='010118008732PK'

select top 10 * from MEKA..TCOLD inner join MEKA..TCOLH on HDT_Nomor_Tagihan=DDT_Nomor_Tagihan where DDT_Nomor_Document='010118002575FP'

select * from MEKA..TCOLH where HDT_Penagih='0de' order by HDT_CreateDate desc