select top 100000 * from meka..tpoh inner join meka..tpod
on hpo_nomor_po=dpo_nomor_po where 
--hpo_supplier='002' 
--and hpo_tanggal='2015-11-15'

hpo_nomor_po='010215000105PO' 
and dpo_supply='0'
and hpo_flag_posting='y'
and month(hpo_tanggal)=11
order by hpo_tanggal desc 

hpo_nomor_po='010115000294po' 
select top 1000 * from meka..tpod where dpo_nomor_po='303018000069po'
--update meka..tpoh set hpo_flag_closed='N',hpo_flag_posting='N' from meka..tpoh where hpo_nomor_po='303018000069po'


select top 100000 * from meka..tpoh where hpo_nomor_po='303018000069po'
--update meka..tpoh set hpo_supplier='028' from meka..tpoh where hpo_nomor_po='010216000145PO'

x24epu9 harusnya x24epud 1500
(1:32:52 PM) puguh_meka: w22epusd harusny w22fpusd 2500
BUMX24EPU9   
BUMW22EPUSD                
select top 100 * from meka..tpod where dpo_nomor_po='010115000288po' and dpo_kode_barang='BUMX24EPU9'
select top 100 * from meka..tpod where dpo_nomor_po='010115000288po' and dpo_kode_barang='BUMW22EPUSD'
--update meka..tpod set dpo_kode_barang='BUMX24EPU9D' from meka..tpod where dpo_nomor_po='010115000288po' and dpo_kode_barang='BUMX24EPUD'
--update meka..tpod set dpo_kode_barang='BUMW22FPUSD' from meka..tpod where dpo_nomor_po='010115000288po' and dpo_kode_barang='BUMW22EPUSD'