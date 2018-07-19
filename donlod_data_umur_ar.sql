select  distinct rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,ds_kode_product,
ar_tanggal_awal,ar_due_date,ar_tgl_bayar_akhir,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair
from meka..har,meka..tslsd,meka..mslsmn,meka..mcust
where
ar_cabang=cust_cabang and
ar_company=cust_companycode and
ar_nomor_bukti = ds_nomor_faktur and
ar_salesman=sales_kode and
ar_kode_cust=cust_kode and
ar_company=sales_company and
ar_cabang=sales_cabang and 
ds_kode_product like 'om%'
and ar_cabang='01'
and ar_tanggal_awal between '2013-01-01' and '2014-01-31'
