
select a.hs_cabang,a.hs_salesoffice,a.hs_nomor_spk,p.hs_nomor_faktur, a.hs_tanggal,a.hs_customer,
c.cust_nama,c.cust_alamat_1,c.cust_alamat_2,c.cust_alamat_3,c.cust_kota,c.cust_telefon,c.mobileno, a.hs_qq,
m.merkdescription,s.ssmerkdescription,v.variandescription,
--t.type_nama,
a.hs_warehouse,a.hs_nilai_disc4_after as net_sales, a.hs_nilai_disc4,
d.ds_kode_product,rtrim(d.ds_kode_barang) as sku,d.ds_qty,d.ds_harga_jual,d.ds_disc1,
d.ds_disc2,d.ds_disc3,d.ds_amount,d.ds_amount_d4,d.ds_tot_harga_pokok,d.ds_qty_retur,a.hs_last_km,a.hs_creator
--select top 10 * 
from 
meka..tspkm p,
meka..torderd d,
meka..mcust c,
meka..torderh a,
meka..mcmbl b 

left join meka..mvmsv v on v.vmerk=b.cust_merk and v.vsmerk=b.cust_submerk and v.vvarian=b.cust_varian
left join meka..mvms s on v.vsmerk=s.ssmerk and v.vmerk=s.smerk
left join meka..mvm m on s.smerk=m.merk
--left join meka..tslsh i on a.hs_nomor_vouch=i.hs_nomor_faktur
where a.hs_nomor_faktur=d.ds_nomor_faktur and 
a.hs_customer=c.cust_kode and
a.hs_customer=b.cust_kode and 
c.cust_kode=b.cust_kode and
a.hs_qq=ltrim(b.cust_nokendaraan) and
a.hs_tanggal between '2001-01-01' and '2016-02-29' and 
a.hs_cabang between '04' and '04' and
a.hs_company=p.hs_company and 
a.hs_cabang=p.hs_cabang and 
a.hs_nomor_spk=p.hs_nomor_spk


--and a.hs_nomor_spk<>'' and d.ds_qty_retur <>'0' and order by hs_qq asc
--select top 10 * from meka..tspkm
--select top 10 * from meka..torderh where hs_nomor_faktur='010715000003OR'    