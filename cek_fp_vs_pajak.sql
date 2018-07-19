select top 10 hs_nomor_faktur,hs_nomor_ppn from meka..tslsh where hs_nomor_faktur='202014009067FP'
select top 10 b.dokumen,a.faktur_pajak from meka..tpjkh a inner join meka..tpjkd b on
a.faktur_pajak=b.faktur_pajak and 
a.company=b.company and 
a.cabang=b.cabang where dokumen='202014009067FP' 
