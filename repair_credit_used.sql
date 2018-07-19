select * from meka..mclimit where cust_cabang <> '20'
and cust_creditlimit >='100000' and cust_creditused >'0'


T-00000266

select sum(ar_nilai_total-ar_nilai_sudah_cair) from meka..har where ar_kode_cust='P-00000551' and ar_flag_lunas='n'
select top 10 * from meka..mclimit where cust_code='P-00000551'
--update meka..mclimit set cust_creditused='3474502' from meka..mclimit where cust_code='P-00000551' and cust_cabang=''


select top 10 * from meka..mclimit where cust_code='61GRACE' and cust_cabang='08'
--delete from meka..mclimit where cust_code='T-00000266' and cust_cabang='08'
select top 10 * from meka..har where ar_kode_cust='61GRACE' 
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='61GRACE'
