select hs_tanggal,ds_nomor_faktur,ds_kode_product,ds_kode_barang,ds_qty,ds_tot_harga_pokok
--select top 10 *  
from meka..tslsh inner join meka..tslsd on hs_nomor_faktur=ds_nomor_faktur
where month(hs_tanggal)=2 and year(hs_tanggal)=2015 and hs_cabang='04'
and ds_kode_product <>'oth' and ds_tot_harga_pokok='0'


010515000902FP      	GAT	GAT.075		981.818             
010515001121FP      	TGP	83710-BZ011	104.000     
010515001359FP      	OTP	OTP.1894	130.000 

select top 10 * from meka..tslsd where ds_nomor_faktur='010515000902FP' and ds_kode_barang='GAT.075'
select top 10 * from meka..tslsd where ds_nomor_faktur='010515001121FP' and ds_kode_barang='83710-BZ011'
select top 10 * from meka..tslsd where ds_nomor_faktur='010515001359FP' and ds_kode_barang='OTP.1894'

--update meka..tslsd set ds_tot_harga_pokok='981818' from meka..tslsd where ds_nomor_faktur='010515000902FP' and ds_kode_barang='GAT.075'
--update meka..tslsd set ds_tot_harga_pokok='104000' from meka..tslsd where ds_nomor_faktur='010515001121FP' and ds_kode_barang='83710-BZ011'
--update meka..tslsd set ds_tot_harga_pokok='130000' from meka..tslsd where ds_nomor_faktur='010515001359FP' and ds_kode_barang='OTP.1894' 