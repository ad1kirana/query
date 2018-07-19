select distinct  CASE
    WHEN a.hs_cabang = '03'  THEN 'WR_Supratman'
    WHEN a.hs_cabang = '04'  THEN 'Solo'
    WHEN a.hs_cabang = '05'  THEN 'Tugu'
	WHEN a.hs_cabang = '06'  THEN 'Yogya'
    WHEN a.hs_cabang = '07'  THEN 'Mrican'
    WHEN a.hs_cabang = '08'  THEN 'Majapahit'
END as cab,
rtrim(a.hs_nomor_faktur) as nomor_faktur ,
convert(varchar(10),a.hs_tanggal,103) as tanggal,
rtrim(a.hs_customer) as customer,
rtrim(c.cust_nama) as cus_nama,
rtrim(c.cust_alamat_1) as alamat_1,
rtrim(c.cust_alamat_2) as alamat_2,
rtrim(c.cust_alamat_3) as alamat_3,
rtrim(c.cust_kota) as kota,
rtrim(c.cust_telefon) as telefon,
rtrim(c.mobileno) as mobileno,
rtrim(cust_hp) as hp,
rtrim(a.hs_qq) as qq,
rtrim(m.merkdescription) as mdescription ,
rtrim(s.ssmerkdescription) as sdescription ,
rtrim(v.variandescription) as vdescription ,
rtrim(e.sales_nama) as nama_sales,
rtrim(a.hs_warehouse) as warehouse,
convert(float,a.hs_nilai_disc4_after) as net_sales, 
rtrim(a.hs_nilai_disc4) as disc_4, 
rtrim(d.ds_kode_product) as kode_product ,
rtrim(d.ds_kode_barang) as sku,
rtrim(t.type_nama) as nama ,
rtrim(d.ds_qty) qty,
rtrim(d.ds_harga_jual) as harga_jual,
rtrim(d.ds_disc1) as disc_1,
rtrim(d.ds_disc2) as disc2, 
rtrim(d.ds_disc3) as disc3,
convert(float,d.ds_amount) as amount, 
convert(float,d.ds_amount_d4) as amount_d4 ,
convert(float,d.ds_tot_harga_pokok) as tot_harga_pokok,
rtrim(d.ds_qty_retur) as qty_retur,
rtrim(a.hs_last_km) as last_km,
rtrim(a.hs_kode_salesman) as kode_salesman
from 
meka..tslsh a left join meka..mslsmn e on e.sales_kode=a.hs_kode_salesman
and e.sales_cabang=a.hs_cabang, 
meka..tslsd d,
meka..mcust c,
meka..mtipe t,
meka..mprod p, 
(meka..mcmbl b left join meka..mvmsv v on v.vmerk=b.cust_merk and v.vsmerk=b.cust_submerk and v.vvarian=b.cust_varian
left join meka..mvms s on v.vsmerk=s.ssmerk and v.vmerk=s.smerk
left join meka..mvm m on s.smerk=m.merk)
where
a.hs_nomor_faktur=d.ds_nomor_faktur and
a.hs_customer=c.cust_kode and
d.ds_kode_product=t.type_kode_group and
d.ds_kode_barang=t.type_kode and
d.ds_kode_product=p.product_kode and
t.type_kode_group=p.product_kode and
a.hs_customer=b.cust_kode and
c.cust_kode=b.cust_kode and
a.hs_qq=left(b.cust_nokendaraan,10) and 
a.hs_tanggal between '2016/01/01' and '2016/12/31' and 
a.hs_cabang  between '03' and '08' and 
d.ds_kode_product ='OTH'
order by cab asc, nomor_faktur asc,customer asc

select distinct  CASE
    WHEN a.hs_cabang = '03'  THEN 'WR_Supratman'
    WHEN a.hs_cabang = '04'  THEN 'Solo'
    WHEN a.hs_cabang = '05'  THEN 'Tugu'
	WHEN a.hs_cabang = '06'  THEN 'Yogya'
    WHEN a.hs_cabang = '07'  THEN 'Mrican'
    WHEN a.hs_cabang = '08'  THEN 'Majapahit'
END as cab,
rtrim(a.hs_nomor_faktur) as nomor_faktur ,
convert(varchar(10),a.hs_tanggal,103) as tanggal,
rtrim(a.hs_customer) as customer,
rtrim(c.cust_nama) as cus_nama,
rtrim(c.cust_alamat_1) as alamat_1,
rtrim(c.cust_alamat_2) as alamat_2,
rtrim(c.cust_alamat_3) as alamat_3,
rtrim(c.cust_kota) as kota,
rtrim(c.cust_telefon) as telefon,
rtrim(c.mobileno) as mobileno,
rtrim(cust_hp) as hp,
rtrim(a.hs_qq) as qq,
rtrim(m.merkdescription) as mdescription ,
rtrim(s.ssmerkdescription) as sdescription ,
rtrim(v.variandescription) as vdescription ,
rtrim(e.sales_nama) as nama_sales,
rtrim(a.hs_warehouse) as warehouse,
convert(float,a.hs_nilai_disc4_after) as net_sales, 
rtrim(a.hs_nilai_disc4) as disc_4, 
rtrim(d.ds_kode_product) as kode_product ,
rtrim(d.ds_kode_barang) as sku,
rtrim(t.type_nama) as nama ,
rtrim(d.ds_qty) qty,
rtrim(d.ds_harga_jual) as harga_jual,
rtrim(d.ds_disc1) as disc_1,
rtrim(d.ds_disc2) as disc2, 
rtrim(d.ds_disc3) as disc3,
convert(float,d.ds_amount) as amount, 
convert(float,d.ds_amount_d4) as amount_d4 ,
convert(float,d.ds_tot_harga_pokok) as tot_harga_pokok,
rtrim(d.ds_qty_retur) as qty_retur,
rtrim(a.hs_last_km) as last_km,
rtrim(a.hs_kode_salesman) as kode_salesman
from 
meka..tslsh a left join meka..mslsmn e on e.sales_kode=a.hs_kode_salesman
and e.sales_cabang=a.hs_cabang, 
meka..tslsd d,
meka..mcust c,
meka..mtipe t,
meka..mprod p, 
(meka..mcmbl b left join meka..mvmsv v on v.vmerk=b.cust_merk and v.vsmerk=b.cust_submerk and v.vvarian=b.cust_varian
left join meka..mvms s on v.vsmerk=s.ssmerk and v.vmerk=s.smerk
left join meka..mvm m on s.smerk=m.merk)
where
a.hs_nomor_faktur=d.ds_nomor_faktur and
a.hs_customer=c.cust_kode and
d.ds_kode_product=t.type_kode_group and
d.ds_kode_barang=t.type_kode and
d.ds_kode_product=p.product_kode and
t.type_kode_group=p.product_kode and
a.hs_customer=b.cust_kode and
c.cust_kode=b.cust_kode and
a.hs_qq=left(b.cust_nokendaraan,10) and 
a.hs_tanggal between '2017/01/01' and '2017/12/31' and 
a.hs_cabang  between '03' and '08' and 
d.ds_kode_product ='OTH'
order by cab asc, nomor_faktur asc,customer asc

select distinct  CASE
    WHEN a.hs_cabang = '03'  THEN 'WR_Supratman'
    WHEN a.hs_cabang = '04'  THEN 'Solo'
    WHEN a.hs_cabang = '05'  THEN 'Tugu'
	WHEN a.hs_cabang = '06'  THEN 'Yogya'
    WHEN a.hs_cabang = '07'  THEN 'Mrican'
    WHEN a.hs_cabang = '08'  THEN 'Majapahit'
END as cab,
rtrim(a.hs_nomor_faktur) as nomor_faktur ,
convert(varchar(10),a.hs_tanggal,103) as tanggal,
rtrim(a.hs_customer) as customer,
rtrim(c.cust_nama) as cus_nama,
rtrim(c.cust_alamat_1) as alamat_1,
rtrim(c.cust_alamat_2) as alamat_2,
rtrim(c.cust_alamat_3) as alamat_3,
rtrim(c.cust_kota) as kota,
rtrim(c.cust_telefon) as telefon,
rtrim(c.mobileno) as mobileno,
rtrim(cust_hp) as hp,
rtrim(a.hs_qq) as qq,
rtrim(m.merkdescription) as mdescription ,
rtrim(s.ssmerkdescription) as sdescription ,
rtrim(v.variandescription) as vdescription ,
rtrim(e.sales_nama) as nama_sales,
rtrim(a.hs_warehouse) as warehouse,
convert(float,a.hs_nilai_disc4_after) as net_sales, 
rtrim(a.hs_nilai_disc4) as disc_4, 
rtrim(d.ds_kode_product) as kode_product ,
rtrim(d.ds_kode_barang) as sku,
rtrim(t.type_nama) as nama ,
rtrim(d.ds_qty) qty,
rtrim(d.ds_harga_jual) as harga_jual,
rtrim(d.ds_disc1) as disc_1,
rtrim(d.ds_disc2) as disc2, 
rtrim(d.ds_disc3) as disc3,
convert(float,d.ds_amount) as amount, 
convert(float,d.ds_amount_d4) as amount_d4 ,
convert(float,d.ds_tot_harga_pokok) as tot_harga_pokok,
rtrim(d.ds_qty_retur) as qty_retur,
rtrim(a.hs_last_km) as last_km,
rtrim(a.hs_kode_salesman) as kode_salesman
from 
meka..tslsh a left join meka..mslsmn e on e.sales_kode=a.hs_kode_salesman
and e.sales_cabang=a.hs_cabang, 
meka..tslsd d,
meka..mcust c,
meka..mtipe t,
meka..mprod p, 
(meka..mcmbl b left join meka..mvmsv v on v.vmerk=b.cust_merk and v.vsmerk=b.cust_submerk and v.vvarian=b.cust_varian
left join meka..mvms s on v.vsmerk=s.ssmerk and v.vmerk=s.smerk
left join meka..mvm m on s.smerk=m.merk)
where
a.hs_nomor_faktur=d.ds_nomor_faktur and
a.hs_customer=c.cust_kode and
d.ds_kode_product=t.type_kode_group and
d.ds_kode_barang=t.type_kode and
d.ds_kode_product=p.product_kode and
t.type_kode_group=p.product_kode and
a.hs_customer=b.cust_kode and
c.cust_kode=b.cust_kode and
a.hs_qq=left(b.cust_nokendaraan,10) and 
a.hs_tanggal between '2018/01/01' and '2018/06/30' and 
a.hs_cabang  between '03' and '08' and 
d.ds_kode_product ='OTH'
order by cab asc, nomor_faktur asc,customer asc