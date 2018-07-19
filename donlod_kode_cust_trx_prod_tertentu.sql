select HS_Customer from MEKA..TSLSH inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur where HS_Cabang='20'
and DS_Kode_Product between 'shd' and 'sho'
group by HS_Customer