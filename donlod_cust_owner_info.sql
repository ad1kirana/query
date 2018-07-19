select * from MEKA..MCUST where CUST_Cabang between '03' and '08' and CUST_Status_Cust <>'1' 
and CUST_CreateDate < '2018-04-25'

select * from MEKA..MCUST where CUST_Cabang between '01' and '02' and CUST_Status_Cust <>'1' 
and CUST_CreateDate < '2018-04-25'
union all
select * from MEKA..MCUST where CUST_Cabang between '20' and '35' and CUST_Status_Cust <>'1' 
and CUST_CreateDate < '2018-04-25'


select top 3 CUST_CompanyCode,CUST_Cabang,CUST_Kode,CUST_Nama,
CUST_Alamat_1,CUST_Alamat_2,CUST_Alamat_3, CUST_Kota,CUST_Telefon, CUST_Kode_Pos,mobileno,CUST_HP,
CUST_Nomor_IDPemilik,CUST_NamaOwner,CUST_TelpOwner,CUST_AlamatOwner,CUST_BussinesRelation,CUST_Status_Cust
 from MEKA..MCUST
  where --CUST_Nomor_IDPemilik like '62220042%'
  CUST_CreateDate <'2018-01-20' and CUST_Cabang <>'20'
  CUST_TelpOwner <>''

select CUST_CompanyCode,CUST_Cabang,CUST_Kode,CUST_Nama,
CUST_Alamat_1,CUST_Alamat_2,CUST_Alamat_3, CUST_Kota,CUST_Telefon, CUST_Kode_Pos,mobileno,CUST_HP,
CUST_Nomor_IDPemilik,CUST_NamaOwner,CUST_TelpOwner,CUST_AlamatOwner,CUST_BussinesRelation,CUST_Status_Cust
 from MEKA..MCUST
  where CUST_Nomor_IDPemilik like'3%'
  
  select * from MEKA..MCUST where CUST_Nomor_IDPemilik like '62220042%'
