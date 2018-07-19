select top 10 * from meka..tbpvh where hbpv_nomor_bpv='010516000332pv'
select top 10 * from meka..tbpvd where dbpv_kode_bpv='010516000332pv'
select *
-- sum(dbpv_nilai) 
from meka..tbpvd where dbpv_kode_bpv='010516000332pv'

select * from meka..tbpvd where dbpv_kode_bpv='010516000332pv' and dbpv_no__ap='010516002257AP'    
select * from meka..tbpvd where dbpv_kode_bpv='010516000332pv' and dbpv_no__ap='010516002173AP'
select * from meka..tbpvd where dbpv_kode_bpv='010516000332pv' and dbpv_no__ap='010516002174AP'      
select * from meka..tbpvd where dbpv_kode_bpv='010516000332pv' and dbpv_no__ap='010516002254AP'      
select * from meka..tbpvd where dbpv_kode_bpv='010516000332pv' and dbpv_no__ap='010516002260AP'      
select * from meka..tbpvd where dbpv_kode_bpv='010516000332pv' and dbpv_no__ap='010516002270AP'      
 

dbpv_nomor_s_invoice<>''



select top 100 * from meka..tbpvd inner join meka..hap on dbpv_no__ap= ap_nomor_ap where dbpv_kode_bpv='010516000332pv'
select top 100 DBPV_kode_BPV,DBPV_nomor_S_invoice,DBPV_no__ap,dbpv_cara_bayar,dbpv_nomor_giro,DBPV_nilai,DBPV_iden
 from meka..tbpvd inner join meka..hap on dbpv_no__ap= ap_nomor_ap where dbpv_kode_bpv='010516000332pv'
and ap_flag_closed='n'


select top 10 * from meka..hap

select sum(ap_sudah_dibayar) from meka..tbpvd inner join meka..hap on dbpv_no__ap= ap_nomor_ap where dbpv_kode_bpv='010516000332pv' and ap_flag_closed='y'
