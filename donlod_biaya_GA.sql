--biaya2
select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2018' --AND led_fiscalmonth between '08' and '08'
and led_fiscalmonth between '01' and '03'
and led_cabang<>'20'
and led_postaccount between '709000002' and '728000000'
order by led_postaccount asc


--perjalanan ini.....
select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_fiscalyear='2018' --AND led_fiscalmonth between '08' and '08'
and led_fiscalmonth between '01' and '03' 
and led_cabang<>'20'
and led_postaccount between '700114000' and '700999999'
order by led_postaccount asc

--trx_meka_di_CARfix
select top 10000 hs_cabang,hs_salesoffice,hs_nomor_faktur,hs_tanggal,hs_customer,hs_qq,nama,ds_kode_product,ds_kode_barang,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,ds_amount_d4,hs_last_km,paytipe,ds_qty_retur,hs_keterangan,ds_tot_harga_pokok,(ds_amount-ds_amount_d4) as nett
from (meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur) inner join meka..mapjk on hs_customer=kode_customer
inner join meka..paypoint on hs_nomor_faktur=payinvoiceno and hs_company=paycompany and hs_cabang=paybranch and hs_salesoffice=paysalesoffice
where nama like '%meka%' and 
year(hs_tanggal)=2018
and month(hs_tanggal)between '01' and '03'
and hs_cabang between '03' and '08'


select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,(ds_amount-ds_amount_d4) as nett, --hs_nomor_ppn
hs_keterangan--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
year(hs_tanggal)=2018
and month(hs_tanggal)between '01' and '03'
and hs_cabang between '01' and '02'
and cust_nama like '%meka %'
union all
select hs_cabang,hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product) as prod,rtrim(ds_kode_barang) as part_kode,type_nama,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,(ds_amount-ds_amount_d4) as nett,--hs_nomor_ppn
hs_keterangan--select sum (hs_nilai_disc4_after) 
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
year(hs_tanggal)=2018
and month(hs_tanggal)between '01' and '03'
and hs_cabang between '30' and '35'
and cust_nama like '%meka %'
and CUST_Kode <> '05carfix' and  CUST_Kode <> '06carfix' and CUST_Kode <> '06carten' and CUST_Kode <> '06carwal' and CUST_Kode <> '06mslo' and CUST_Kode <> '37carfix'
order by hs_nomor_faktur asc
