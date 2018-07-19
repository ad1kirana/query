select top 10 * from meka..har where ar_kode_cust='051301189C' and ar_flag_lunas='n'
select top 10 * from meka..har where ar_kode_cust='061501313C' and ar_flag_lunas='n'
update meka..mpart set part_stock_bisa_jual='32', part_stock_dn='0',part_stock_total='32'  from meka..mpart where part_kode_wh='21' and part_kode_group='SHE' and part_kode='SHE-HX7-10W-40(1LT)' and part_stock_total='32' and part_stock_bisa_jual='34'
update meka..mpart set part_stock_bisa_jual='8', part_stock_dn='0',part_stock_total='8'  from meka..mpart where part_kode_wh='21' and part_kode_group='SHE' and part_kode='SHE-HX7-10W-40(4LT)' and part_stock_total='8' and part_stock_bisa_jual='9'

select top 10 cust_status_cust from meka..mcust where cust_kode='031603258c'
select top 10 cust_status_cust from meka..mcust where cust_kode='051600621C '

select top 10 cust_cabang,cust_kode,cust_nama,cust_alamat_1,cust_status_cust,no_npwp from meka..mcust
inner join meka..mapjk on cust_kode=kode_customer where cust_nama like '%rentalindo%'

select top 10 * from meka..mapjk
select top 10 * from meka..har where ar_flag_lunas='n'and ar_kode_cust='031601314C'
select top 10 * from meka..har where ar_kode_cust='051300119C' and ar_flag_lunas='n'

--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='031601355C'

select top 10 cust_status_cust from meka..mcust where cust_kode='U-00000483'
select top 10 cust_status_cust from meka..mcust where cust_kode='051401107C'
select top 10 cust_status_cust from meka..mcust where cust_kode='051600621C'

P-00000413
P-00000414
051300044C
051300783C
061600351C
select top 10 cust_status_cust from meka..mcust where cust_kode='P-00000413'
select top 10 cust_status_cust from meka..mcust where cust_kode='P-00000414'
select top 10 cust_status_cust from meka..mcust where cust_kode='051300044C'
select top 10 cust_status_cust from meka..mcust where cust_kode='051300783C'
select top 10 cust_status_cust from meka..mcust where cust_kode='061600351C'

select top 1000 * from meka..har where ar_flag_lunas='n'and ar_kode_cust='P-00000413'
select top 1000 * from meka..har where ar_flag_lunas='n'and ar_kode_cust='P-00000414'
select top 1000 * from meka..har where ar_flag_lunas='n'and ar_kode_cust='051300044C'
select top 1000 * from meka..har where ar_flag_lunas='n'and ar_kode_cust='051300783C'
select top 1000 * from meka..har where ar_flag_lunas='n'and ar_kode_cust='061600351C'


select top 10 * from meka..mclimit where cust_code='P-00000025'051300488C

--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='051300044C'
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='051300138C'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='P-00000413'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='061600521C'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='MEKA1'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='MEKA2'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='Meka3'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='meka4'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='meka5'
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='meka6'

