select top 100 * from meka..tpoh where hpo_nomor_po between '010216000114PO' and '010216000114PO'
select top 100 * from meka..tpod where dpo_nomor_po='010216000114PO'

select sum(dpo_amount_req) from meka..tpod where dpo_nomor_po='010215000082po'


--update meka..tpoh set hpo_total_belum_disc='93363005',hpo_net_sales='93363005',hpo_nilai_total='93363005' from meka..tpoh where hpo_nomor_po='010215000082po'

--update meka..tpoh set HPO_net_sales='1164002520', hpo_nilai_ppn='116400252', hpo_nilai_total='1164002520' from meka..tpoh where hpo_nomor_po='010116000224PO'
--update meka..tpoh set HPO_net_sales='836924210', hpo_nilai_ppn='83692421', hpo_nilai_total='836924210' from meka..tpoh where hpo_nomor_po='010116000224PO'
--update meka..tpoh set HPO_net_sales='1231589875', hpo_nilai_ppn='123158987.5', hpo_nilai_total='1231589875' from meka..tpoh where hpo_nomor_po='010216000114PO'
