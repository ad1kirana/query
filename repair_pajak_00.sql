839 fp kode cust 031100109c 
010.000-14.15477200 kode cust 031400233c
select top 10 a.faktur_pajak,tt_nama,b.dokumen from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
and a.company=b.company
and a.cabang=b.cabang
where dokumen='010314003510fp'

select top 10 a.faktur_pajak,tt_nama,b.dokumen,a.kode_customer from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
and a.company=b.company
and a.cabang=b.cabang
where dokumen='010314003510FP'

--update meka..tpjkh set TT_nama='Sunarni/Sales Counter' from meka..tpjkh where faktur_pajak='010.000-14.15480280' and tt_nama='SANDY K/SALES C'
--update meka..tpjkh set faktur_pajak='020.000-14.15488411' from meka..tpjkh where faktur_pajak='010.000-14.15488411' and kode_customer='R-00000982'
--update meka..tpjkd set faktur_pajak='020.000-14.15488411' from meka..tpjkd where faktur_pajak='010.000-14.15488411' and dokumen='010314003510FP'

select top 10 a.faktur_pajak,tt_nama,b.dokumen,a.kode_customer from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak
and a.company=b.company
and a.cabang=b.cabang
where a.faktur_pajak='010.000-14.15477200'