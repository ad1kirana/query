select top 1000 * from meka..tbpvh inner join meka..tbpvd on hbpv_nomor_bpv=dbpv_kode_bpv
inner join meka..tsid on dbpv_nomor_s_invoice=dp_nomor_s_invoice
where hbpv_tgl='2017-04-28' and hbpv_nilai_total='9504612819'
and dp_kode_barang like 'sad%'

select top 10 * from meka..tsid where dbpv_nomor_s_invoice='188156903' 