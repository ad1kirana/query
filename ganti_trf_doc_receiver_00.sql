select top 10 RTRIM(TRFD_Document),RTRIM(TRFD_Faktur) from meka..ttrfdocd where trfd_faktur='303017005546fp' 
and  trfd_document='010217000599TD'

select * from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
inner join meka..har on trfd_faktur=ar_nomor_bukti and tf_company=ar_company
where tf_recuser='widya' and ar_flag_lunas='n'
and TF_Branch='30'
and ar_salesman='BAM'

010117026590fp
010117026799fp
010117026591fp

303017005546fp

--pendi_meka
--update meka..ttrfdocd set trfd_document='010117002821TD' from meka..ttrfdocd where trfd_faktur='010117003327fp' 
and  trfd_document='010117000410TD    '
--update meka..ttrfdocd set trfd_document='303017001093TD' from meka..ttrfdocd where trfd_faktur='303017006140fp' 
and  trfd_document='303017001067TD'

--mbak_widya
--update meka..ttrfdocd set trfd_document='010114000336TD' from meka..ttrfdocd where trfd_faktur='010117026591fp' 
and  trfd_document='010117002732TD'  
--update meka..ttrfdocd set trfd_document='303016000452TD' from meka..ttrfdocd where trfd_faktur='303017005546fp' 
and  trfd_document='303017000999TD'

--andar_mekar
--update meka..ttrfdocd set trfd_document='303017001067TD' from meka..ttrfdocd where trfd_faktur='303017006040fp' 
and  trfd_document='303017001068TD'
      
--punya fahrul
--update meka..ttrfdocd set trfd_document='010217000857TD' from meka..ttrfdocd where trfd_faktur='010217009965FP' 
and  trfd_document='010117000410TD    