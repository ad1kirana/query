select top 10 * from MEKA..HSPOS

select HPS_KODE_BARANG, type_kode_spl_1,(type_volume*HPS_Stock_RFS),HPS_Warehouse
from meka..HSPOS
inner join meka..mtipe on HPS_KODE_BARANG=type_kode where HPS_Cabang='20' and TYPE_KODE_GROUP between 'shd' and 'sho' and HPS_Stock_RFS > '0'
AND HPS_Tanggal='2017-12-01'
