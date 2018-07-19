select top 10 TF_SalesOffice, TF_Document, TF_CreateUser, TF_CreateDate, TF_RecUser, TF_RecDate,TRFD_Faktur
--select top 10 * 
from MEKA..TTRFDOCH inner join MEKA..TTRFDOCD on TF_Document=TRFD_Document
where TRFD_Faktur='303017010352FP'

010118001231FP

select top 10000 * from meka..ttrfdoch inner join meka..TTRFDOCD on TF_Document=TRFD_Document where TF_Document='010118001120TD'      

select top 100000 * from meka..ttrfdoch where tf_recuser='widya' and tf_branch='01' and tf_createuser='mahfud'
select top 10000 * from meka..ttrfdoch where tf_recuser='ngadiono' and tf_branch='30' and tf_createuser='hady'

--update meka..ttrfdoch set tf_recuser='FENDI' from meka..ttrfdoch where tf_recuser='wahyu' and tf_branch='30'
--update meka..ttrfdoch set tf_recuser='WAHYU' from meka..ttrfdoch where tf_recuser='widya' and tf_branch='01' and tf_createuser='mahfud'
--update meka..ttrfdoch set tf_recuser='NUGROHO' from meka..ttrfdoch where tf_recuser='FENDI' and tf_branch='30' and tf_document='303018000352td'
--update meka..ttrfdoch set tf_recuser='ANDAR' from meka..ttrfdoch where tf_recuser='FENDI' and tf_branch='01' and tf_document='010118001980TD'
--update meka..ttrfdoch set tf_recuser='RATNA' from meka..ttrfdoch where tf_recuser='drajat' and tf_branch='01' and tf_document='010116003264TD'
--update meka..ttrfdoch set tf_recuser='WIDYA' from meka..ttrfdoch where tf_recuser='setyo' and tf_branch='01' and tf_createuser='ery' and tf_recdate between '2016-06-15' and '2016-06-21' and 
tf_document='303017001059TD'      

--update meka..ttrfdoch set tf_recuser='FENDI' from meka..ttrfdoch where tf_recuser='ANDAR' and tf_branch='30' and tf_document='303018000206TD'


--cek receive TD berdasarkan FP blm lunas, dll
select * from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
inner join meka..har on trfd_faktur=ar_nomor_bukti and 
tf_company=ar_company
where --tf_recuser='widya' and 
ar_flag_lunas='n' and
AR_Cabang='01' and
ar_salesman='3rk' and
AR_Status_Giro='n' and
AR_Nomor_Bukti='010117041518FP'

--cek receive TD berdasarkan FP blm lunas, dll
select TRFD_Document,TRFD_Faktur,AR_Status_Giro from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
inner join meka..har on trfd_faktur=ar_nomor_bukti and 
tf_company=ar_company
where tf_recuser='abeth' and 
ar_flag_lunas='n' and
AR_Cabang='02'

 




select top 10 * from meka..ttrfdocd where trfd_faktur='303017009696fp' 
and  trfd_document='010217000599TD'

--delete from meka..ttrfdocd where trfd_faktur='010217009965FP' and trfd_document='010217000599TD'

select top 10000 * from meka..ttrfdoch where tf_createuser='mahfud' and year(tf_date)=2017

    
select top 10000 * from meka..ttrfdoch where tf_document='303017000173TD'
select top 10000 * from meka..ttrfdocd where trfd_document='010117000088TD'
select top 10000 * from meka..ttrfdocd where trfd_faktur='010117029062fp' and TRFD_Document='010117002924TD'
--update meka..ttrfdocd set trfd_faktur='010117029082fp' from meka..ttrfdocd where trfd_faktur='010117029062fp' and TRFD_Document='010117002924TD'

select top 10 * from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
where trfd_faktur='303017006140fp'
20353fp dan 20360fp
select top 10000 * from meka..ttrfdoch where tf_recuser='setyo' and tf_branch='01' and tf_createuser='ery' and tf_recdate between '2016-06-15' and '2016-06-21' and 
tf_document='303017000230TD'      


--tf_document='010115002200TD'


select TF_RecUser from meka..ttrfdoch where tf_document='303017001356TD'
select TF_Document from meka..ttrfdoch where TF_RecUser='andar' and TF_Branch='30' order by TF_Document desc

select top 10 * from meka..ttrfdocd where trfd_faktur='303018006157fp'
--mbak widya_01/Nugroho
--update meka..ttrfdocd set trfd_document='010117003268TD' from meka..ttrfdocd where trfd_faktur='010118007770fp' and TRFD_Document='010118000814TD'
--update meka..ttrfdocd set trfd_document='303017001356TD' from meka..ttrfdocd where trfd_faktur='303018000389fp' and TRFD_Document='303018000075TD      ' 
--update meka..ttrfdocd set trfd_document='303017001356TD' from meka..ttrfdocd where trfd_faktur='303018005652fp' and TRFD_Document='303018000765TD' 
   
--fahrul
--update meka..ttrfdocd set trfd_document='010217001548TD' from meka..ttrfdocd where trfd_faktur='010216012627FP' and TRFD_Document='010216000566TD'      
--update meka..ttrfdocd set trfd_document='010117004101TD' from meka..ttrfdocd where trfd_faktur='010115017954FP'      
--update meka..ttrfdocd set trfd_document='303017000230TD' from meka..ttrfdocd where trfd_faktur='303018005649fp' and TRFD_Document='303017001067TD'      

--fendi
--update meka..ttrfdocd set trfd_document='010117000172TD' from meka..ttrfdocd where trfd_faktur='010118002329fp' and TRFD_Document='010118000295TD'      
--update meka..ttrfdocd set trfd_document='303017000173TD' from meka..ttrfdocd where trfd_faktur='303018003102FP' and TRFD_Document='303018000458TD'      

--andar
--update meka..ttrfdocd set trfd_document='010118000874TD' from meka..ttrfdocd where trfd_faktur='010118002329fp' and TRFD_Document='010118000295TD'      
--update meka..ttrfdocd set trfd_document='303018000360TD' from meka..ttrfdocd where trfd_faktur='303018006444FP' and TRFD_Document='303018000841TD'      

pendi meka, [25.05.18 10:02]
303018005649fp

pendi meka, [25.05.18 10:02]
sama

pendi meka, [25.05.18 10:02]
303018005652fp


select top 10 * from meka..har where AR_Nomor_Bukti='010216012627FP' and AR_Flag_Lunas='n'
--update MEKA..HAR set AR_Status_Giro='X' from meka..har where AR_Nomor_Bukti='010216012627FP' and AR_Flag_Lunas='n'




--pindah FP ke td lain biar receivernya ganti
select top 10000 * from meka..tcold inner join meka..ttrfdocd on ddt_nomor_document=trfd_faktur 
inner join meka..ttrfdoch on tf_document=trfd_document
inner join meka..har on ddt_nomor_ar=ar_nomor_ar
where --ddt_nomor_tagihan='010117000397th'and
tf_recuser='andar' and
tf_branch='30'
order by tf_document desc

select top 10000 * from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
where --ddt_nomor_tagihan='010117000397th'and
tf_recuser='fahrul' and
tf_branch='01' 
order by tf_document desc