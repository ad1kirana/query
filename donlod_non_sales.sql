select top 1000 hts_cabang,hts_salesoffice,hts_no_tran_stock,
hts_tanggal,hts_kode_warehous,hts_jenis_spb,hts_kode_customer,rtrim(cust_nama),rtrim(cust_kota)dts_kode_barang,dts_qty,rtrim(hts_keterangan)
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
--inner join meka..mcust on hts_kode_customer=cust_kode
where hts_jenis_spb like 'ibk%' and hts_cabang='01'
and hts_tanggal between '2017-01-01' and '2017-03-31'
and dts_kode_barang like 'om6%'

select top 1000 hts_cabang,hts_salesoffice,hts_nomor_spb,hts_no_tran_stock,
hts_tanggal,hts_kode_warehous,hts_jenis_spb,dts_kode_barang,dts_qty,rtrim(hts_keterangan)
from (meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock)
where hts_jenis_spb like 'ibk%' and hts_cabang='01'
and hts_tanggal between  '2017-01-01' and '2017-03-31'
and dts_kode_barang like 'om6%'

--select top 10 * from meka..ttsh where hts_no_tran_stock='010114001123ts'
select top 10 * from meka..hledger