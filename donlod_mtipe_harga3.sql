select top 10 *
--select type_kode_group,type_kode,type_nama,type_harga_beli3 ,type_harga_jual3,type_harga_beli4 ,type_harga_jual4
from meka..mtipe where type_status = '0' and type_kode_group like 'she'

select type_kode_group,type_kode,type_nama,type_harga_beli,type_harga_jual
from meka..mtipe where type_status <> '2' and type_kode_group like 'ph%'

select description,type_kode_group,product_nama,product_supplier,sup_nama,type_kode,type_nama,type_harga_beli,type_harga_jual,type_status,type_kode_spl_1
from meka..mtipe inner join meka..mprod on type_kode_group=product_kode
inner join meka..mspl on product_supplier=sup_kode_supplier inner join meka..mgprod on product_group=kode_group
where type_status='0'
--and part_kode_wh ='31'
and type_kode_group like 'sh%'
and description='tire'
--and part_stock_bisa_jual <>'0'
and product_supplier='002'
and type_kode_group not like 'b%'


select type_kode_group,type_kode,type_nama,type_harga_beli ,type_harga_jual,type_harga_beli4 ,type_harga_jual4
from meka..mtipe where type_status = '0' and type_kode_group like 'she'


select PART_Company,PART_Cabang,PART_Kode_WH,PART_Kode_Group , PART_Kode, PART_DBP, PART_Harga_Jual from MEKA..MPART where PART_Kode_Group like 'sh%'

select PART_Company,PART_Cabang,PART_Kode_WH,PART_Kode_Group , PART_Kode, PART_DBP, PART_Harga_Jual, TYPE_HARGA_BELI,TYPE_HARGA_JUAL, TYPE_HARGA_BELI2,TYPE_HARGA_JUAL2,TYPE_HARGA_BELI3,TYPE_HARGA_JUAL3 TYPE_HARGA_BELI4,TYPE_HARGA_JUAL4,TYPE_STATUS from MEKA..MPART inner join MEKA..MTIPE on PART_Kode=TYPE_KODE where PART_Kode_Group like 'sh%'