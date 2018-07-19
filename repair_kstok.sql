select top 10 * from meka..torderh where hs_nomor_faktur='303014006027OR'
select top 10 * from meka..tslsh where hs_nomor_faktur='303014005844fp'
select top 10 * from meka..torderh where hs_nomor_faktur='010114013257OR'

select top 10 * from meka..tslsd where ds_nomor_faktur='303014005844fp'

select top 10 * from sjtrade..userlogin where userid='anxy'
select top 10 * from meka..tslsh where hs_nomor_vouch='010114013257OR'

--update meka..torderh set hs_nomor_vouch='010114012854FP' from meka..torderh where hs_nomor_faktur='010114013257OR'
--update meka..tslsh set hs_nomor_vouch='010114013257OR' from meka..tslsh where hs_nomor_faktur='010114012854FP'
select top 10 * from meka..torderh a inner join meka..tslsh b on a.hs_nomor_spb=b.hs_nomor_spb where a.hs_nomor_spb='303014002838PB'

select top 10 * from meka..hkstok where stok_no_doc='010114012854FP' and stok_kode_barang='INPR-N100'
select top 10 * from meka..hmkstok where stok_no_doc='010114013257OR' and stok_kode_barang='INPR-N100'
--update meka..hmkstok set stok_warehouse='04' from meka..hmkstok where stok_no_doc='010114013257OR' and stok_kode_barang='SRA64193PRC'
--update meka..hmkstok set stok_warehouse='04' from meka..hmkstok where stok_no_doc='010114013257OR' and stok_kode_barang='SRA62200RALLY' 

       
select top 10 * from meka..tslsh where hs_nomor_vouch='' and hs_tanggal > '2014-04-30'