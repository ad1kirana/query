select top 10 * from meka..tbrvh where hbrv_nomor_brv between'010115006448br' and '010115006450br'

select top 10 * from meka..t

select *
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
inner join meka..tgrd on dpg_nomor_giro=dg_nomor_giro and hg_company=dg_company and hg_cabang=dg_cabang
where hbrv_nomor_brv between'303017002170BR' and '303017002170BR'

