select top 10 * from meka..tspkm where 
select top 10 * from meka..torderh inner join meka..torderd on hs_nomor_faktur=ds_nomor_faktur where hs_cabang='06' and hs_tanggal between '2015-10-01' and '2015-10-31' and ds_kode_barang='SHE-HX7-10W-40(1LT)' and ds_qty='3'

select top 10 * from meka..tpoh where hpo_nomor_po='010315000708po'


select top 10 * from meka..tsih where hp_nomor_s_invoice='4002038744'
select top 10 * from meka..tsid where dp_nomor_s_invoice='4002038744'

select top 10 * from meka..tsid where dp_nomor_s_invoice='4002041775'
select top 10 * from meka..tsid where dp_nomor_s_invoice='4002043438'

--update meka..tsid set dp_nomor_wrs='010115003546BM' from meka..tsid where dp_nomor_s_invoice='4002038744' and dp_nomor_wrs='010115002864BM'    
--update meka..tsid set dp_nomor_wrs='010115003544BM' from meka..tsid where dp_nomor_s_invoice='4002041775' and dp_nomor_wrs='010115002862BM'      
--update meka..tsid set dp_nomor_wrs='010115003543BM' from meka..tsid where dp_nomor_s_invoice='4002043438' and dp_nomor_wrs='010115002863BM'
select top 10 * from meka..tsid where dp_nomor_s_invoice='4002038744' and dp_nomor_wrs='010115003546BM'    
select * from meka..tsid where dp_nomor_s_invoice='4002041775' and dp_nomor_wrs='010115002862BM'      
select * from meka..tsid where dp_nomor_s_invoice='4002043438' and dp_nomor_wrs='010115002863BM'
