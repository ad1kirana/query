--MEKA
select 
convert(varchar(10),hs_tanggal, 103) as tgl,
rtrim(sales_nama) as nama,
rtrim(cust_alamat_3) as alamat_3,
rtrim(cust_nama) as cust,
rtrim(cust_kode) as kode,
rtrim(cust_klasifikasi_2) as klasifikasi_2,
rtrim(type_kode_spl_1) as spl_1,
((ds_qty-ds_qty_retur)*type_volume)as liter,
'','','','',
rtrim(hs_nomor_faktur) as inv
from (
	((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) 
	inner join meka..mcust on hs_customer=cust_kode)
	inner join meka..mtipe on ds_kode_barang=type_kode) 
	left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='she'
and hs_cabang='01'
and hs_tanggal between '2018-04-01' and '2018-04-30'

union all

select 
convert(varchar(10),hts_tanggal, 103) as tgl,
'SALES COUNTER_SMG' as nama,
'KOTA SEMARANG' as alamat_3,
'PT. MEKA ADIPRATAMA (CARFIX)' as cust,
'10SSD3' as kode,
'10158' as klasifikasi_2,
rtrim(type_kode_spl_1) as spl_1,
(dts_qty*type_volume)as liter,
'','','','',
rtrim(hts_no_tran_stock) as inv
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
	inner join meka..mtipe on dts_kode_barang=type_kode
	where dts_product='she' and hts_jenis_spb='ibk3' and hts_tanggal between '2018-04-01' and '2018-04-30'

union all

select 
convert(varchar(10),hts_tanggal,103) as tgl,
'SALES COUNTER_SMG' as nama,
'KOTA SEMARANG' as alamat_3,
'PT. MEKA ADIPRATAMA (CARFIX)' as cust,
'10SSD3' as kode,
'10158' as klasifikasi_2,
type_kode_spl_1 as spl_1,
(dts_qty*type_volume)as liter,
'','','','',
rtrim(hts_no_tran_stock) as inv
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
	inner join meka..mtipe on dts_kode_barang=type_kode
	where dts_product='she' and hts_jenis_spb='ibk1' and hts_tanggal between '2018-04-01' and '2018-04-30'

union all

select 
convert(varchar(10),hts_tanggal,103) as tgl,
'SALES COUNTER_SMG' as nama,
'KOTA SEMARANG' as alamat_3,
'PT. MEKA ADIPRATAMA (CARFIX-TUGU)' as cust,
'06CARTU' as kode,
'10158' as klasifikasi_2,
type_kode_spl_1 as spl_1,
(dts_qty*type_volume)as liter,
'','','','',
rtrim(hts_no_tran_stock) as inv
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
	inner join meka..mtipe on dts_kode_barang=type_kode
	where dts_product='she' and hts_jenis_spb='ibk4' and hts_tanggal between '2018-04-01' and '2018-04-30'

union all

select 
convert(varchar(10),hts_tanggal,103) as tgl,
'SALES COUNTER_SMG' as nama,
'KOTA SEMARANG' as alamat_3,
'PT. MEKA ADIPRATAMA (CARFIX-TUGU)' as cust,
'06CARTU' as kode,
'10158' as klasifikasi_2,
type_kode_spl_1 as spl_1,
(dts_qty*type_volume)as liter,
'','','','',
rtrim(hts_no_tran_stock) as inv
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
	inner join meka..mtipe on dts_kode_barang=type_kode
	where dts_product='she' and hts_jenis_spb='ibk5' and hts_tanggal between '2018-04-01' and '2018-04-30'

union all

select 
convert(varchar(10),hts_tanggal,103) as tgl,
'SALES COUNTER_SMG' as nama,
'KOTA SEMARANG' as alamat_3,
'PT. MEKA ADIPRATAMA (CARFIX-TUGU)' as cust,
'06CARTU' as kode,
'10158' as klasifikasi_2,
type_kode_spl_1 as spl_1,
(dts_qty*type_volume)as liter,
'','','','',
rtrim(hts_no_tran_stock) as inv
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
	inner join meka..mtipe on dts_kode_barang=type_kode
	where dts_product='she' and hts_jenis_spb='ibk6' and hts_tanggal between '2018-04-01' and '2018-04-30'

	union all
select 
convert(varchar(10),hts_tanggal,103) as tgl,
'SALES COUNTER_SMG' as nama,
'KOTA SEMARANG' as alamat_3,
'PT. MEKA ADIPRATAMA (CARFIX-TUGU)' as cust,
'06CARTU' as kode,
'10158' as klasifikasi_2,
type_kode_spl_1 as spl_1,
(dts_qty*type_volume)as liter,
'','','','',
rtrim(hts_no_tran_stock) as inv
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
	inner join meka..mtipe on dts_kode_barang=type_kode
	where dts_product='she' and hts_jenis_spb='ibk7' and hts_tanggal between '2018-04-01' and '2018-04-30'

--mekar

select 
convert(varchar(10),hs_tanggal, 103) as tgl,
rtrim(sales_nama) as nama,
rtrim(cust_alamat_3) as alamat_3,
rtrim(cust_nama) as cust,
rtrim(cust_kode) as kode,
rtrim(cust_klasifikasi_2) as klasifikasi_2,
rtrim(type_kode_spl_1) as spl_1,
((ds_qty-ds_qty_retur)*type_volume)as liter,
'','','','',
rtrim(hs_nomor_faktur) as inv
from (
	((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) 
	inner join meka..mcust on hs_customer=cust_kode)
	inner join meka..mtipe on ds_kode_barang=type_kode) 
	left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product='sad'
and hs_cabang='30'
and hs_tanggal between '$dfrom' and '2018-04-30'


-- GAKS

select 
convert(varchar(10),hs_tanggal, 103) as tgl,
rtrim(sales_nama) as nama,
rtrim(cust_alamat_3) as alamat_3,
rtrim(cust_nama) as cust,
rtrim(cust_kode) as kode,
rtrim(cust_klasifikasi_2) as klasifikasi_2,
rtrim(type_kode_spl_1) as spl_1,
((ds_qty-ds_qty_retur)*type_volume)as liter,
'','','','',
rtrim(hs_nomor_faktur) as inv
from (
	((meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) 
	inner join meka..mcust on hs_customer=cust_kode)
	inner join meka..mtipe on ds_kode_barang=type_kode) 
	left join meka..mslsmn on hs_kode_salesman=sales_kode
where ds_kode_product  BETWEEN 'shd' and 'sho'
and hs_cabang between '20' and '22'
and hs_tanggal between '2018-04-01' and '2018-04-30'
