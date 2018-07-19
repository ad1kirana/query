select hs_nomor_faktur,hs_company,hs_cabang,hs_salesoffice,faktur_pajak,hs_nomor_faktur,hs_tanggal,hs_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_telefon,mobileno,hs_qq,hs_kode_salesman,hs_warehouse,hs_nilai_disc4_after as net_sales, hs_nilai_disc4,
ds_kode_product,ds_kode_barang,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,ds_amount_d4,ds_tot_harga_pokok,ds_qty_retur,hs_last_km
--select top 10 * 
from meka..tslsh,meka..tslsd,meka..mcust,meka..mtipe,meka..mprod, meka..tpjkd
where
hs_nomor_faktur=ds_nomor_faktur and
hs_cabang=cust_cabang and
hs_company=cust_companycode and
hs_customer=cust_kode and
ds_kode_product=type_kode_group and
ds_kode_barang=type_kode and
ds_kode_product=product_kode and
type_kode_group=product_kode and
ds_nomor_faktur=dokumen and
hs_cabang between '03' and '06' and 
ds_kode_product between 'inc' and 'inp' and
hs_tanggal between '2014-12-01' and '2015-02-28'
and hs_customer='051400069c'
and (product_supplier='001' or product_supplier='003' or product_supplier='013')
and cust_createdate between '2014-04-01' and '2014-04-30'

select top 10 * from meka..tslsd

--histori_trx_by_cust--
select hs_company,hs_cabang,hs_salesoffice,faktur_pajak,hs_nomor_faktur,hs_tanggal,hs_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_telefon,mobileno,hs_qq,hs_kode_salesman,hs_warehouse,hs_nilai_disc4_after as net_sales, hs_nilai_disc4,
ds_kode_product,ds_kode_barang,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,ds_amount_d4,ds_qty_retur,hs_last_km
 
--select top 10 * 
from meka..tslsh,meka..tslsd,meka..mcust,meka..mtipe,meka..mprod, meka..tpjkd
where
hs_nomor_faktur=ds_nomor_faktur and
hs_cabang=cust_cabang and
hs_company=cust_companycode and
hs_customer=cust_kode and
ds_kode_product=type_kode_group and
ds_kode_barang=type_kode and
ds_kode_product=product_kode and
type_kode_group=product_kode and
ds_nomor_faktur=dokumen and 
hs_tanggal between '2018-1-25' and '2018-2-20'
and hs_cabang  between '03' and '08'


select hs_company,hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_customer,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_telefon,mobileno,hs_qq,hs_last_km
 
--select top 10 * 
from meka..tslsh,meka..mcust,meka..mtipe,meka..mprod, meka..tpjkd
where
hs_cabang=cust_cabang and
hs_company=cust_companycode and
hs_customer=cust_kode and
type_kode_group=product_kode and
hs_tanggal between '2018-1-25' and '2018-2-20'
and hs_cabang  between '03' and '08'


select distinct HS_QQ,hs_customer,b.cust_nama,a.Cust_Norangka,a.Cust_nomesin,hs_cabang, HS_Creator,HS_Tanggal
from MEKA..TSLSH left join MEKA..MCMBL a on HS_QQ=a.CUST_NoKendaraan and HS_Customer=a.Cust_kode
left join MEKA..MCUST b on HS_Customer=b.CUST_Kode

where 
hs_tanggal between '2018-02-01' and '2018-2-20'
and hs_cabang  between '03' and '08'
group by hs_customer,b.cust_nama,HS_QQ,a.Cust_Norangka,a.Cust_nomesin,hs_cabang, HS_Creator, HS_Tanggal
order by hs_cabang asc, HS_Tanggal asc, HS_Customer asc


and hs_customer='051400069c'

hs_cabang between '01' and '02' and hs_tanggal between '2013-01-01' and '2014-09-30'
and ds_kode_product='bst'
and product_supplier='002'
and ds_kode_product='fil'
and hs_kode_salesman='m09'
and ds_kode_product<>'she'
--select top 10 * from meka..mcust

select top 10 * from meka..tslsh where hs_customer='051300090c'
select top 10 * from meka..mprod