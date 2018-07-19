--select top 10 * 
--
select top 100 hp_cabang, rtrim(hp_nomor_s_invoice) as no_invoice ,hp_tanggal,hp_supplier,dp_nomor_wrs,dp_kode_barang,dp_harga_beli,dp_qty,dp_disc1,dp_disc2,dp_disc3,dp_amount
from meka..tsih inner join meka..tsid
on hp_nomor_s_invoice=dp_nomor_s_invoice where dp_kode_barang='D.STAR HO28W/865E27'
and year(hp_tanggal)=2013

select top 100 hp_cabang, rtrim(hp_nomor_s_invoice) as no_invoice ,hp_tanggal,hp_supplier,dp_nomor_wrs,dp_kode_barang,dp_harga_beli,dp_qty,dp_disc1,dp_disc2,dp_disc3,dp_amount
from meka..tsih inner join meka..tsid
on hp_nomor_s_invoice=dp_nomor_s_invoice where dp_kode_barang='D.STAR HO45W/827E27'
and year(hp_tanggal)=2013
