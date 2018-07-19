pendi meka, [20.04.18 17:10]
tokonya 1jonet gidanti jadi grup 4-nya 0de 010118002112TH

pendi meka, [20.04.18 17:10]
jonet (4) 010118002114TH


select DDT_Nomor_Tagihan,DDT_Kode_Cust,DDT_Nilai_Document,HS_Kode_Salesman
from MEKA..TCOLD inner join meka..tslsh on DDT_Nomor_Document=HS_Nomor_Faktur where DDT_Nomor_Tagihan='010118002114TH'
and HS_Kode_Salesman='1jont'

03ANMOT   
03MAHARA  

select * from MEKA..MRJDWSL where JS_Kode_Sales='0de' and JS_Customer='03MAHARA'
--update MEKA..MRJDWSL set JS_Kode_Area='04' from MEKA..MRJDWSL where JS_Kode_Sales='0de' and JS_Customer='03ANMOT'
--update MEKA..MRJDWSL set JS_Kode_Area='04' from MEKA..MRJDWSL where JS_Kode_Sales='0de' and JS_Customer='03MAHARA'


select * from meka..TCOLH where HDT_Nomor_Tagihan between '010118002112TH' and '010118002113th'

select * from MEKA..MRJDWSL where JS_Kode_Sales='0de' and JS_Customer='03kl'
select * from MEKA..MRJDWSL where JS_Kode_Sales='1RSY' and JS_Customer='03kl'

select DDT_Nomor_Tagihan,DDT_Kode_Cust,DDT_Nilai_Document, AR_Salesman,AR_Due_Date, ar_due_date_adjust,DATEDIFF(day,ar_tanggal_awal,'2018-04-23')
from MEKA..TCOLD inner join meka..HAR on DDT_Nomor_Document=AR_Nomor_Bukti where DDT_Nomor_Tagihan='010118002113TH' 
and DDT_Kode_Cust='03kl'