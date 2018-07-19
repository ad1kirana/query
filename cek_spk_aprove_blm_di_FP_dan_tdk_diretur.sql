--spk_aprove_blm_di_FP_dan_tdk_diretur
select c.ds_kode_product,c.ds_kode_barang,c.ds_qty,a.hs_vehicle,a.hs_company,a.hs_cabang,a.hs_tanggal,b.hs_nomor_faktur,a.hs_nomor_spk,a.hs_warehouse,a.hs_customer,
a.hs_kode_salesman,a.hs_creator,a.hs_nomor_faktur,d.hlbm_no_lbm
--select top 1000 * 
from meka..tspkm a 
inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk 
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
left join meka..twrsh d on a.hs_nomor_spk=d.hlbm_nomor_dokumen
where a.hs_nomor_faktur='' and d.hlbm_no_lbm is null
and ds_kode_product <>'oth'
and a.hs_cabang between '04' and '04' 
and a.hs_tanggal between '2016-01-31' and '2016-11-23'
