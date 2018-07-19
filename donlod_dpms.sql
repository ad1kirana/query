
select sum(ds_qty*type_volume)
--select sum(ds_amount-ds_amount_d4)
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2016-05-01' and '2016-05-31'
and ds_qty_retur='0'
--and ds_kode_barang='SHE-HX5-15W-40(4L)'

select top 10 * from meka..tslsh

select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG',hts_keterangan,'(kode_cust)','10158 - Key Outlet',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='bn/k' and hts_tanggal between '2016-07-01' and '2016-07-31'


select sum((ds_qty-ds_qty_retur)*type_volume)
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) inner join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2016-11-01' and '2016-11-30'

----trial DPMS upload client

select hs_tanggal,sales_nama,cust_alamat_3,cust_nama,cust_kode,cust_klasifikasi_2,type_kode_spl_1,((ds_qty-ds_qty_retur)*type_volume)as liter,
'','','','',hs_nomor_faktur
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='sad'
and hs_cabang='30'
and hs_tanggal between '2018-04-01' and '2018-04-30'


select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX)','10SSD3','10158',type_kode_spl_1,(dts_qty*type_volume)as liter,'','','','',hts_no_tran_stock
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk3' and hts_tanggal between '2018-04-01' and '2018-04-30'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX)','10SSD3','10158',type_kode_spl_1,(dts_qty*type_volume)as liter,'','','','',hts_no_tran_stock
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk1' and hts_tanggal between '2018-04-01' and '2018-04-30'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX-TUGU)','06CARTU','10158',type_kode_spl_1,(dts_qty*type_volume)as liter,'','','','',hts_no_tran_stock
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk4' and hts_tanggal between '2018-04-01' and '2018-04-30'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX)','10SSD3','10158',type_kode_spl_1,(dts_qty*type_volume)as liter,'','','','',hts_no_tran_stock
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk5' and hts_tanggal between '2018-04-01' and '2018-04-30'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX-Mrican)','06CARTP','10158',type_kode_spl_1,(dts_qty*type_volume)as liter,'','','','',hts_no_tran_stock
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk6' and hts_tanggal between '2018-04-01' and '2018-04-30'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX-Majapahit)','06CARJA','10154',type_kode_spl_1,(dts_qty*type_volume)as liter,'','','','',hts_no_tran_stock
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk7' and hts_tanggal between '2018-04-01' and '2018-04-30'

select part_kode,type_kode_spl_1,sum(type_volume*part_stock_bisa_jual),part_kode_wh
--,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart
inner join meka..mtipe on part_kode=type_kode where part_cabang='30' and part_kode_group='sad' and part_stock_bisa_jual > '0'
group by part_kode,type_kode_spl_1,part_kode_wh


-------- mulai dari sini aja



select hs_tanggal,sales_nama,cust_alamat_3,cust_nama,cust_kode,cust_klasifikasi_2,type_kode_spl_1,((ds_qty-ds_qty_retur)*type_volume)as liter,
cust_createdate,ds_qty,ds_qty_retur,hs_nomor_faktur,ds_kode_barang,(ds_amount-ds_amount_d4) as nett_price, hs_keterangan,hs_creator
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='sad'
and hs_cabang='30'
and hs_tanggal between '2018-04-01' and '2018-04-30'

--liter
select part_kode,type_kode_spl_1,sum(type_volume*part_stock_bisa_jual),part_kode_wh
--,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart
inner join meka..mtipe on part_kode=type_kode where part_cabang='30' and part_kode_group='sad' and part_stock_bisa_jual > '0'
group by part_kode,type_kode_spl_1,part_kode_wh


select hs_tanggal,sales_nama,cust_alamat_3,cust_nama,cust_kode,cust_klasifikasi_2,type_kode_spl_1,((ds_qty-ds_qty_retur)*type_volume)as liter,
cust_createdate,ds_qty,ds_qty_retur,hs_nomor_faktur,ds_kode_barang,(ds_amount-ds_amount_d4) as nett_price, hs_keterangan,hs_creator
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2018-03-01' and '2018-03-31'
--and ds_qty_retur='0'
--and cust_alamat_3=''





select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX)','10SSD3','10158-Key Outlet',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk3' and hts_tanggal between '2018-03-01' and '2018-03-31'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX)','10SSD3','10158-Key Outlet',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk1' and hts_tanggal between '2018-03-01' and '2018-03-31'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX-TUGU)','06CARTU','10158-Key Outlet',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk4' and hts_tanggal between '2018-03-01' and '2018-03-31'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX)','10SSD3','10158-Key Outlet',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk5' and hts_tanggal between '2018-03-01' and '2018-03-31'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX-Mrican)','06CARTP','10158-Key Outlet',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk6' and hts_tanggal between '2018-03-01' and '2018-03-31'
union all
select hts_tanggal,'SALES COUNTER_SMG','KOTA SEMARANG','PT. MEKA ADIPRATAMA (CARFIX-Majapahit)','06CARJA','10154-IWS Chains',type_kode_spl_1,(dts_qty*type_volume)as liter,'',dts_qty,hts_no_tran_stock,dts_kode_barang,type_dbp
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)inner join meka..mtipe on dts_kode_barang=type_kode
where dts_product='she' and hts_jenis_spb='ibk7' and hts_tanggal between '2018-03-01' and '2018-03-31'


--liter
select part_kode,type_kode_spl_1,(type_volume*part_stock_bisa_jual),part_kode_wh
--,part_stock_bisa_jual,part_stock_dn,part_stock_total
from meka..mpart
inner join meka..mtipe on part_kode=type_kode where part_cabang='01' and part_kode_group='she' and part_stock_bisa_jual > '0'



--gaks

select hs_tanggal,sales_nama,cust_alamat_3,cust_nama,cust_kode,cust_klasifikasi_2,type_kode_spl_1,((ds_qty-ds_qty_retur)*type_volume)as liter,
cust_createdate,ds_qty,ds_qty_retur,hs_nomor_faktur,ds_kode_barang,(ds_amount-ds_amount_d4) as nett_price, hs_keterangan,hs_creator
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product between 'shd' and 'sho'
and hs_cabang='20'
and hs_tanggal between '2018-03-01' and '2018-03-31'
--and HS_Nomor_Faktur='202018003558FP'



select part_kode,type_kode_spl_1,sum(type_volume*part_stock_bisa_jual),part_kode_wh
from meka..mpart
inner join meka..mtipe on part_kode=type_kode where part_cabang='20' and part_kode_group between 'shd' and 'sho' and part_stock_bisa_jual > '0'
group by part_kode,type_kode_spl_1,part_kode_wh


--BJM
select hs_tanggal,sales_nama,cust_alamat_3,cust_nama,cust_kode,cust_klasifikasi_2,type_kode_spl_1,((ds_qty-ds_qty_retur)*type_volume)as liter,
cust_createdate,ds_qty,ds_qty_retur,hs_nomor_faktur,ds_kode_barang,(ds_amount-ds_amount_d4) as nett_price, hs_keterangan,hs_creator
from (((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mcust
on hs_customer=cust_kode)inner join meka..mtipe on ds_kode_barang=type_kode) left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product between 'shd' and 'sho'
and hs_cabang='22'
and hs_tanggal between '2018-03-01' and '2018-03-31'


select part_kode,type_kode_spl_1,sum(type_volume*part_stock_bisa_jual),part_kode_wh
from meka..mpart
inner join meka..mtipe on part_kode=type_kode where part_cabang='22' and part_kode_group between 'shd' and 'sho' and part_stock_bisa_jual > '0'
group by part_kode,type_kode_spl_1,part_kode_wh


select top 10 * from MEKA..TSLSH inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur
inner join meka..mcust on hs_customer=cust_kode
inner join meka..mtipe on ds_kode_barang=type_kode
inner join meka..mslsmn on hs_kode_salesman=sales_kode
--where HS_Nomor_Faktur='202018003558FP'
