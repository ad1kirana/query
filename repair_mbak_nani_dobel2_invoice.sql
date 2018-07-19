select top 10 * from meka..tpoh where hpo_nomor_po='010217000028po'
--update meka..tpoh set hpo_supplier='208' from meka..tpoh where hpo_nomor_po='010217000028po'

select top 100 part_kode_wh,dlbm_qty,dlbm_product,dlbm_kode_barang,hlbm_nomor_dokumen,part_stock_bisa_jual,part_stock_dn,part_stock_total,(part_stock_bisa_jual-part_stock_total)
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
inner join meka..mpart on dlbm_kode_barang=part_kode and hlbm_kode_warehous=part_kode_wh
where dlbm_nomor_lbm between'010217000241BM' and '010217000252BM'

select top 10 * from meka..twrsd

update meka..mpart set part_stock_bisa_jual='856' from meka..mpart where part_kode_wh='51' and part_kode_group='INP' and part_kode='INPR-N70Z' and part_stock_total='856' and part_stock_bisa_jual='850'
update meka..mpart set part_stock_bisa_jual='580' from meka..mpart where part_kode_wh='51' and part_kode_group='INP' and part_kode='INPR-NS70' and part_stock_total='580' and part_stock_bisa_jual='578'
