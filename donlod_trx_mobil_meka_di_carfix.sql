--select top 100 * from meka..mapjk where nama like '%meka%'

select top 10000 hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_customer,hs_qq,nama,ds_kode_product,ds_kode_barang,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,ds_amount_d4,hs_last_km,paytipe,ds_qty_retur,hs_keterangan,ds_tot_harga_pokok
from (meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mapjk on hs_customer=kode_customer
inner join meka..paypoint on hs_nomor_faktur=payinvoiceno and hs_company=paycompany and hs_cabang=paybranch and hs_salesoffice=paysalesoffice
where nama like '%meka%' and hs_tanggal between '2016-05-01' and '2016-05-31'
and hs_cabang between '03' and '08'
and paytipe='credit limit'

--select top 10 * from meka..paypoint
select top 10 * from meka..tslsd
