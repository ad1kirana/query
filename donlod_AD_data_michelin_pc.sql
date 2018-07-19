select 
distinct
RTRIM(CUST_Nama) as CompanyName, 
RTRIM(CUST_Alamat_1) as Address1,
RTRIM(CUST_Alamat_2) as Address2,
RTRIM(CUST_Alamat_3) as Address3,
RTRIM(CUST_Kota) as City,
RTRIM(CUST_Kode_Pos) as PostCode,
'Indonesia' as _State,
RTRIM(CUST_TelpOwner) as CompanyRegNo,
'' as GSTRegNo,
RTRIM(CUST_Contact_Person) as ContactPerson,
'' as EmailAddress,
RTRIM(CUST_Telefon) as TelNo,
'' as FaxNo,
RTRIM(mobileno) as SMSMobile,
'' as MAINSUBDIRECT,
'' as ParentCompany,
RTRIM(CUST_Nama) as RDCompanyName, 
'' as remarks
--top 10 *
from MEKA..TSLSH 
inner join MEKA..TSLSd on HS_Nomor_Faktur=ds_nomor_faktur
inner join MEKA..MCUST on HS_Customer=CUST_Kode
inner join MEKA..MTIPE on DS_Kode_barang=TYPE_KODE
where HS_Cabang='01'
and HS_Tanggal > '2017/01/01'
and DS_Kode_Product='om6'
and cust_kode='05BARITO'



order by CompanyRegNo

02AKJ
04HANMO
04RP
11WG
05BARITO


select HS_Customer from MEKA..TSLSH where HS_Nomor_Faktur='010118020533FP'