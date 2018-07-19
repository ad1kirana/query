select top 10 * from meka..tgrh where hg_nomor_giro='733572'
select top 10 * from meka..tgrd where dg_nomor_giro='733572'
select top 10 * from meka..tgrh where hg_nomor_giro like '%477162%'
select top 3 * from meka..tcgrd where dpg_nomor_giro='TFS12/07/17         '
select top 3 * from meka..tcgrh where hpg_nomor_pencairan='010118000439PG      '
select top 3 * from meka..tcgrh where hpg_nomor_pencairan='010117000065PG'

select hg_status_giro from meka..tgrh inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro where hg_nomor_giro='010118000439PG      '
select hg_status_giro from meka..tgrh where hg_nomor_giro='202073              '
--update meka..tgrh set hg_status_giro='1' from meka..tgrh where hg_nomor_giro='202073              '


select top 1000 * from meka..tgrh where hg_no_refference='303014001424TH'

select top 100 * from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv where hbrv_nomor_brv='010118002175br'
select top 3 * from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv where dbrv_nomor_document='010118000439PG'
select top 3 * from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv where dbrv_nomor_document='303017000392PG      '
select top 3 * from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv where dbrv_nomor_document='010117000065PG'

select top 3 * from meka..tcgrd where dpg_nomor_pencairan='010118000439PG      '
select top 3 * from meka..tcgrh where hpg_nomor_pencairan='010117000098PG'
select top 3 * from meka..tcgrh where hpg_nomor_pencairan='010117000099PG'

select top 3 * from meka..tcgrh
select top 10 * from meka..har where ar_nomor_bukti='303014007495fp'

select top 10 * from MEKA..HLEDGER where LED_TranReff='010117011990BR'