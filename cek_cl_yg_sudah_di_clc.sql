select top 100 hts_nomor_dokumen,hts_no_tran_stock from meka..ttsh
where hts_nomor_dokumen between '010216000143CL' and '010216000151cl'
select top 10 * from meka..ttsh where hts_nomor_dokumen like '010216000143CL'

select top 100 * from meka..tclaimh  where hcc_nomor_claim between '010216000140cl' and '010216000151cl'

select top 10 * from meka..tptsh where hts_nomor_dokumen between '010216000143CL' and '010216000151cl'

select top 100 * from meka..tclaimh  where hcc_nomor_claim between '010216000140cl' and '010216000151cl'
select top 100 hcc_nomor_claim,hcc_kode_cust,hts_no_tran_stock,hcc_flag_return from meka..tclaimh left join meka..ttsh on hcc_nomor_claim=hts_nomor_dokumen
where hcc_nomor_claim between '010216000140cl' and '010216000151cl'
and hts_no_tran_stock is null --and hcc_flag_return='y'

select top 100 hcc_nomor_claim,hcc_kode_cust,hts_no_tran_stock,hcc_flag_return from meka..tclaimh left join meka..ttsh on hcc_nomor_claim=hts_nomor_dokumen where hcc_nomor_claim between '010216000140cl' and '010216000151cl'
--update meka..tclaimh set hcc_flag_return=null from meka..tclaimh where 
hcc_nomor_claim ='010216000143CL'      
--update meka..tclaimh set hcc_flag_return=null from meka..tclaimh where 
hcc_nomor_claim ='010216000145CL'
--update meka..tclaimh set hcc_flag_return=null from meka..tclaimh where 
hcc_nomor_claim ='010216000146CL'      
--update meka..tclaimh set hcc_flag_return=null from meka..tclaimh where 
hcc_nomor_claim ='010216000147CL'      
--update meka..tclaimh set hcc_flag_return=null from meka..tclaimh where 
hcc_nomor_claim ='010216000148CL'      