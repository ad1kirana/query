select Top 10 * from MEKA..TBPVH inner join MEKA..TBPVD on HBPV_NOMOR_BPV=DBPV_Kode_BPV
where DBPV_Nomor_S_Invoice

select HP_Cabang,HP_Nomor_S_Invoice,HP_Tanggal,HP_Supplier,SUP_Nama, HP_Due_Date,HP_Nilai_Total,HBPV_NOMOR_BPV,DBPV_Nilai,HBPV_KODE_BANK,HBPV_NILAI_TOTAL,HBPV_TGL 
--select * 
from MEKA..tsih inner join meka..MSPL on HP_Supplier=SUP_Kode_Supplier
left join meka..tbpvd on hp_nomor_s_invoice=dbpv_nomor_s_invoice
left join MEKA..TBPVH on HBPV_NOMOR_BPV=DBPV_Kode_BPV
where YEAR(hp_tanggal)=2017 