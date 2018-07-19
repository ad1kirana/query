select rtrim(a.cust_code),a.cust_cabang,a.CUST_CREDITLIMIT
from MEKA..MCLIMIT a  inner join MEKA..MCUST b on a.CUST_Code=b.CUST_Kode
where b.CUST_Status_Cust<>'1' and a.CUST_Cabang between '01' and '02'