select top 10000 a.company,a.cabang, a.faktur_pajak,a.jenis,a.kode_customer,a.tanggal,a.nilai_faktur,a.diskon,a.nilai_pajak,
a.create_user,a.tahun,a.npwpcust,a.namacust,a.alamat1cust,a.alamat2cust,a.tt_nama,b.dokumen
from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak 
and a.company=b.company
and a.cabang=b.cabang
--where a.faktur_pajak ='010.000-11.00019815'
 where kode_customer='52AG' and tahun = '2014'

select top 10 * from meka..tpjkh where faktur_pajak ='010.000-11.00009710'
comp	cab	faktur_pajak	tipe	kode	tgl	nilai_faktur	diskon	pajak	creator	
tahn_pajak	npwp	nama	alamat	kota	npwp_cust	ttd	npwp_	invoice


select a.tanggal,rtrim(b.dokumen) as invoice,rtrim(a.faktur_pajak)as faktur_pajak
from meka..tpjkh a inner join meka..tpjkd b on a.faktur_pajak=b.faktur_pajak 
and a.company=b.company
and a.cabang=b.cabang
where a.cabang='30' and
a.tahun='2015'