select hs_tanggal,hs_nomor_faktur,ds_kode_barang,ds_qty,ds_qty_retur,hrc_no_retur,drc_kode_barang,drc_qty
--select sum(drc_harga_net),sum(drc_disc4)
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
left join meka..trtrh on hs_nomor_faktur=hrc_eks_faktur
left join meka..trtrd on hrc_no_retur=drc_nomor_retur and ds_kode_barang=drc_kode_barang
where ds_kode_product='she'
and year(hs_tanggal)=2017
and month(hs_tanggal)=2
and hs_cabang='01'
order by hs_tanggal asc

--select top 10 * from meka..trtrh inner join meka..trtrd on hrc_no_retur=drc_nomor_retur
where hrc_no_retur='010117000121ca'

select sum(ds_qty_retur*((ds_amount-ds_amount_d4)/ds_qty))
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where ds_kode_product='she'
and year(hs_tanggal)=2017
and month(hs_tanggal)=2
and hs_cabang='01'
drc_harga_net
select (sum(drc_harga_net))-(sum(drc_disc4))
--select *
from meka..trtrh inner join meka..trtrd on hrc_no_retur=drc_nomor_retur
where drc_product='she'
and year(hrc_tanggal)=2017
and month(hrc_tanggal)=2
and hrc_cabang='01'

select hs_nomor_faktur,ds_kode_barang,ds_qty,ds_qty_retur,hrc_no_retur,drc_kode_barang,drc_qty
select (sum(drc_harga_net))-(sum(drc_disc4))
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..trtrh on hs_nomor_faktur=hrc_eks_faktur
inner join meka..trtrd on hrc_no_retur=drc_nomor_retur and ds_kode_barang=drc_kode_barang
where ds_kode_product='she'
and year(hs_tanggal)=2017
and month(hs_tanggal)=2
and hs_cabang='01'
