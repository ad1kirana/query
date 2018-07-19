
select AR_Cabang,AR_Kode_Cust,sum((AR_Nilai_Total-AR_Nilai_Sudah_Cair)) as sisa_ar,CUST_CREDITUSED 
from MEKA..HAR
inner join MEKA..MCLIMIT on AR_Kode_Cust=CUST_Code where AR_Flag_Lunas='N'
--and CUST_CREDITLIMIT>'0'
group by f.AR_Cabang,f.AR_Kode_Cust,f.CUST_CREDITUSED