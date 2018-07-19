select 
ar_cabang,hs_salesoffice,rtrim(ar_nomor_bukti),ar_salesman,rtrim(sales_nama)as salesman,ar_kode_cust,cust_nama,cust_alamat_1,cust_kota,
(select top 1 ds_kode_product from meka..tslsd where ar_nomor_bukti=ds_nomor_faktur) as prod,
ar_tanggal_awal,ar_due_date,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair,ar_cabang,rtrim(sales_supervisor) as spv, 
convert(varchar(10),DATEADD(dd,param_blockar,ar_due_date),103) as blok
from
MEKA..HAR inner join MEKA..MSYSTEM on AR_Cabang=PARAM_CAbang 
inner join meka..mslsmn on ar_salesman=sales_kode and 
	ar_cabang=sales_cabang
	left join meka..mcust on 
		ar_company=cust_companycode and
		ar_kode_cust=cust_kode and
		ar_company=sales_company
	inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
where 
AR_Flag_Lunas='n' and
DATEADD(dd,param_blockar,ar_due_date) <= '2018-02-28'
and AR_Tanggal_Awal>='2017-01-01'