select a.hs_salesoffice,a.hs_tanggal,a.hs_qq,a.hs_last_km,a.hs_customer,c.cust_nama,a.hs_kode_salesman,a.hs_keterangan,b.ds_nomor_faktur,b.ds_kode_product,b.ds_kode_barang,b.ds_harga_jual,b.ds_qty_di_order,b.ds_harga_jual,b.ds_amount,b.ds_amount_d4,b.ds_qty_retur,vecdescription,merkdescription,ssmerkdescription,variandescription 
from (((((meka..tslsh a inner join meka..tslsd b on hs_nomor_faktur=ds_nomor_faktur)
inner join meka..mcust c on a.hs_customer=c.cust_kode and a.hs_company=c.cust_companycode)
left join meka..mcmbl d on c.cust_kode=d.cust_kode and a.hs_qq=d.cust_nokendaraan)
left join meka..mvt e on d.cust_tipe=e.vectype)
left join meka..mvm on d.cust_merk=merk
left join meka..mvms on d.cust_submerk=ssmerk and d.cust_merk=smerk)
left join meka..mvmsv on d.cust_merk=vmerk and d.cust_submerk=vsmerk and d.cust_varian=vvarian 

where hs_tanggal between '2013-01-01' and '2013-12-31'
and a.hs_cabang='03'

select top 2 * from meka..tslsh
select top 2 * from meka..tslsd
select top 1000 * from meka..mvt
select top 2 * from meka..mcust
select top 2 * from meka..mcmbl
select top 1000 * from meka..mvm
select top 2 * from meka..mvms
select top 1000 * from meka..mvmsv

cust_tipe=vectype and
 and
 and

