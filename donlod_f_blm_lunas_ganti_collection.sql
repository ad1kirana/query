select a.JS_Customer,
b.ar_nomor_bukti, b.ar_salesman,
(select top 1 DS_Kode_Product from MEKA..tslsd
where DS_Nomor_Faktur=b.AR_Nomor_Bukti) as prod,'D-HR'
from MEKA..MRJDWSL a
inner join MEKA..HAR b on b.AR_Kode_Cust=a.JS_Customer
where a.JS_Kode_Sales='d-hr' 
and b.ar_flag_lunas='n'

select DISTINCT top 1000 b.ar_nomor_bukti,a.JS_Customer,
 b.ar_salesman,
(select top 1 DS_Kode_Product from MEKA..tslsd
where DS_Nomor_Faktur=b.AR_Nomor_Bukti) as prod,
d.PRODUCT_Supplier as spl
from MEKA..MRJDWSL a
inner join MEKA..HAR b on b.AR_Kode_Cust=a.JS_Customer
inner join MEKA..tslsd c on c.DS_Nomor_Faktur=b.AR_Nomor_Bukti
inner join MEKA..MCTPROD d on d.PRODUCT_Kode=c.DS_Kode_Product
where a.JS_Kode_Sales='d-ai' 
and b.ar_flag_lunas='n'
and d.PRODUCT_Supplier='002'
order by b.AR_Nomor_Bukti

select ar_cabang,hs_salesoffice,rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv
from meka..har inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	inner join meka..mcust on --ar_cabang=cust_cabang and
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
where 
ar_flag_lunas <>'y'
and AR_Salesman='D-AI'