select * from meka..mcust where cust_cabang='30' and cust_kode_area='40'

select top 100 * from meka..marea where area_company='30' and area_ko

select * from meka..mcust where cust_cabang='30' and cust_kode like '30-pwt%'
select cust_kode,cust_qq,cust_nama,cust_alamat,cust_kota,cust_defaultwh,dlv_nama from meka..mcqq inner join meka..mdlvry on cust_delivery=dlv_kode_delivery where cust_kode like '30-%' and cust_cabang='30'
 and cust_area
 
select top 10 * from meka..mdlvry
select top 10 * from meka..mcqq
