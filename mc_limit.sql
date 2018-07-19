select * from meka..mclimit where cust_cabang='04'

select ar_cabang,ar_kode_cust,ar_nomor_bukti,ar_nilai_dokumen,ar_nilai_total,ar_nilai_dibayar,ar_nilai_sudah_cair from meka..har
where ar_flag_lunas <>'y' and 
ar_kode_cust='051300044C'
ar_cabang='04'

select top 10 * from meka..mcust where cust_kode='P-00000977'
select top 10 * from meka..mcust where cust_kode='G0100727'
select top 10 * from meka..mclimit where cust_code='T-00000266'

select sum(ar_nilai_total) from meka..har
--select * from meka..har
where ar_flag_lunas <>'y' 
and ar_kode_cust='T-00000266'

select *,(cust_creditlimit-cust_creditused) as sisa from meka..mclimit where cust_code='T-00000266'
--update meka..mclimit set cust_creditused='16894212' from meka..mclimit where cust_code='T-00000266' 
and ar_cabang='22'
cust_cabang='03' and ccust_cabang='03' and 


select top 10 * from meka..mclimit where cust_code='11kum'


--update meka..mclimit set cust_cabang='01' from meka..mclimit where cust_code='11kum'
--delete from meka..mclimit where cust_code='05saroba' and CUST_Cabang='01'


--update meka..mclimit set cust_cabang='22' from meka..mclimit where cust_code between 'G0800195' and 'G0800202'
--update meka..mclimit set cust_cabang='22' from meka..mclimit where cust_code='G0800073'
--update meka..mclimit set cust_cabang='22' from meka..mclimit where cust_code='G0800074'
--update meka..mclimit set cust_cabang='22' from meka..mclimit where cust_code='G0800075'

G0800195, G0800196,  G0800197, G0800198, G0800199,  G0800200,  G0800201,  G0800202

select *  from MEKA..Ubah_CL where Kode_Customer = 'P-00000252' 
order by Create_Date desc
P-00000252