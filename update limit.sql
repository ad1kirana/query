declare @cust char(10),@limit float,@company char(2),@branch char(2)
set @company='20'
set @branch='20'

begin try
begin tran
declare  tmp cursor local for
select CUST_Code,CUST_CREDITLIMIT from mclimit where CUST_Company=@company

open tmp
fetch next from tmp into @cust,@Limit
while @@fetch_status=0
begin
	insert into hlimit1 (RCL_Company,RCL_SO,RCL_USER,RCL_TANGGAL_IN,RCL_TANGGAL_OUT,RCL_CUSTOMER,RCL_CREDIT_AWAL,RCL_CREDIT_TEMP,RCL_STATUS_BALIK,RCL_TIME_IN,RCL_TIME_OUT,RCL_JENIS_BELI_NB,RCL_JENIS_BELI_GS,RCL_JENIS_BELI_FUC,RCL_JENIS_BELI_INA,RCL_USER_CLOSED,RCL_JENIS_CHG)

		values(@company,@branch,'system','10-mar-2009','15-mar-2009',@cust,@limit,@limit+50000000,0,'','','','','','','','')
	update mclimit set CUST_CREDITLIMIT=CUST_CREDITLIMIT+50000000 where cust_code=@cust and cust_company=@company
fetch next from tmp into @cust,@Limit

end
close tmp
deallocate tmp

commit tran
end try

begin catch
if @@trancount>0
rollback tran
end catch
--update mcust set  CUST_Status_Cust='0' where CUST_CompanyCode='20'
--update mcust set  where CUST_CompanyCode='20'
--select * from mclimit where cust_code='G0300035'
--select * from hlimit1 where rcl_company='20'

http://stackoverflow.com/questions/15931607/convert-rows-to-columns-using-pivot-in-sql-server
