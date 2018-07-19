SLS CODE	CUST CODE	SFA ORDER NO	SFA ORDER DATE	ORDER NO	ORDER DATE	INVOICE NO	INVOICE DATE	PART_KODE	qty	het	diskon(rupiah)	Kode_dist

select top 10 * from meka..tslsh 
select hs_kode_salesman,hs_customer,'','','','',hs_nomor_faktur,hs_tanggal,ds_kode_barang,ds_qty,ds_harga_jual,ds_amount,ds_amount_d4,hs_salesoffice
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where hs_cabang='02' and ds_kode_product between 'emd' and 'eot'
and hs_tanggal between '2017-01-01' and '2017-05-18'