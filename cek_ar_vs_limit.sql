select cust_code,cust_creditlimit,cust_creditused,(cust_creditlimit-cust_creditused) as sisa_limit,
(select sum(ar_nilai_total-ar_nilai_sudah_cair) from meka..har where ar_flag_lunas='n' and ar_kode_cust=cust_code) as total_ar
from meka..mclimit
where cust_creditlimit>'0'
and cust_cabang <> '20'