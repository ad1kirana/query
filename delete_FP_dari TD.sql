
select top 100 trfd_document,trfd_faktur,TF_FlagReceive,ar_status_giro,ar_flag_lunas
--select * 
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document inner join meka..har on trfd_faktur=ar_nomor_bukti
where trfd_document='01021700475TD'    
select top 100 * from meka..ttrfdocd where trfd_document='010216000566TD ' --and trfd_faktur like '%43910fp'

select top 100 * from meka..ttrfdoch where tf_document='303018000765TD'
select top 100 * from meka..ttrfdoch where tf_document='010217001089TD'    
select top 100 * from meka..ttrfdocd where trfd_faktur='0102170020853FP' and trfd_document='010218000436TD'
select top 100 * from meka..ttrfdocd where trfd_faktur='010118000375FP' and trfd_document='010217000955TD'
  
  
303018000989FP // 303018007628FP

--delete from meka..ttrfdocd where trfd_faktur='010218012638FP' and trfd_document='010218000798TD'
--delete from meka..ttrfdocd where trfd_faktur='010218012688FP' and trfd_document='010218000789TD'
--delete from meka..ttrfdocd where trfd_faktur='010218010713FP' and trfd_document='010218000703TD'
--delete from meka..ttrfdocd where trfd_faktur='010218010710FP' and trfd_document='010218000703TD'
--delete from meka..ttrfdocd where trfd_faktur='010118021389FP' and trfd_document='010118002194TD'

--update meka..ttrfdoch set tf_totitem='41' from meka..ttrfdoch where tf_document='010217001008TD'
--update meka..ttrfdoch set tf_totitem='35' from meka..ttrfdoch where tf_document='010217000760TD'

--update meka..ttrfdocd set trfd_faktur='010117011392FP'  from meka..ttrfdocd where trfd_faktur='010117011382fp' and trfd_document='010117011392FP'
--update meka..ttrfdocd set trfd_document='010117001159TD'  from meka..ttrfdocd where trfd_faktur='010117011392FP' and trfd_document='010117011392FP'

select top 100 * from meka..ttrfdocd where trfd_document='010217001132TD'
select top 100 * from meka..ttrfdocd where trfd_faktur='010117013788FP'
--update meka..ttrfdocd set trfd_faktur='010117013789FP' from meka..ttrfdocd where trfd_document='010117001477TD' and trfd_faktur='010117013788FP'

010218000798TD FAKTUR 010218012638FP  DIDELETE  makasih