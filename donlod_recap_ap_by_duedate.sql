select top 1 * from ((meka..tbpvh inner join meka..tbpvd on hbpv_nomor_bpv=dbpv_kode_bpv)
inner join meka..tsih on hbpv_company=hp_company and hbpv_cabang=hp_cabang and dbpv_nomor_s_invoice=hp_nomor_s_invoice)
where hp_tanggal between '2014-01-01' and 
select top 1 * from meka..tbpvh
select hp_cabang,hp_nomor_s_invoice,hp_tanggal,hp_supplier,hp_due_date,hp_nilai_total
--select * 
from meka..tsih where hp_due_date between '2014-04-01' and '2014-09-30'
and --hp_nomor_s_invoice='01-1B435490'
(hp_cabang='01'
 or hp_cabang='02' or hp_cabang='30')
select sum(hp_nilai_total)
--select * 
from meka..tsih where hp_due_date between '2014-04-01' and '2014-09-30'
and --hp_nomor_s_invoice='01-1B435490'
hp_cabang='30'
 or hp_cabang='02' or hp_cabang='30')
