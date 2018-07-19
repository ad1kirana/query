select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2016'
and led_fiscalmonth='06'
and led_cabang='05'
--and led_postaccount like  '300000001' and '300400000'
and led_postaccount like  '300%'
order by led_postaccount asc


select hs_cabang,hs_customer,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,(hs_nilai_disc4_after*1.1)as amount,hs_nomor_faktur,hs_tanggal
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where
hs_tanggal between '2016-06-01' and '2016-06-30'
and hs_cabang between '05' and '05'
--and cust_nama like '%meka %'
order by hs_nomor_faktur asc




select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,--hs_nomor_ppn
hs_keterangan,ds_qty_retur--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2016-06-01' and '2016-06-30'
and hs_cabang between '05' and '05'
--and cust_nama like '%meka %'
order by hs_nomor_faktur asc

select top 10 * from meka..tslsd where ds_nomor_faktur='010316006634fp' and ds_kode_barang='MOUNTING-081'        
select top 10 * from meka..tslsd where ds_nomor_faktur='010316006634fp' and ds_kode_barang='MOUNTING-081'        
select top 10 * from meka..tslsd where ds_nomor_faktur='010316006634fp' and ds_kode_barang='MOUNTING-082'        

--update meka..tslsd set ds_tot_harga_pokok='570000' from meka..tslsd where ds_nomor_faktur='010316006634fp' and ds_kode_barang='MOUNTING-081'  
--update meka..tslsd set ds_tot_harga_pokok='320000' from meka..tslsd where ds_nomor_faktur='010316006634fp' and ds_kode_barang='MOUNTING-081'    
--update meka..tslsd set ds_tot_harga_pokok='84000' from meka..tslsd where ds_nomor_faktur='010516005871FP' and ds_kode_barang='90043-85149'
select top 10 * from meka..tslsd where ds_nomor_faktur='010516005871FP' and ds_kode_barang='90043-85149'

select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,--hs_nomor_ppn
hs_keterangan,ds_qty_retur--select sum (hs_nilai_disc4_after) 
--select sum(ds_tot_harga_pokok)
--select sum(ds_qty_retur)
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2016-06-01' and '2016-06-30'
and hs_cabang between '05' and '05'


select hs_cabang,hs_customer,hs_nomor_faktur,hs_tanggal,rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,ds_sel_cgsdbp,hs_keterangan,ds_qty_retur
--select sum (ds_sel_cgsdbp)
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
hs_tanggal between '2016-06-01' and '2016-06-30'
and hs_cabang between '05' and '05'
and ds_tot_harga_pokok='0'
and ds_kode_product<>'oth'
