select hbrv_nomor_brv,dg_nomor_giro,hbrv_jenis_brv,hbrv_tgl,dg_nomor_faktur,
--(select top 1 ds_kode_product from meka..tslsd where hs_nomor_faktur=ds_nomor_faktur)as prod,
 type_jurnal,hbrv_nilai_total,dg_nilai_untuk_DOC
--select sum(dg_nilai_untuk_DOC)
--select *
from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..tcgrh on dbrv_nomor_document=hpg_nomor_pencairan and hbrv_company=hpg_company and hbrv_cabang=hpg_cabang
inner join meka..tcgrd on dbrv_nomor_document=dpg_nomor_pencairan
inner join meka..tgrh on dpg_nomor_giro=hg_nomor_giro and hbrv_company=hg_company and hbrv_cabang=hg_cabang
inner join meka..tgrd on hg_nomor_giro=dg_nomor_giro and dg_company=hg_company and dg_cabang=hg_cabang
where hbrv_nomor_brv='010315002436br'

select top 10 * from meka..tbrvh inner join meka..tbrvd on hbrv_nomor_brv=dbrv_kode_brv 
inner join meka..ttrmtgh on dbrv_nomor_document=htt_nomor_terima and hbrv_company=htt_company and hbrv_cabang=htt_cabang
inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima and dbrv_nomor_document=dtt_nomor_terima
inner join meka..har on 
where hbrv_nomor_brv='010315002436br'

select top 10 * from meka..ttrmtgh inner join meka..ttrmtgd on htt_nomor_terima=dtt_nomor_terima
where htt_nomor_terima='010315004879PK'
010315004880PK      
010315004884PK      
010315004921PK      
select top 10 * from meka..har where ar_nomor_bukti='010315012408FP'      



select top 10 * from meka..har where ar_nomor_bukti='010315012432FP'      
select top 10 * from meka..har where ar_nomor_bukti='010315012431FP'      
select top 10 * from meka..har where ar_nomor_bukti='010315010058FP'      
--update meka..har set ar_nilai_sudah_cair='821900', ar_flag_lunas='Y' from meka..har where ar_nomor_bukti='010315012432FP' and ar_nilai_dibayar='821900'   
--update meka..har set ar_nilai_sudah_cair='991500', ar_flag_lunas='Y' from meka..har where ar_nomor_bukti='010315012431FP' and ar_nilai_dibayar='991500'
--update meka..har set ar_nilai_sudah_cair='761900', ar_flag_lunas='Y' from meka..har where ar_nomor_bukti='010315010058FP' and ar_nilai_dibayar='761900'