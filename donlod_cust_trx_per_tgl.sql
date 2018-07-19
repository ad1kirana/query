select hs_cabang,hs_nomor_faktur,cust_kode,cust_nama,hs_qq,
cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,
cust_telefon,mobileno,hs_tanggal,cust_createdate from meka..tslsh inner join meka..mcust
on hs_customer=cust_kode 
where hs_tanggal between '2014-11-01' and '2015-02-28'
and hs_cabang ='04'

select a.hs_cabang,a.hs_nomor_faktur,b.cust_kode,b.cust_nama,a.hs_qq,
b.cust_alamat_1,b.cust_alamat_2,b.cust_alamat_3,b.cust_kota,
b.cust_telefon,b.mobileno,a.hs_tanggal,b.cust_createdate,d.merkdescription from 
meka..tslsh a, meka..mcust b, meka..mcmbl c, meka..mvm d
where a.hs_customer=b.cust_kode
--and a.hs_cabang=b.cust_cabang
and a.hs_company=b.cust_companycode
and a.hs_customer=c.cust_kode
and a.hs_qq=c.cust_nokendaraan
and b.cust_kode=c.cust_kode
and c.cust_merk=d.merk
and hs_tanggal between '2014-01-01' and '2014-08-31'
and hs_cabang ='04'