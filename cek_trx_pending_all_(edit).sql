--pj/k blm pj/m (1)
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from meka..ttsh left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where 
hts_jenis_spb='pj/k'
and hts_tanggal >= '2014-01-01'
and hlbm_nomor_dokumen is null
order by hts_salesoffice asc


--tp/k blm tp/m (2)
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from meka..ttsh left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock where 
hts_jenis_spb='tp/k'
and hts_tanggal >= '2014-01-01'
and hlbm_nomor_dokumen is null
--and hts_cabang <> '20'
order by hts_salesoffice asc

--IBK blm IBM (3)
select hts_salesoffice,hts_no_tran_stock,hts_nomor_spb,hts_tanggal,hts_kode_warehous,hts_qq,hts_jenis_spb,hts_creator,dts_product,dts_kode_barang,dts_qty,hlbm_no_lbm,hlbm_nomor_dokumen
from ((meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock) left join meka..twrsh
on hts_no_tran_stock=hlbm_nomor_dokumen)
where 
hts_jenis_spb like 'ibk%'
and hlbm_nomor_dokumen is null 
and hts_tanggal >='2015-01-01'
order by hts_tanggal asc

--RT/M blm di CA (4)
select top 10 hlbm_cabang,hlbm_no_lbm,hlbm_nomor_dokumen,hlbm_tanggal,'',hlbm_kode_warehous,hlbm_jenis_lbm,hlbm_creator,'',hlbm_kode_customer
from meka..twrsh LEFT join meka..trtrh on
hlbm_no_lbm=hrc_no_lbm where hlbm_jenis_lbm='rt/m'
and hrc_no_retur is null
and hlbm_tanggal >='2015-01-01'
order by hlbm_tanggal asc


--non_sales_blm_spb (5)
select hts_cabang,hts_no_tran_stock,hts_nomor_dokumen,hts_tanggal,hts_salesoffice,hts_kode_warehous,hts_jenis_spb,hts_creator,dts_product, dts_kode_barang,dts_qty,'',hts_kode_customer,hts_qq,hts_flag_posting,hts_flag_spb,hts_keterangan
from meka..tptsh inner join meka..tptsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_flag_spb <>'y'
and hts_tanggal > '2013-01-01'
order by hts_cabang asc

--non_sales_blm_posting
select top 100 hts_cabang,hts_no_tran_stock,hts_nomor_dokumen,hts_tanggal,hts_kode_warehous,hts_kode_customer,hts_jenis_spb,hts_creator,dts_product, dts_kode_barang,dts_qty,hts_flag_posting,hts_flag_spb,hts_keterangan
from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_flag_posting <> 'y'

--OR pending
select * from meka..torderh inner join meka..torderd on hs_nomor_faktur = ds_nomor_faktur 
where hs_flag_posting='n' and hs_flag_spb='n'
order by hs_tanggal asc

--LBM blm posting
select hlbm_cabang,hlbm_no_lbm,hlbm_kode_customer,hlbm_tanggal,hlbm_kode_warehous,hlbm_jenis_lbm,hlbm_kode_supplier,
hlbm_creator,hlbm_nomor_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_product
from meka..twrsh left join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm where hlbm_flag_posting <>'y'

--spk_aprove_blm_di_FP_dan_tdk_diretur
select a.hs_company,a.hs_cabang,a.hs_tanggal,b.hs_nomor_faktur,a.hs_nomor_spk,a.hs_warehouse,a.hs_customer,a.hs_vehicle,
a.hs_kode_salesman,a.hs_creator,a.hs_nomor_faktur,c.ds_kode_product,c.ds_kode_barang,c.ds_qty,d.hlbm_no_lbm
from meka..tspkm a 
inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk 
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
left join meka..twrsh d on a.hs_nomor_spk=d.hlbm_nomor_dokumen
where a.hs_nomor_faktur='' and d.hlbm_no_lbm is null
and ds_kode_product <>'oth'
and a.hs_cabang between '03' and '08' 
and a.hs_tanggal > '2016-01-31'
order by a.hs_nomor_faktur asc

--SPK_blm_approve
select hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_qq,hs_customer,hs_creator,ds_kode_barang,ds_qty,ds_qty_retur from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur
where hs_nomor_spk is null and hs_cabang between '03' and '08'  and hs_nomor_vouch=''
and hs_tanggal between '2016-12-01' and '2016-12-31'
order by hs_nomor_faktur asc 