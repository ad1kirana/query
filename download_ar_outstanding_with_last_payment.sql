(select rtrim(ar_nomor_bukti) as inv,ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv,
ar_flag_lunas,ar_tgl_bayar_akhir, t2.tgl, t2.KAR_AMOUNT
from 
(select  KAR_Cabang as cab, KAR_NOMOR_DOCUMENT as inv, t.tgl, kar_amount
from
(select top 10 a.KAR_Cabang as cab, a.KAR_NOMOR_DOCUMENT as inv, MAX(a.KAR_TANGGAL) as tgl from MEKA..hkar a
where a.KAR_SIFAT_TRN='-'
and a.KAR_Cabang = '20'
and a.KAR_TANGGAL < '2018/06/30'
group by a.kAR_Cabang, a.KAR_NOMOR_DOCUMENT) t
inner join MEKA..HKAR on  KAR_Cabang=t.cab and KAR_NOMOR_DOCUMENT=t.inv and KAR_TANGGAL=t.tgl 
where KAR_SIFAT_TRN='-'
and KAR_Cabang = '20'
and KAR_TANGGAL < '2018/06/30') t2 right join
meka..har on t2.cab=AR_Cabang and t2.inv=AR_Nomor_Bukti
inner join meka..mslsmn on ar_salesman=sales_kode and 
  ar_cabang=sales_cabang
  inner join meka..mcust on ar_cabang=cust_cabang and
    ar_company=cust_companycode and
    ar_kode_cust=cust_kode and
    ar_company=sales_company
where 
ar_cabang between '01' and '30'
and ar_flag_lunas ='y'
and ar_tanggal_awal<='2018-06-30'
and ar_tgl_bayar_akhir > '2018-06-30')



union all



(select rtrim(ar_nomor_bukti) as inv,ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv,
ar_flag_lunas,ar_tgl_bayar_akhir, t2.tgl, t2.KAR_AMOUNT
from 
(select  KAR_Cabang as cab, KAR_NOMOR_DOCUMENT as inv, t.tgl, kar_amount
from
(select top 10 a.KAR_Cabang as cab, a.KAR_NOMOR_DOCUMENT as inv, MAX(a.KAR_TANGGAL) as tgl from MEKA..hkar a
where a.KAR_SIFAT_TRN='-'
and a.KAR_Cabang between '01' and '30'
and a.KAR_TANGGAL < '2018/06/30'
group by a.kAR_Cabang, a.KAR_NOMOR_DOCUMENT) t
inner join MEKA..HKAR on  KAR_Cabang=t.cab and KAR_NOMOR_DOCUMENT=t.inv and KAR_TANGGAL=t.tgl 
where KAR_SIFAT_TRN='-'
and KAR_Cabang between '01' and '30'
and KAR_TANGGAL < '2018/06/30') t2 right join
meka..har on t2.cab=AR_Cabang and t2.inv=AR_Nomor_Bukti
inner join meka..mslsmn on ar_salesman=sales_kode and 
  ar_cabang=sales_cabang
  inner join meka..mcust on ar_cabang=cust_cabang and
    ar_company=cust_companycode and
    ar_kode_cust=cust_kode and
    ar_company=sales_company
where 
ar_cabang between '01' and '30'
and ar_flag_lunas ='N'
and ar_tanggal_awal<='2018-06-30')