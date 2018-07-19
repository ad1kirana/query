select a.hs_cabang,a.hs_salesoffice,j.faktur_pajak,a.hs_nomor_faktur,a.hs_tanggal,a.hs_customer,
c.cust_nama,c.cust_alamat_1,c.cust_alamat_2,c.cust_alamat_3,c.cust_kota,c.cust_telefon,c.mobileno,
a.hs_qq,m.merkdescription,s.ssmerkdescription,v.variandescription,a.hs_kode_salesman,a.hs_warehouse,a.hs_nilai_disc4_after as net_sales, a.hs_nilai_disc4,
d.ds_kode_product,rtrim(d.ds_kode_barang) as sku,t.type_nama,d.ds_qty,d.ds_harga_jual,d.ds_disc1,
d.ds_disc2,d.ds_disc3,d.ds_amount,d.ds_amount_d4,d.ds_tot_harga_pokok,d.ds_qty_retur,a.hs_last_km
--select top 10 * 
from 
meka..tslsh a, 
meka..tslsd d,
meka..mcust c,
meka..mtipe t,
meka..mprod p, 
meka..tpjkd j,
(meka..mcmbl b left join meka..mvmsv v on v.vmerk=b.cust_merk and v.vsmerk=b.cust_submerk and v.vvarian=b.cust_varian
left join meka..mvms s on v.vsmerk=s.ssmerk and v.vmerk=s.smerk
left join meka..mvm m on s.smerk=m.merk)
where
a.hs_nomor_faktur=d.ds_nomor_faktur and
a.hs_cabang=c.cust_cabang and
a.hs_company=c.cust_companycode and
a.hs_customer=c.cust_kode and
d.ds_kode_product=t.type_kode_group and
d.ds_kode_barang=t.type_kode and
d.ds_kode_product=p.product_kode and
t.type_kode_group=p.product_kode and
d.ds_nomor_faktur=j.dokumen and
a.hs_customer=b.cust_kode and
c.cust_kode=b.cust_kode and
a.hs_qq=left(b.cust_nokendaraan,10) and 

a.hs_tanggal between '2015-10-01' and '2015-11-30'
and product_group='002'
and a.hs_cabang  between '03' and '03'


--reduce--

select a.hs_cabang,a.hs_salesoffice,a.hs_tanggal,a.hs_customer,
c.cust_nama,c.cust_alamat_1,c.cust_alamat_2,c.cust_alamat_3,c.cust_kota,c.cust_telefon,c.mobileno,
a.hs_qq,m.merkdescription,s.ssmerkdescription,v.variandescription,a.hs_kode_salesman,a.hs_warehouse,
d.ds_kode_product,rtrim(d.ds_kode_barang) as sku,t.type_nama,d.ds_qty,d.ds_qty_retur,a.hs_last_km
--select top 10 * 
from 
meka..tslsh a, 
meka..tslsd d,
meka..mcust c,
meka..mtipe t,
meka..mprod p, 
meka..tpjkd j,
(meka..mcmbl b left join meka..mvmsv v on v.vmerk=b.cust_merk and v.vsmerk=b.cust_submerk and v.vvarian=b.cust_varian
left join meka..mvms s on v.vsmerk=s.ssmerk and v.vmerk=s.smerk
left join meka..mvm m on s.smerk=m.merk)
where
a.hs_nomor_faktur=d.ds_nomor_faktur and
a.hs_cabang=c.cust_cabang and
a.hs_company=c.cust_companycode and
a.hs_customer=c.cust_kode and
d.ds_kode_product=t.type_kode_group and
d.ds_kode_barang=t.type_kode and
d.ds_kode_product=p.product_kode and
t.type_kode_group=p.product_kode and
d.ds_nomor_faktur=j.dokumen and
a.hs_customer=b.cust_kode and
c.cust_kode=b.cust_kode and
a.hs_qq=left(b.cust_nokendaraan,10) and 

a.hs_tanggal between '2015-08-01' and '2015-09-30'
and product_group='002'
and a.hs_cabang  between '03' and '03'

select top 10 * from meka..mgprod