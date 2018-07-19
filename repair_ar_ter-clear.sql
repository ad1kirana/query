select top 3 * from har where ar_nomor_bukti='010117019134fp'
--NILAI DOKUMEN DIINPUT DI AR_NILAI_TOTAL
--ar_flag_lunas='N' jika A/R seharusnya belum lunas

--update har set ar_nilai_adjust='0', ar_nilai_total='1724954',ar_flag_lunas='N' from har where ar_nomor_bukti='010214015615FP'



select top 10 * from meka..mcust where cust_kode='061400076c'
--update meka..mcust set cust_chart_of_account='110100027', cust_kode_affco='021' from meka..mcust where cust_kode='061400076c'

select top 10 * from meka..har where ar_nomor_bukti='010515000023fp'

--update meka..har set ar_nilai_total='-20000',ar_flag_lunas='N'  from meka..har where ar_nomor_bukti='010515000023fp'
--update meka..har set ar_nilai_dibayar='30000' from meka..har where ar_nomor_bukti='010117019134fp'
--update meka..har set ar_nilai_sudah_cair='10000' from meka..har where ar_nomor_bukti='010515000023fp'
--update meka..har set ar_nilai_adjust='0' from meka..har where ar_nomor_bukti='010515000023fp'
--update meka..har set ar_nilai_credit_note='10000' from meka..har where ar_nomor_bukti='010515000023fp'
--update meka..har set ar_flag_lunas='Y'  from meka..har where ar_nomor_bukti='010515000023fp'


--update meka..har set ar_nilai_dibayar='1006042',ar_nilai_sudah_cair='1006042', ar_flag_lunas='Y' from meka..har where ar_nomor_bukti='010117019134fp'