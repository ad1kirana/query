select top 10 hpo_status from meka..tpoh where hpo_nomor_po = '010115000118PO'
 --and '303015000032PO'
select top 10 * from meka..tpoh where hpo_nomor_po = '010216000081po'
select top 10 * from meka..tpoh where hpo_nomor_po = '010216000080po'

select top 100 * from meka..tpod where dpo_nomor_po = '010216000080po'

select top 10 * from meka..twrsh where hlbm_nomor_dokumen='010115000118PO' 
--update meka..tpoh set hpo_status=''  from meka..tpoh where hpo_nomor_po = '010116000168po'

EMO-1181    14000        

select top 100 dpo_nomor_po,dpo_kode_barang,dpo_qty,dpo_supply from meka..tpod where dpo_nomor_po = '010215000020PO'
--and dpo_kode_barang='emo-1181'
--update meka..tpod set dpo_supply='14000' from meka..tpod where dpo_nomor_po = '010215000020PO' and dpo_kode_barang='emo-1181'



303015000189CL

1200
16
40
120
100
200
24000
100
200
1200
600
300
600
300