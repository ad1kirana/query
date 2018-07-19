select * from meka..hledger where led_cabang='01' and led_postaccount='110200000' and led_fiscalmonth='03' and led_fiscalyear='2014'
select top 10 * from meka..mcoa where idt_description like '%a/r trade other%'


select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_cabang='01' and led_postaccount='110200000' and led_fiscalmonth='03' and led_fiscalyear='2014'


select hs_nomor_faktur,hs_nilai_total from meka..tslsh where hs_cabang='01' and hs_tanggal between '2014-03-01' and '2014-03-31' order by hs_nomor_faktur asc
select rtrim(hrc_no_retur),hrc_nilai_total_retr from meka..trtrh where hrc_tanggal between '2014-03-01' and '2014-03-31' and hrc_cabang='01'
select rtrim(nodocument),nilai_selisih from meka..clrar_hst where clr_cabang='01' and tanggal_clr  between '2014-03-01' and '2014-03-31'
select rtrim(hbrv_nomor_brv),hbrv_nilai_total
from meka..tbrvh where hbrv_tgl between '2014-03-01' and '2014-03-31' 

select led_cabang,led_postaccount,idt_description,led_trandate,led_tranreff,led_trandescription,led_amount,led_indicator
--select top 1000 * 
from meka..hledger inner join meka..mcoa
on led_postaccount=idt_identifiercode
and led_companycode=idt_company
where led_cabang='01' and led_postaccount='110200000' and led_fiscalmonth='03' and led_fiscalyear='2014'
and led_amount='45252240'

select top 10 * from meka..tslsh where hs_nomor_faktur='010114006989FP'
select top 10 * from meka..har where ar_nomor_bukti='010114006989FP'