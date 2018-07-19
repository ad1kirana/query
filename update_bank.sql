select top 1000 bank_cabang,bank_kode,bank_nama,bank_nomor_account,idt_description from meka..mbank left join meka..mcoa on bank_nomor_account=idt_identifiercode and bank_company=idt_company
order by bank_cabang asc
where bank_kode='BT1'and bank_nomor_account<>'100310011' and bank_cabang='01' and bank_kode <> 'BCA'
--update meka..mbank set bank_nomor_account='100310011' from meka..mbank where bank_kode='BT1'and bank_nomor_account<>'100310011' and bank_cabang='01'

MDR BANK MANDIRI
100310016

KOS BANK KOSPIN JASA
100310007

BT1	BANK BTN
100310011
select top 10 * from meka..mcoa where idt_description like '%semoga jaya%'