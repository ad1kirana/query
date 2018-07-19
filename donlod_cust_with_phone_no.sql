select cust_cabang,rtrim(cust_kode) as kode,rtrim(cust_nama) as nama,rtrim(cust_alamat_1) as alamat1,rtrim(cust_alamat_2) as alamat2,rtrim(cust_alamat_3) as city_area,rtrim(cust_kota) as kota,cust_telefon,mobileno,CUST_HP, cust_contact_person,cust_status_cust,cust_klasifikasi_2,cust_createdate, cust_start_cus,CUST_Chart_of_Account,CUST_Kode_AFFCO,CUST_Nomor_IDPemilik,CUST_NamaOwner,CUST_TelpOwner,CUST_AlamatOwner,CUST_BussinesRelation
--select top 10 * 
from meka..mcust where
--cust_kode like '04va%'
--cust_kode_delivery='62'
--and 
cust_cabang between '02' and '02'  
and cust_status_cust <>'1'
and cust_createdate between '2017-04-29' and '2018-06-07'

and cust_kode_delivery='05'

and year(cust_createdate)=2017


select cust_cabang,rtrim(cust_kode) as kode,rtrim(cust_nama) as nama,rtrim(cust_alamat_1) as alamat1,rtrim(cust_alamat_2) as alamat2,rtrim(cust_alamat_3) as city_area,rtrim(cust_kota) as kota,cust_telefon,mobileno,cust_contact_person,cust_status_cust,cust_klasifikasi_2,cust_createdate, cust_start_cus,cust_kode_delivery,no_npwp
--select top 10 * 
from meka..mcust left join meka..mapjk on cust_kode=kode_customer where
--cust_kode like '04va%'
--cust_kode_delivery='62'
--and 
cust_cabang between '03' and '08'  
and cust_status_cust <>'1'
and cust_createdate >= '2016-06-01'

select cust_cabang,rtrim(cust_kode) as kode,rtrim(cust_nama) as nama,rtrim(cust_alamat_1) as alamat1,rtrim(cust_alamat_2) as alamat2,rtrim(cust_alamat_3) as city_area,rtrim(cust_kota) as kota,cust_telefon,mobileno,cust_contact_person,cust_status_cust,cust_klasifikasi_2,cust_createdate, cust_start_cus,cust_kode_delivery,no_npwp
--select top 10 * 
from meka..mcust inner join meka..mapjk on cust_kode=kode_customer where
--cust_kode like '04va%'
--cust_kode_delivery='62'
--and 
cust_cabang between '03' and '08'  
and cust_status_cust ='1'
and cust_createdate >= '2016-06-01'

select top 10 * from meka..mapjk

select cust_cabang,rtrim(cust_kode) as kode,rtrim(cust_nama) as nama,rtrim(cust_alamat_1) as alamat1,rtrim(cust_alamat_2) as alamat2,rtrim(cust_alamat_3) as city_area,rtrim(cust_kota) as kota,cust_telefon,mobileno,cust_contact_person,cust_status_cust,cust_createdate, --cust_kode_delivery,no_npwp
dlv_nama
from meka..mcust inner join meka..mdlvry on cust_kode_delivery=dlv_kode_delivery and cust_cabang=dlv_cabang where
cust_cabang between '30' and '30'  and cust_status_cust <>'1'




select cust_cabang,rtrim(cust_kode) as kode,rtrim(cust_nama) as nama,rtrim(cust_alamat_1) as alamat1,rtrim(cust_alamat_2) as alamat2,rtrim(cust_alamat_3) as city_area,rtrim(cust_kota) as kota,cust_telefon,mobileno,cust_contact_person,cust_status_cust,cust_no_npwp,nama,alamat1,alamat2,kota,no_npwp
from meka..mcust left join meka..mapjk on cust_kode=kode_customer where
 --cust_kode like '11asmo%'

cust_cabang between '20' and '20'  and cust_status_cust <>'1'

select * from meka..mdlvry where dlv_cabang='02'

--cut_berkredit_limit
select a.cust_cabang,rtrim(a.cust_kode) as kode,rtrim(a.cust_nama) as nama,rtrim(a.cust_alamat_1) as alamat1,rtrim(a.cust_alamat_2) as alamat2,rtrim(a.cust_alamat_3) as city_area,rtrim(a.cust_kota) as kota,a.cust_telefon,a.mobileno,a.cust_contact_person,a.cust_status_cust,a.cust_klasifikasi_2,a.cust_createdate,a.cust_start_cus,a.cust_kode_delivery
--select top 10 * 
from meka..mcust a inner join meka..mclimit b on a.cust_kode=b.cust_code where
--cust_kode like '04va%'
--cust_kode_delivery='62'
--and 
a.cust_cabang between '03' and '08'  
and a.cust_status_cust <>'1'
