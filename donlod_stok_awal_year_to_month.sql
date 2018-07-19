select TYPE_KODE_GROUP,PRODUCT_Nama, HPS_Kode_Barang , type_nama, HPS_Tanggal,HPS_Warehouse, HPS_Stock_Awal from MEKA..HSPOS inner join MEKA..MTIPE on HPS_Kode_Barang=TYPE_KODE
inner join MEKA..MPROD on TYPE_KODE_GROUP=PRODUCT_Kode
where YEAR(hps_tanggal)=2017 and
HPS_Cabang='02' and
HPS_Stock_Awal > '0' and 
PRODUCT_Supplier='002'
group by type_kode_group,product_nama, HPS_Kode_Barang, type_nama, HPS_Tanggal, HPS_Stock_Awal,HPS_Warehouse


select top 10 * from MEKA..hspos
select top 10 * from MEKA..mprod