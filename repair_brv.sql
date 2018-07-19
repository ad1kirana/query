select top 10 * from meka..tbrvh where hbrv_nomor_brv='010118002175br'
1018507
select top 100 * from meka..tbrvd where dbrv_kode_brv='010118002175br'
select top 100 * from meka..tbrvd inner join meka..ttrmtgd on dbrv_nomor_document=dtt_nomor_terima
where dbrv_kode_brv='010117000343br'

select top 100 * from meka..tbrvd inner join meka..ttrmtgd on dbrv_nomor_document=dtt_nomor_terima
where dbrv_kode_brv='010117000343br'

select top 10 * from meka..tbrvh where hbrv_nomor_brv between '010117000343br' and '010117000348br' 
select top 10 * from meka..tbrvd where dbrv_kode_brv='010117000343br'


010117000098PG      

select top 100 * from meka..tbrvd where dbrv_nomor_document='303014004751PK'
select top 100 * from meka..tbrvd where dbrv_nomor_document='303014004752PK'
select top 100 * from meka..tbrvd where dbrv_nomor_document='303014004753PK'
select top 100 * from meka..tbrvd where dbrv_nomor_document='303014004756PK'
select top 100 * from meka..tbrvd where dbrv_nomor_document='303014004762PK'      

select top 10 * from meka..tbrvh where hbrv_nomor_brv='303014001331br' and hbrv_nilai_total='1018507'
--update meka..tbrvh set hbrv_nilai_total='545850' from meka..tbrvh where hbrv_nomor_brv='303014001331br' and hbrv_nilai_total='1018507'

tgrd 
select top 10 * from meka..TTRMTGD
select top 10 * from meka..TTRMTGh where htt_nomor_terima='303014004751PK'
--update meka..ttrmtgh set htt_flag_brv_cash='N' from meka..TTRMTGh where htt_nomor_terima='303014004751PK'
--update meka..ttrmtgh set htt_flag_posting='N' from meka..TTRMTGh where htt_nomor_terima='303014004751PK'
--update meka..ttrmtgh set htt_flag_posting='N',htt_flag_brv_cash='N' from meka..TTRMTGh where htt_nomor_terima='303014004762PK'