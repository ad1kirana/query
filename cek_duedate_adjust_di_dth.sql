select top 10 * from meka..tcold

select top 10000 ddt_nomor_tagihan,ddt_kode_cust,ddt_nomor_document,ddt_due_date,ar_due_date,ar_due_date_adjust
from meka..har inner join meka..tcold on ar_nomor_bukti=ddt_nomor_document
where ar_due_date <> ar_due_date_adjust and ar_cabang='01'
and ar_tanggal_awal >='2014-01-01'
order by ar_tanggal_awal asc

select top 10000 ddt_nomor_tagihan,ddt_kode_cust,ddt_nomor_document,ddt_due_date,ar_due_date,ar_due_date_adjust
from meka..har inner join meka..tcold on ar_nomor_bukti=ddt_nomor_document
where ar_due_date <> ar_due_date_adjust and ar_cabang='01'
and ar_tanggal_awal between '2013-01-01' and '2013-01-31'
order by ar_tanggal_awal asc