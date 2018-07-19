select top 10 * from meka..mcust where cust_kode='a-00001342'
select top 10 * from meka..mcust where cust_kode='051300031c'
select top 10 * from meka..mcust where cust_kode='041300377c'
select top 10 * from meka..mcust where cust_kode='061500788c'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='a-00001342'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='051300031c'
--update meka..mcust set cust_status_cust='1' from meka..mcust where cust_kode='041300377c'
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='061500788c'
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='031600475c'
--update meka..mcust set cust_status_cust='0' from meka..mcust where cust_kode='051600270c'

select top 100 * from meka..mcmbl where cust_kode='a-00001342'
select top 100 * from meka..mcmbl where cust_kode='051300031c'
select top 100 * from meka..mcmbl where cust_kode='041300377c'
select top 100 * from meka..mcmbl where cust_kode='061500788c'

select top 10000 * from meka..tslsh where hs_customer='a-00001342' and year(hs_tanggal)=2015 and hs_cabang='03'
order by hs_tanggal desc

B 1795 TYI