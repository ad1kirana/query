select * from meka..mafco
select top 10 * from meka..mcust where cust_kode_affco='006'

select hs_customer,cust_nama,cust_alamat_1,hs_nilai_disc4_after,(hs_nilai_disc4_after*0.1) as ppn,'10',hs_nomor_faktur,hs_tanggal,hs_kode_salesman,
rtrim(ds_kode_product)as prod,rtrim(ds_kode_barang) as kode_barang,rtrim(type_nama)as nama_barang,ds_qty,ds_harga_jual,ds_disc1,ds_disc2,ds_disc3,ds_amount,
ds_amount_d4,ds_tot_harga_pokok,ds_qty_retur
--select sum (hs_nilai_disc4_after) 
from meka..har inner join meka..tslsh on ar_nomor_bukti=hs_nomor_faktur
inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
inner join meka..mtipe on ds_kode_barang=type_kode inner join meka..mcust on hs_customer=cust_kode
where
ar_flag_lunas='n'
and hs_cabang between '03' and '08'
and cust_kode_affco <> '000'
order by hs_nomor_faktur asc


select top 1000 * from meka..mcust where cust_kode_affco<>'000' and cust_chart_of_account ='110200000'
