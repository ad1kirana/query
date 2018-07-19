select cust_kode,cust_nama,cust_alamat_1,cust_alamat_2,cust_alamat_3,cust_kota,cust_klasifikasi_2,cust_createdate,cust_telefon,cust_contact_person,mobileno,cust_status_cust,area_nama
from meka..mcust inner join meka..marea on cust_kode_area=area_kode and cust_companycode=area_company where cust_cabang='35' and cust_status_cust <>'1'
select top 10 * from meka..mcust
