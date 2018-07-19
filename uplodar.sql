DECLARE @INV CHAR(20),@DOC_AMT FLOAT,@NETAR FLOAT,@inv_date DATETIME,@duedate DATETIME
DECLARE @cust CHAR(10),@company CHAR(2),@BRANCH CHAR(2)
DECLARE @NOAR CHAR(20),@salesman char(5)
SET @COMPANY='20'
SET @BRANCH='20'

BEGIN TRY
BEGIN TRAN
declare tmp cursor local for
select no_invoice,amount,net_ar,tgl_faktur,tgl_valid,'G'+cust,salesmn from migrasi..ar_gaks

open tmp
fetch next from tmp into @inv,@doc_amt,@NETAR,@inv_date,@duedate,@cust,@salesmAn 
WHILE @@FETCH_STATUS=0
begin
	EXEC P_GET_NOMOR_DOC @COMPANY,@BRANCH,'AR',@inv_date,@NOAR OUTPUT

	insert into har values(@company,@branch,@noar,'1',@company+@branch+@inv,@CUST,@INV_DATE,@duedate,@duedate,'',0,'',0,@doc_amt,0,0,0,0,@NETAR,0,0,'N',0,0,NULL,'K','',@SALESMAN,0,'',0,'','','N','','','')
	INSERT INTO HKAR (KAR_COMPANY,KAR_Cabang,KAR_TANGGAL,KAR_NOMOR_DOCUMENT,KAR_KODE_TRANSAKSI,KAR_KODE_CUSTOMER,KAR_AMOUNT,KAR_SIFAT_TRN,KAR_NO_REFF,KAR_KETERANGAN)
		VALUES(@company,@branch,@inv_date,@company+@branch+@inv,'SLS',@CUST,@NETAR,'+',@company+@branch+@inv,'INITIAL AR')
	update mclimit set CUST_CREDITUSED=CUST_CREDITUSED+@NETAR  where CUST_Code=@CUST and CUST_Company=@company and CUST_Cabang=@branch
	EXECUTE P_UPD_HSTCUST @COMPANY,@branch,@cust,@inv_date,@NETAR,'IN'


fetch next from tmp into @inv,@doc_amt,@NETAR,@inv_date,@duedate,@cust,@salesmAn 
end
close tmp
deallocate tmp

COMMIT TRAN
END TRY
BEGIN CATCH
IF @@TRANCOUNT>0
	ROLLBACK TRAN
SELECT ERROR_MESSAGE()
END CATCH



