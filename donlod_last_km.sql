select * from meka..tslsh where hs_last_km='0' and hs_cabang='03'
select b.hs_nomor_faktur,b.hs_customer,b.hs_qq,a.hs_reffnumber,a.hs_keterangan,b.hs_keterangan,b.hs_last_km from meka..torderh a inner join meka..tslsh b on a.hs_nomor_vouch=b.hs_nomor_faktur and a.hs_cabang='03' and a.hs_reffnumber='0'
and b.hs_keterangan <> '' AND b.hs_reffnumber='0'

