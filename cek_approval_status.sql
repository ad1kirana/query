select avg(datediff(d,ar_tanggal_awal,ar_tgl_bayar_akhir)) from meka..har where ar_flag_lunas='y'
and ar_kode_cust='04IMO' 
and ar_tgl_bayar_akhir>ar_tanggal_awal
and datediff(m,ar_tanggal_awal,getdate())<='6'

select hg_cabang,hg_kode_cust,hg_nomor_giro,hg_nilai_giro,hg_tanggal_cair,hg_status_giro
--select top 10 *  
from meka..tgrh where hg_status_giro='4'
order by hg_tanggal_cair asc
hg_tanggal_cair >= getdate() and hg_kode_cust='04IMO'

select top 10 * from meka..tgrh_claim
where dpg_nomor_giro='G699842             '
_claim

select sum((ar_nilai_total-ar_nilai_sudah_cair)) as total_ar, 'total A/R'
from meka..har where ar_kode_cust='54kota' and ar_flag_lunas='n'

select sum((ar_nilai_total-ar_nilai_sudah_cair)) as total_ar,'<15'
from meka..har where ar_kode_cust='54kota' and ar_flag_lunas='n'
and datediff(d,ar_tanggal_awal,getdate()) < '15'

select sum((ar_nilai_total-ar_nilai_sudah_cair)) as total_ar,'16 - 30'
from meka..har where ar_kode_cust='54kota' and ar_flag_lunas='n'
and datediff(d,ar_tanggal_awal,getdate()) between '16' and '30'
select sum((ar_nilai_total-ar_nilai_sudah_cair)) as total_ar,'31 - 45'
from meka..har where ar_kode_cust='54kota' and ar_flag_lunas='n'
and datediff(d,ar_tanggal_awal,getdate()) between '31' and '45'
select sum((ar_nilai_total-ar_nilai_sudah_cair)) as total_ar,'46 - 90'
from meka..har where ar_kode_cust='54kota' and ar_flag_lunas='n'
and datediff(d,ar_tanggal_awal,getdate()) between '46' and '90'
select sum((ar_nilai_total-ar_nilai_sudah_cair)) as total_ar,'> 90'
from meka..har where ar_kode_cust='54kota' and ar_flag_lunas='n'
and datediff(d,ar_tanggal_awal,getdate()) > '90'

select top 10 nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where kode_customer='54kota' and aprovalsts='n'

select * --nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where aprovalsts='n' and kode_customer between '0' and 'zz' and   flaglevel1='y' and   flaglevel2='y'

select * --nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where aprovalsts='n' and company <>'20'
and   flaglevel1='y' and   flaglevel2='y'

select * --nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where flaglevel2='n' and aprovalsts='n' and  flaglevel1='y'

select * --nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where flaglevel2='r' and aprovalsts='n'
--update meka..ubah_cl set aprovalsts='R' from meka..ubah_cl where flaglevel2='r' and aprovalsts='n'

select * --nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where flaglevel1='n' and aprovalsts='n'

select * --nodocument,status,kode_customer,nilai_asal,nilai_dipakai,nilai_baru, totalar
 from meka..ubah_cl where aprovalsts='n' and kode_customer between '54kota' and '54kota'