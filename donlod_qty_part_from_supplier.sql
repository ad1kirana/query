select HS_Cabang,HS_Tanggal,DS_Kode_Product,product_nama,DS_Kode_Barang, (DS_Qty -DS_Qty_Retur)as qty from MEKA..TSLSH inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur
inner join MEKA..MTIPE on DS_Kode_Barang=TYPE_KODE
inner join MEKA..MPROD on DS_Kode_Product=PRODUCT_Kode 
where DS_Kode_Product between 'aod' and 'swp'
and HS_Cabang between '03' and '08'
and PRODUCT_Supplier='215'



select top 3 * from MEKA..MTIPE
select top 3 * from MEKA..MPROD

select top 10 * from MEKA..mspl