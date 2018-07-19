--cek spk blm di FP
select top 1000 * from meka..tspkm a inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur
 
 where a.HS_Nomor_SPK='010417004495sp'
 a.hs_nomor_faktur=''
and a.hs_cabang between '08' and '08' 
and a.hs_tanggal between '2016-12-01' and '2016-12-22'
and c.ds_kode_product <>'oth'
--and c.ds_kode_barang='WB-DCP-016'
order by a.hs_nomor_faktur asc

select top 50 * from MEKA..TSPKM where --HS_Nomor_SPK='010615000004SP'
hs_nomor_faktur='010518004545FP'
hs_last_km='0'

--update meka..tspkm set hs_last_km='85785' from MEKA..TSPKM where HS_Nomor_SPK='010318002956SP'
select top 50 * from MEKA..torderh inner join MEKA..TOrderD on HS_Nomor_Faktur=DS_Nomor_Faktur where HS_Nomor_SPK='010817006104SP'

select top 50 * from MEKA..tslsd where DS_Nomor_Faktur='010817005981FP'
select top 10 * from meka..tslsh where hs_nomor_faktur='010318001854fp'
--update MEKA..TSLSH set hs_last_km='85785' from meka..tslsh where hs_nomor_faktur='010318001854fp'

--spk_aprove_blm_di_FP_dan_tdk_diretur
select a.hs_company,a.hs_cabang,a.hs_tanggal,b.hs_nomor_faktur,a.hs_nomor_spk,a.hs_warehouse,a.hs_customer,a.hs_vehicle,
a.hs_kode_salesman,a.hs_creator,a.hs_nomor_faktur,c.ds_kode_product,c.ds_kode_barang,c.ds_qty,d.hlbm_no_lbm
--select top 1000 * 
from meka..tspkm a 
inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk 
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
left join meka..twrsh d on a.hs_nomor_spk=d.hlbm_nomor_dokumen
where a.hs_nomor_faktur='' and d.hlbm_no_lbm is null
and ds_kode_product <>'oth'
and a.hs_cabang between '03' and '08' 
--and a.hs_cabang between '04' and '04' 
and a.hs_tanggal between '2016-12-22' and '2016-12-21'
order by a.hs_nomor_faktur asc

--SPK_blm_approve
select hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_qq,hs_customer,hs_creator,ds_kode_barang,ds_qty from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur
where hs_nomor_spk is null and hs_cabang between '03' and '08'  and hs_nomor_vouch=''
and hs_tanggal > '2015-07-30'
and ds_kode_product <>'oth'
order by hs_nomor_faktur asc 

select top 10 * from meka..tslsd


select hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_qq,hs_customer,hs_creator,ds_kode_barang,ds_qty from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur
where hs_nomor_spk is null and hs_cabang between '04' and '08'  and hs_nomor_vouch=''
and hs_tanggal > '2015-07-30'
order by hs_nomor_faktur asc 


select hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_nomor_spk,hs_tanggal,hs_qq,hs_customer,hs_creator,ds_kode_barang,ds_qty from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur
where 
hs_customer='e-00006381' and
hs_cabang between '08' and '08'
  and hs_nomor_vouch=''
and hs_tanggal > '2015-07-30'
and ds_kode_product <>'oth'
order by hs_nomor_spk asc 

select top 10 * from meka..mcust where cust_kode='E-00006381'
--update meka..mcust set cust_cabang='08' from meka..mcust where cust_kode='E-00006381'
--update meka..mcust set cust_cabang='03' from meka..mcust where cust_kode='E-00006381'


and hs_vehicle='b 999 wen'
--and b.hs_nomor_faktur='010816004050OR'
--and c.ds_kode_barang like 'wb-dcp%'

--repair_stock_tdk_bisa_RTS

010816004049OR      	010816003879SP      
010816003418OR      	010816003384SP      

select top 10 * from meka..torderd where ds_nomor_faktur='010816004050OR'
select top 10 * from meka..tspkm where hs_nomor_faktur='' and hs_nomor_spk='010816003880SP'
--update meka..tspkm set hs_nomor_faktur='RTS_by_IT' from meka..tspkm where hs_nomor_faktur='' and hs_nomor_spk='010816003880SP'
--update meka..tspkm set hs_nomor_faktur='RTS_by_IT' from meka..tspkm where hs_nomor_faktur='' and hs_nomor_spk='010816003879SP'
--update meka..tspkm set hs_nomor_faktur='RTS_by_IT' from meka..tspkm where hs_nomor_faktur='' and hs_nomor_spk='010816003384SP'

select top 3 * from meka..mpart where part_kode='GTT.300' and part_kode_wh='28'
--update mpart set part_stock_bisa_jual='2', part_stock_dn='0' from meka..mpart where part_kode='GTT.300' and part_kode_wh='28'
--update mpart set part_stock_bisa_jual='83', part_stock_dn='0' from meka..mpart where part_kode='HWK-001' and part_kode_wh='28'
--update mpart set part_stock_bisa_jual='4', part_stock_dn='0' from meka..mpart where part_kode='BUAIK20' and part_kode_wh='28'
--update mpart set part_stock_bisa_jual='10', part_stock_dn='0' from meka..mpart where part_kode='FKM-CVTF-MBFS(1LT)' and part_kode_wh='28'
--update mpart set part_stock_bisa_jual='34' from meka..mpart where part_kode='ST-0925P' and part_kode_wh='28'
--update mpart set part_stock_bisa_jual='1', part_stock_dn='0' from meka..mpart where part_kode='OP-15-FC-BSC-001' and part_kode_wh='28'


select top 1000 Part_cabang, part_kode_wh, part_kode, part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart where part_stock_dn <>'0' and part_kode_group <> 'oth' and part_kode_wh='28' 


select top 10 * from meka..torderd

select top 10 * from meka..torderd where ds_nomor_faktur='010616004089OR'
select top 10 * from meka..twrsh where hlbm_jenis_lbm='rt/s'
and hlbm_cabang='06' and 
 --and hlbm_tanggal ='2016-05-25'
hlbm_nomor_dokumen like '010616001743SP'
select

--cek_lbm_spk
select top 100 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
where hlbm_cabang='06' and hlbm_jenis_lbm='rt/s' and dlbm_product='she' and dlbm_kode_barang='SHE-HX7-10W-40(1LT)'
order by hlbm_no_lbm desc
 hlbm_no_lbm='010616000650BM'

select top 100 * from meka..twrsh where hlbm_no_lbm='010616000655BM'
--update meka..twrsh set hlbm_nomor_dokumen='010616004028SP' from meka..twrsh where hlbm_no_lbm='010616000655BM'
      
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where
hs_nomor_faktur='010415004828or'








select top 10 * from meka..tslsh where hs_nomor_faktur='010415004495fp'
select top 10 * from meka..tslsd where ds_nomor_faktur='010415004495fp'
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010415004855or'
select top 10 * from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010415004495fp'
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_faktur='010415004828or'

select top 10 * from meka..tspkm where hs_nomor_spk='010416001160SP'
select top 10 * from meka..tspkm where hs_nomor_spk='010415003030SP'

select top 1000 * from meka..tspkm a 
inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk 
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
where a.hs_nomor_faktur='' and c.ds_kode_barang='OP-08-BSI-NGP-001'




--spk_aprove_
select a.hs_company,a.hs_cabang,a.hs_tanggal,a.hs_nomor_spk,a.hs_warehouse,a.hs_customer,a.hs_vehicle,
a.hs_kode_salesman,a.hs_creator,a.hs_nomor_faktur,c.ds_kode_product,c.ds_kode_barang,c.ds_qty,d.hlbm_no_lbm
--select top 1000 * 
from meka..tspkm a 
inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk 
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
left join meka..twrsh d on a.hs_nomor_spk=d.hlbm_nomor_dokumen
where a.hs_nomor_faktur='' and d.hlbm_no_lbm is null
and ds_kode_product <>'oth'
and c.ds_kode_barang='OP-08-BSI-NGP-001'


select top 10 * from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
and hlbm_jenis_lbm='rt/s' and dlbm_kode_barang='SHE-SPR-S2-G90(4LT)'
and hlbm_cabang='04'
and hlbm_kode_customer='041500100C'

select top 10 * from meka..tspkm where hs_nomor_spk='010416002439SP' 
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_spk='010616001743SP'    
select top 10 * from meka..twrsh where hlbm_nomor_dokumen='010616001743SP' 
select top 10 hs_nomor_faktur from meka..tspkm where hs_nomor_spk='010616001745SP' 
010616001743SP




select hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_qq,hs_customer,hs_creator,ds_kode_barang,ds_qty
--select top 10000 hs_nomor_spk, hs_nomor_vouch
from meka..torderh a inner join meka..torderd b on hs_nomor_faktur=ds_nomor_faktur

where --hs_nomor_spk is null  and hs_nomor_vouch=''and 
hs_tanggal > '2015-07-30' and hs_cabang between '04' and '08' 
order by hs_nomor_faktur desc 

--cek_FP_dari_SPK_no....
select top 1000 * from meka..tspkm a inner join meka..torderh b on a.hs_nomor_spk=b.hs_nomor_spk
inner join meka..torderd c on b.hs_nomor_faktur=c.ds_nomor_faktur 
 where a.hs_nomor_faktur='010516011342fp'
and a.hs_cabang between '03' and '08' 
