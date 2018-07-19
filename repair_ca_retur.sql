select top 100 * from meka..trtrh inner join meka..trtrd on hrc_no_retur=drc_nomor_retur
where hrc_total_cost='0' and hrc_tanggal > '2014-05-31'  and drc_product <> 'oth'     

202017000383CA
202017001328BM


--delete from meka..trtrh where hrc_no_retur='303516000072CA'

--update meka..trtrh set hrc_kode_cust='16MAKRUF', hrc_eks_faktur='303516001519FP' from meka..trtrh where hrc_no_lbm='303516000181BM' and hrc_no_retur='303516000072CA'

--update meka..trtrh set hrc_total_cost='1130130' from meka..trtrh where hrc_no_retur='010117000730CA' and hrc_eks_faktur='010117027346FP'   
--update meka..trtrd set drc_harga_pokok='1130130' from meka..trtrd where drc_nomor_retur='010117000730CA'  and drc_kode_barang='SHE-RMLR4X15W40(5LT)'
     
select top 10 * from meka..trtrh
where hrc_no_retur='303018000195CA'

select top 10 rtrim(hrc_no_retur) as no_retur, rtrim(hrc_no_lbm) as no_lbm from meka..trtrh
where hrc_no_retur='303018000195CA'
select top 10 rtrim(drc_nomor_retur) as doku_retur, rtrim(drc_kode_barang) as part  from meka..trtrd
where drc_nomor_retur='303018000195CA'
select top 10 rtrim(dlbm_nomor_lbm) as no_lbm,rtrim(dlbm_no_dokumen) as no_faktur,rtrim(dlbm_kode_barang) as part, dlbm_qty,dlbm_cost 
--select top 10 * 
from meka..twrsd where dlbm_nomor_lbm='303018000923BM'

select top 10 * from meka..twrsh inner join MEKA..TWRSD on HLBM_No_LBM=DLBM_Nomor_LBM
where hlbm_jenis_lbm='rt/m' and dlbm_nomor_lbm='202017001328BM' 

and DLBM_Kode_Barang='SHM-ADVSCAX5(0.8L)' and 







select top 10 * from meka..trtrh inner join meka..trtrd on HRC_No_Retur=DRC_Nomor_Retur where hrc_no_retur='202017000383CA'
select top 10 * from meka..trtrd where drc_nomor_retur='010517000003CA'

select top 10 rtrim(dlbm_nomor_lbm) as no_lbm,rtrim(dlbm_no_dokumen) as no_faktur,rtrim(dlbm_kode_barang) as part, dlbm_qty,dlbm_cost 
--select top 10 * 
from meka..twrsd where dlbm_nomor_lbm='010517000227BM'

select top 10 * from meka..trtrh where hrc_no_retur='010517000005CA'
select top 10 * from meka..trtrd where drc_nomor_retur='010517000005CA'

select top 10 * from meka..twrsh where hlbm_no_lbm='303014000982BM'

--update meka..trtrh set hrc_total_cost='2100000' from meka..trtrh where hrc_no_retur='010116000033CA' and hrc_eks_faktur='010116001136FP'   
--update meka..trtrd set drc_harga_pokok='2100000' from meka..trtrd where drc_nomor_retur='010116000033CA'  and drc_kode_barang='BUAK20HRU11'
--update meka..trtrd set drc_harga_pokok='19026750' from meka..trtrd where drc_nomor_retur='010115000726CA'  and drc_kode_barang='INPR-N150'


select top 10 * from meka..trtrd where drc_nomor_retur='010116000033CA'
select top 10 * from meka..trtrh where hrc_no_retur='010115000698CA'

--update meka..trtrd set drc_qty='0' from meka..trtrd where drc_nomor_retur='202014000350CA' and drc_kode_barang='ASO.531'             
      

    
--dlbm_cost = total_cost = harga_pokok
select top 10 * from meka..trtrh where hrc_no_retur='010214000029CA'

--update meka..trtrh set hrc_total_cost='893600' from meka..trtrh where hrc_no_retur='010114000506CA' and hrc_eks_faktur='010114014085FP'   
--update meka..trtrd set drc_harga_pokok='893600' from meka..trtrd where drc_nomor_retur='010114000506CA'  and drc_kode_barang='SHE-HX7-10W-40(4LT)'

--update meka..trtrh set hrc_total_cost='60800' from meka..trtrh where hrc_no_retur='010315000002CA' and hrc_eks_faktur='010315000603FP'   
--update meka..trtrd set drc_harga_pokok='60800' from meka..trtrd where drc_nomor_retur='010315000002CA'  and drc_kode_barang='9004A-91019'
