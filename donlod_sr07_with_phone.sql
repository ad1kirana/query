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
hs_tanggal between '2015-08-16' and '2015-08-16'
and hs_cabang between '03' and '07'
and hs_nomor_faktur='010315011871FP'

ds_kode_product between 'inc' and 'inp' and
hs_tanggal between '2014-12-01' and '2015-02-28'
and hs_customer='051400069c'
and (product_supplier='001' or product_supplier='003' or product_supplier='013')
and cust_createdate between '2014-04-01' and '2014-04-30'
