select top 10 * from meka..tsid where dp_nomor_s_invoice='03-060715.5'

select top 10 * from meka..tsih where hp_nomor_s_invoice='03-060715.5'

 select top 10 * from meka..twrsd where dlbm_nomor_lbm='010315003731BM'
--update meka..twrsd set dlbm_qty_dibayar='0' from meka..twrsd where dlbm_nomor_lbm='010315003731BM' and dlbm_kode_barang='OTP.452'

select hpo_cabang,hpo_nomor_po,hpo_tanggal,hpo_keterangan, dpo_kode_barang,dpo_qty,dpo_supply
from meka..tpoh inner join meka..tpod on hpo_nomor_po=dpo_nomor_po
where hpo_supplier='001' and dpo_supply < dpo_qty and hpo_cabang='02' and hpo_tanggal >='2015-06-01'
