select ds_nomor_faktur,hs_nilai_disc3_after,ds_kode_barang,ds_amount,ds_amount_d4 from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where hs_tanggal between '2014-05-01' and '2014-05-31'
and hs_cabang='02'

select top 10 * from meka..tslsh where hs_nomor_faktur='010104000003FP'
select top 10 * from meka..tslsd where ds_nomor_faktur='010104000003FP'


