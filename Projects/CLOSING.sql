sp_help ttsh
create  table  tmp_doc(old_doc char(20),new_doc char(20))
insert into tmp_doc select HTS_No_Tran_stock,'' from ttsh where hts_tanggal>='01-jan-2009' and hts_cabang='01'
select * from ttsh where '1-jan-2009ts_no_tran' and hts_cabang='01'

select * from ttsh where HTS_No_Tran_stock like '010109%T1'
select * from tmp_doc
insert into tmp_doc select new_doc,'010108'+substring(new_doc,7,6)+'T1' from tmp_doc  where new_doc like '%T1'
select * from ttsh where hts_no_tran_stock='010108000023T1      '
sp_help hmkstok
insert into hkstok_temp select * from hkstok where stok_no_doc in ( select old_doc from tmp_doc)
select * from hmkstok inner join tmp_doc on stok_no_doc=old_doc
begin try
begin tran
update hmkstok set stok_tanggal='31-dec-2008' , stok_no_doc=new_doc from hmkstok inner join tmp_doc on stok_no_doc=old_doc
update hkstok set stok_tanggal='31-dec-2008' , stok_no_doc=new_doc from hkstok inner join tmp_doc on stok_no_doc=old_doc
update ttsd set DTS_Nomor_T_Stock=new_doc  from ttsd  inner join tmp_doc on DTS_Nomor_T_Stock=old_doc
update tptsd set DTS_Nomor_T_Stock=new_doc  from tptsd  inner join tmp_doc on DTS_Nomor_T_Stock=old_doc

update ttsh  set HTS_No_Tran_stock=new_doc ,HTS_Tanggal='31-dec-2008' from ttsh inner join tmp_doc on HTS_No_Tran_stock=old_doc
update tptsh  set HTS_No_Tran_stock=new_doc ,HTS_Tanggal='31-dec-2008' from tptsh inner join tmp_doc on HTS_No_Tran_stock=old_doc
commit tran
end try
begin catch
if @@trancount>0 rollback tran
end catch


select * from ttsh inner join tmp_doc on HTS_No_Tran_stock=new_doc




update tmp_doc set new_doc=left(old_doc,10)+cast (cast(substring(old_doc,11,2) as int)+22 as char(2))+'T1'
select * from mcountr where ct_cabang='01' and ct_tahun='2008' and CT_Jenis_Trans='t1'
sp_help mcountr
sp_help tperiod
delete tperiod where cabang='01'and [month]='01-jan-2009'
--update tperiod set status='O' where cabang='01' and [month]='01-DEC-2008'
select * from tcmh where h_cabang='01' and h_date>='01-jan-2009'
sp_help tbrvd
select * from tbrvh where  hbrv_cabang='01' and hbrv_flag_posting='n'

select * from tbrvd where DBRV_Kode_BRV='010109000001BR      '
select * from tbrvd inner join tmp_doc on DBRV_Kode_BRV=old_doc
select * from tbrvh inner join tmp_doc on hBRV_nomor_BRV=old_doc


update tbrvd set DBRV_Kode_BRV=new_doc from  tbrvd inner join tmp_doc on DBRV_Kode_BRV=old_doc
update  tbrvh set hBRV_nomor_BRV=new_doc, hbrv_tgl='31-dec-2008' from tbrvh inner join tmp_doc on hBRV_nomor_BRV=old_doc



insert into tmp_doc values ('010109000001BR','010108006809BR '     )

delete tmp_doc  where old_doc='010109000001BR'
select * from 
sp_help LAP_CLOSING
--insert into lap_closing_tmp select * from lap_closing where cabang='01' and periode='01-dec-2008'
--delete lap_closing where cabang='01' and periode='01-dec-2008'

sp_help hbsff
insert into hspos_temp select * from hspos where hps_cabang='01' and hps_tanggal='01-jan-2009'
delete tperiod where cabang='01'and [month]='01-jan-2009'

delete hspos where hps_cabang='01' and hps_tanggal='01-jan-2009'
delete hbsff where HF_Cabang='01' and HF_Tanggal='01-jan-2009'
delete lap_closing where cabang='01' and periode='01-dec-2008'
update hpostblc  set PBA_BegBalance13=PBA_BegBalance12,PBA_BegBalance14=PBA_BegBalance12,PBA_Balance12=0 where PBA_CompanyCode='01' and PBA_Cabang='01' and PBA_FiscalYear='2008' and PBA_PostAccount in('290000000','900000000')
delete hpostblc  where PBA_CompanyCode='01' and PBA_Cabang='01' and PBA_FiscalYear='2009'
update mpacc set PAC_Type='B' where pac_cabang='01' and pac_postaccount='830000000'


sp_help mpacc
select * from mpacc where pac_cabang='01' and pac_postaccount='830000000'
select PBA_BegBalance13,PBA_BegBalance12,PBA_Balance12 from hpostblc where PBA_CompanyCode='01' and  PBA_Cabang='01' and PBA_FiscalYear='2008' and PBA_PostAccount in('290000000','900000000')
insert hpostblc_tmp  select * from  hpostblc  where PBA_CompanyCode='01' and PBA_Cabang='01' and PBA_FiscalYear='2009'
delete hpostblc  where PBA_CompanyCode='01' and PBA_Cabang='01' and PBA_FiscalYear='2009'

select * from hpostblc_tmp where pba_fiscalyear='2009'

