
select hp_supplier,hp_nomor_s_invoice,hp_tanggal,hp_total_belum_disc,hp_tot_freight_disc,hp_nafter_freight,hp_tot_add_disc,hp_pct_add_disc, hp_net_sales,hp_pct_ppn,hp_nilai_total,
dp_kode_barang,dp_harga_beli,dp_qty,dp_disc1, dp_disc2, dp_disc3,dp_amount,dp_nomor_wrs,hlbm_tanggal
--select * 
from meka..tsih inner join meka..tsid on hp_nomor_s_invoice=dp_nomor_s_invoice
inner join meka..twrsh on dp_nomor_wrs=hlbm_no_lbm and hp_cabang=hlbm_cabang and hp_company=hlbm_company
and dp_company=hlbm_company and dp_cabang=hlbm_cabang
where hlbm_jenis_lbm='beli' and hlbm_kode_supplier='061' and hlbm_cabang='30' 
--and hlbm_kode_warehous='31'
--and hp_nomor_s_invoice='412139892'
and dp_kode_barang like '%44860%'

(3:17:42 PM) Adi Kirana: HWL 125W/220V E27 BLENDED LAMP
(3:17:48 PM) Adi Kirana: HFL 46871 50W
(3:17:52 PM) Adi Kirana: HFL 44860 20W