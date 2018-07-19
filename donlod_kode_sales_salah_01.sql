select * from MEKA..TOrderH inner join meka..torderd on HS_Nomor_Faktur=ds_nomor_faktur where HS_Tanggal>='2018-03-01'

select * from MEKA..TSLSH where HS_Tanggal>='2018-03-01' and HS_Cabang='01'

select * from MEKA..TOrderH where HS_Tanggal>='2018-03-01' and HS_Cabang='01'

select top 10 * from MEKA..TSPKM where HS_Cabang='01'


select a.HS_Nomor_Faktur,a.HS_Kode_Salesman,b.HS_Kode_Salesman,b.HS_Nomor_Faktur
--select top 10 *
 from MEKA..TSLSH a inner join MEKA..TOrderH b on  
 a.hs_salesoffice=b.HS_SalesOffice and
 a.hs_warehouse=b.hs_warehouse and
 a.HS_Total_Belum_Disc=b.HS_Total_Belum_Disc and 
  a.hs_customer=b.hs_customer and
 a.hs_qq=b.hs_qq and 
 a.hs_nilai_total=b.hs_nilai_total and 
 a.hs_nsudah_disc=b.hs_nsudah_disc and
a.HS_Nomor_SPB=b.HS_Nomor_SPB
where a.hs_tanggal>='2018-03-01' and a.HS_Cabang='01'
and b.HS_Kode_Salesman is null

b.HS_Kode_Salesman <>'1sar' and 
a.HS_Cabang='01' and year(a.HS_Tanggal)<2018 