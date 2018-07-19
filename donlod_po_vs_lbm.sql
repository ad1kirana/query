
select hpo_cabang,hpo_nomor_po, hpo_tanggal,hpo_supplier,hpo_keterangan,dpo_kode_barang,dpo_qty,hlbm_tanggal,
dlbm_kode_barang,dlbm_qty_entry,dlbm_qty_dibayar
 from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po
right join meka..twrsh on hpo_nomor_po=hlbm_nomor_dokumen
right join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
and dpo_kode_barang=dlbm_kode_barang
where 
hpo_cabang='01' and hpo_tanggal between '2016-10-01' and '2016-10-31'
and hpo_supplier='002'
--and hpo_nomor_po='010116000393po'

select hpo_cabang,hpo_nomor_po, hpo_tanggal,hpo_supplier,hpo_keterangan,dpo_kode_barang,dpo_qty,hlbm_tanggal,
dlbm_kode_barang,dlbm_qty_entry,dlbm_qty_dibayar
 from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po
inner join meka..twrsh on hpo_nomor_po=hlbm_nomor_dokumen
inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
and dpo_kode_barang=dlbm_kode_barang
where 
hpo_cabang='01' and hpo_tanggal between '2016-10-01' and '2016-10-31'
and hpo_supplier='002'

select hpo_cabang,hpo_nomor_po, hpo_tanggal,hpo_supplier,hpo_keterangan,dpo_kode_barang,dpo_qty
 from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po
where 
hpo_cabang='01' and hpo_tanggal between '2016-10-01' and '2016-10-31'
and hpo_supplier='002'
order by hpo_nomor_po


select hlbm_cabang, hlbm_no_lbm,hlbm_kode_warehous,hlbm_nomor_dokumen,dlbm_kode_barang,dlbm_qty_entry,dlbm_qty_dibayar
from meka..twrsh inner join meka..twrsd on hlbm_no_lbm=dlbm_nomor_lbm
where
hlbm_tanggal between '2016-10-01' and '2017-01-31'
and hlbm_jenis_lbm='beli' and hlbm_kode_supplier='002'
and hlbm_nomor_dokumen between '010116000372PO' and '010116000413PO'