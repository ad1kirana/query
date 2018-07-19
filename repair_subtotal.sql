select rtrim(faktur_pajak)from meka..tpjkd where dokumen='010118020700FP'
select top 50 * from meka..tslsd where ds_nomor_faktur='010118020700FP'
select top 50 faktur_pajak,kode_customer from meka..tpjkh where faktur_pajak='010.003-18.27219341'
select top 50 * from meka..hkar where kar_no_reff='202018006731FP'
select top 50 * from meka..paypoint where payinvoiceno='202018006731FP'

select top 50 * from meka..tpjkh where faktur_pajak='010.001-18.68871831'

202014013355FP dan 202014013334FP

select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_nomor_spk='010715000585SP'

--update meka..tslsh set hs_nilai_disc3_after='7043628', hs_nilai_disc4='317345', hs_nilai_disc4_after='6726283',hs_nilai_total='7398912' from meka..tslsh where hs_nomor_faktur='010117016344FP' and hs_customer='01BASM3   ' and hs_cabang='01'

--koma_diubah jadi titik
--update meka..tslsh set hs_nilai_disc3_after='3627095', hs_nilai_disc4='0', hs_nilai_disc4_after='3627095',hs_nilai_total='3989805' from meka..tslsh where hs_nomor_faktur='202017019534FP' and hs_customer='G0400173' and hs_cabang='20'
--update meka..tpjkd set diskon='-1262905', nilai_pajak='362709.5', nilai_dokumen='4890000' from meka..tpjkd where dokumen='202017019534FP' and faktur_pajak='010.019-17.81072694'
--update meka..tpjkh set diskon='1262905', nilai_pajak='362709.5', nilai_faktur='4890000' from meka..tpjkh where faktur_pajak='010.019-17.81072694' and kode_customer='G0400173'
--update meka..har set ar_nilai_dokumen='3989805', ar_nilai_total='3989805',ar_nilai_ppn='362710' from meka..har where ar_nomor_bukti='202017019534FP' and ar_kode_cust='G0400173'
--update meka..hkar set kar_amount='3989805' from meka..hkar where kar_no_reff='202017019534FP'

--update meka..tslsh set hs_nilai_disc3_after='2024083', hs_nilai_disc4='0', hs_nilai_disc4_after='2024083',hs_nilai_total='2226492' from meka..tslsh where hs_nomor_faktur='010218000316FP' and hs_customer='54TRST' and hs_cabang='02'
--update meka..tpjkd set diskon='-884917', nilai_pajak='202408.3', nilai_dokumen='2909000' from meka..tpjkd where dokumen='010218000316FP' and faktur_pajak='010.001-18.53621545'
--update meka..tpjkh set diskon='884917', nilai_pajak='202408.3', nilai_faktur='2909000' from meka..tpjkh where faktur_pajak='010.001-18.53621545' and kode_customer='54TRST'
--update meka..har set ar_nilai_dokumen='2226492', ar_nilai_total='2226492',ar_nilai_ppn='202409' from meka..har where ar_nomor_bukti='010218000316FP' and ar_kode_cust='54TRST'
--update meka..hkar set kar_amount='2226492' from meka..hkar where kar_no_reff='010218000316FP'



--update meka..torderh set hs_nilai_disc3_after='113200', hs_nilai_disc4='10291', hs_nilai_disc4_after='102909',hs_nilai_total='113200' from meka..torderh where hs_nomor_faktur='010415000130OR' and hs_customer='95ANO2805' and hs_cabang='04'


--update meka..torderh set hs_nilai_disc3_after='85000', hs_nilai_disc4='7727', hs_nilai_disc4_after='77273',hs_nilai_total='85001' from meka..torderh where hs_nomor_vouch='010314013211FP' and hs_customer='031201307C' and hs_cabang='03'

select top 10 * from meka..tslsh where hs_nomor_faktur='010414000146FP'
--update meka..torderh set hs_nilai_disc3_after='337000', hs_nilai_disc4='55455', hs_nilai_disc4_after='281545',hs_nilai_total='309700' from meka..torderh where hs_nomor_vouch='010414000146FP' and hs_customer='041301114C' and hs_cabang='04'

--update meka..har set ar_nilai_total='3364900' from meka..har where ar_nomor_bukti='202014010286FP' 