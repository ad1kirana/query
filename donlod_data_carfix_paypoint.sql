select paybranch,ar_tanggal_awal,ar_tgl_bayar_akhir,payinvoiceno,ar_kode_cust,cust_nama,paytipe,payinvoiceamount,ar_nilai_dokumen,ar_nilai_total,ar_flag_lunas,hrc_no_retur,hrc_nilai_total_retr
from ((meka..paypoint inner join meka..har on payinvoiceno=ar_nomor_bukti
and paycompany=ar_company
and paybranch=ar_cabang)left join meka..trtrh on ar_nomor_bukti=hrc_eks_faktur
and ar_company=hrc_company
and ar_cabang=hrc_cabang)
inner join meka..mcust on ar_kode_cust=cust_kode and ar_company=cust_companycode and ar_cabang=cust_cabang 

where paycreatedate between '2014-01-01' and '2014-02-28'
and paytipe='credit limit'
select top 2 * from meka..har
select top 2 * from meka..paypoint
select top 2 * from meka..trtrh
select top 2 * from meka..mcust