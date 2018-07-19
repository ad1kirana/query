select cust_code,cust_company,cust_cabang,cust_creditlimit,cust_creditused from meka..mclimit where cust_cabang='04'
select ar_cabang,ar_kode_cust,ar_nomor_bukti,ar_nilai_dokumen,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair from meka..har
where ar_cabang='04'
and ar_flag_lunas <>'y'

select cust_code,cust_company,cust_cabang,cust_creditlimit,cust_creditused  from meka..mclimit where cust_cabang='03'
and cust_creditused='0'and cust_creditlimit < '5000001'

--delete from meka..mclimit where cust_cabang='03' and cust_creditused='0'and cust_creditlimit < '5000001'
