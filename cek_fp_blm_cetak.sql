select top 1000 hs_nomor_faktur,hs_tanggal,hs_counter_cetak,trfd_document,hs_creator,hs_warehouse
from meka..tslsh left join ttrfdocd on hs_nomor_faktur=trfd_faktur where --hs_counter_cetak='0' and
hs_tanggal between '2017-02-07' and '2017-02-07'
order by hs_counter_cetak asc

select top 10 * from meka..ttrfdocd