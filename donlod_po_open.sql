select top 1000 * from meka..tcmh inner join meka..tcmd on h_document=documentno where h_remarks like '%PABX%' order by h_date asc
select top 1000 * from sjtrade..userlogin order by lastlogin asc

select top 10000 hpo_cabang,hpo_nomor_po,hpo_tanggal,hpo_supplier,sup_nama,hpo_keterangan,dpo_kode_barang,dpo_qty,dpo_supply,hpo_flag_closed
from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po inner join meka..mspl on hpo_supplier=sup_kode_supplier
where dpo_qty <> dpo_supply and hpo_tanggal >='2015-01-01'
and hpo_cabang between '01' and '02'
and hpo_flag_closed='N'
and hpo_supplier='061'

select top 10 *  
from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po inner join meka..mspl on hpo_supplier=sup_kode_supplier
where dpo_qty <> dpo_supply and hpo_tanggal >='2015-01-01'
and hpo_nomor_po='010115000144po'

select top 10 * from meka..mspl