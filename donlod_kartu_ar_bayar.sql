select rtrim(kar_no_reff) as faktur,kar_tanggal, kar_amount from meka..hkar where kar_sifat_trn='-' and kar_tanggal between '2016-11-01' and '2016-11-30' and kar_cabang between '01' and '02'
select * from meka..hkar where 
--kar_tanggal between '2016-11-01' and '2016-11-30' and 
kar_cabang between '01' and '02'
and kar_no_reff='010115013654FP'
select rtrim(kar_no_reff) as faktur,kar_tanggal, kar_amount from meka..hkar where kar_sifat_trn='-' and kar_tanggal between '2016-11-01' and '2016-11-30' and kar_cabang between '30' and '35'
