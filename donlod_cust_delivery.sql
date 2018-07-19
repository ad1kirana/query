select cust_kode,cust_nama,cust_alamat_1,cust_alamat_2,cust_kota,cust_kode_area,area_nama,cust_kode_delivery,dlv_nama,cust_status_cust from
meka..mcust a,meka..marea b, meka..mdlvry c 
where 
a.cust_companycode=b.area_company and 
a.cust_kode_area=b.area_kode and
a.cust_companycode=c.dlv_company and
a.cust_cabang=c.dlv_cabang and
a.cust_kode_delivery=c.dlv_kode_delivery and
b.area_company=c.dlv_company and
cust_cabang='02'
and cust_status_cust <>'1'
select top 10 * from meka..mdlvry

select top 10 * from meka..mcust