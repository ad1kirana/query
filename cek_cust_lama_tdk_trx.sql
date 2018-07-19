select distinct t.hs_cabang, t.hs_customer, c.CUST_CREDITLIMIT, r.MaxTime
from(
  select hs_customer, MAX(hs_tanggal) as MaxTime
  from meka..tslsh
  group by hs_customer
) r
inner join meka..tslsh t on t.hs_customer=r.hs_customer and t.hs_tanggal = r.MaxTime
inner join MEKA..MCLIMIT c on t.hs_customer=c.cust_code
where t.hs_cabang = '30' and c.cust_creditlimit>'1'
and t.HS_Tanggal < '2015-03-01'


union all
select distinct t.hs_cabang, t.hs_customer, c.CUST_CREDITLIMIT, r.MaxTime
from(
  select hs_customer, MAX(hs_tanggal) as MaxTime
  from meka..tslsh
  group by hs_customer
) r
inner join meka..tslsh t on t.hs_customer=r.hs_customer and t.hs_tanggal = r.MaxTime
inner join MEKA..MCLIMIT c on t.hs_customer=c.cust_code
where t.hs_cabang between '01' and '02' and c.cust_creditlimit>'1'
and t.HS_Tanggal < '2015-03-01'


order by t.hs_cabang asc , t.hs_customer asc