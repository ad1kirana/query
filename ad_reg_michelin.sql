select rtrim(cust_kode) as cust,
RTRIM(cust_nama) as nama,
rtrim(cust_alamat_1) as alamat,
RTRIM(cust_kota) as kota,
rtrim(cust_telpOwner) as id
from 
MEKA..MCUST
inner join MEKA..tslsh on hs_customer=cust_kode
inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur 
where 
HS_Cabang='01' 
and HS_Tanggal between '2018-06-01' and '2018-06-30'
and dS_Kode_Product = 'om6'
and  (cust_telpOwner not like '62220042%' or cust_telpOwner is null)
union
select rtrim(cust_kode) as cust,
RTRIM(cust_nama) as nama,
rtrim(cust_alamat_1) as alamat,
RTRIM(cust_kota) as kota,
rtrim(cust_telpOwner) as id
from 
MEKA..MCUST
inner join meka..trtrh on hrc_kode_cust=CUST_Kode
inner join MEKA..trtrd on hrc_no_retur=drc_Nomor_retur 
inner join meka..mtipe on drc_kode_barang=type_kode 
WHERE 
HRC_Cabang='01' 
and HRC_Tanggal between '2018-06-01' and '2018-06-30'
and TYPE_KODE_GROUP='om6' 
and  (cust_telpOwner not like '62220042%' or cust_telpOwner is null)