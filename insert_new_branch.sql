select top 100 * from meka..mctl
select top 100 * from meka..msystem
select top 100 * from meka..mwh
select top 10 * from meka..mjauto where tcoa_jenis_transaksi='910' and tcoa_cabang='06'
select top 10 * from meka..muserlogin


select * from meka..mctl where cpf_ppn_jabatan like 'mir%'
--insert into meka..mctl (CFP_Company,CFP_Cabang,CFP_KeyCode,CFP_Ctl,CPF_PPn_Nama,CPF_PPN_Jabatan,CPF_NPWP,CPF_Pengukuhan,CPF_SIUP,CPF_Alamat,CPF_Nama_NPWP,CPF_Jabatan,CPF_CreateUser,CPF_CreateDate,CPF_CreateTime,CPF_ModifyUser,CPF_ModifyDate,CPF_ModifyTime,CPF_YEAR)
values ('30','36','1','0','010.001-13.1','Rialam U.M.B','02.914.932.5-503.000','07 Oktober 2009','','Jl. Puspowarno Tengah No 7 - 13','PT. Meka Mekar Niaga','Sales Counter','','','','','','','')

select top 100 * from meka..mwh order by wh_kode desc
--insert into meka..mwh (WH_Company,WH_Cabang,WH_kode,WH_Nama,WH_ket,WH_Nomor,WH_Jenis,WH_Status,WH_Kode_Depo,WH_CreateUser,WH_CreateDate,WH_CreateTime,WH_ModifyUser,WH_ModifyDate,WH_Modifytime) values
('01','08','39','CARfix Majapahit','Gudang CARfix Majapahit','0','F','0','','DARMAWAN','','','','','')

select top 10 * from meka..mwh
--insert into meka..mwh (WH_Company,WH_Cabang,WH_kode,WH_Nama,WH_ket,WH_Nomor,WH_Jenis,WH_Status,WH_Kode_Depo,WH_CreateUser,WH_CreateDate,WH_CreateTime,WH_ModifyUser,WH_ModifyDate,WH_Modifytime) values
('30','36','39','Mekar Karawang','Gudang MMN Karawang','0','F','0','','DARMAWAN','','','','','')

select top 100 * from meka..tperiod where status='o'and cabang='36'
--insert into meka..tperiod (Company,Cabang,Month,Status) values ('20','22','2018-02-01 00:00:00.000','O')
--insert into meka..tperiod (Company,Cabang,Month,Status) values ('40','40','2017-01-01 00:00:00.000','O')
--insert into meka..tperiod (Company,Cabang,Month,Status) values ('30','36','2018-07-01 00:00:00.000','O')

select top 100 * from meka..msystem
--insert into meka..msystem (PARAM_Company,PARAM_CAbang,PARAM_Sys_Inventory,PARAM_Payment_Tunai,
PARAM_Payment_Kredit,PARAM_Pct_PPN,PARAM_Time_Bomb,PARAM_PPN_PARAF,PARAM_Disc_VA,
PARAM_Disc_VB,PARAM_Disc_VC,PARAM_Business_Area,PARAM_Today,PARAM_No_cusr,PARAM_CETAK_DOC,
PARAM_BO,PARAM_BEG,PARAM_Auto_cust,Param_max_autodate,PARAM_ClearAR,PARAM_BlockAR,PARAM_PPH,
PARAM_min_margin_otp) values
('30','36','F','0','0','10','3','','0','0','0','','','0','','0','','','0','1000','45','','')


select top 100 * from meka..ttaxname
--insert into meka..ttaxname (Company,Branch, Nama, Jabatan) values ('30','36','Rialam U.M.B','Sales Counter')
select top 10 * from meka..tperiod where cabang='36'
--insert meka..tperiod 
30	35	2015-06-01 00:00:00.000	O