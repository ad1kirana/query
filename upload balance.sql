set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go






declare @company char(2),@BRANCH char(2),@fyear char(4),@tyear char(4) --AS

DECLARE @TMP TABLE (ACCOUNT CHAR (9),AMOUNT FLOAT,TIPE CHAR(1))
DECLARE @ERROR INT,@ERRORSTS VARCHAR(200),@ERRORLINE INT,@tipe char(1)
DECLARE @ACCOUNT CHAR(9),@01 FLOAT,@02 FLOAT,@03 FLOAT,@04 FLOAT,@05 FLOAT,@06 FLOAT,@07 FLOAT,@08 FLOAT,@09 FLOAT,@10 FLOAT,@11 FLOAT,@12 FLOAT,@13 FLOAT,@AMOUNT FLOAT

BEGIN
	BEGIN TRY
	BEGIN TRAN
	set @company='20'
	set @branch='20'
	set @tyear='2009'

	--INSERT INTO @TMP SELECT PBA_PostAccount,PBA_BegBalance14,(SELECT PAC_Type FROM MPACC  WHERE  PAC_CompanyCode=@COMPANY AND PAC_CABANG =@BRANCH and pac_postaccount=PBA_PostAccount )  FROM HPOSTBLC WHERE PBA_CompanyCode=@COMPANY AND PBA_CABANG=@BRANCH AND PBA_FiscalYear=@FYEAR 
	DECLARE CBLC CURSOR LOCAL FOR
	--SELECT ACCOUNT,AMOUNT,tipe FROM @TMP 
	select acc,amount from migrasi..blc_gaks --where amount is  null
		OPEN CBLC 
		FETCH NEXT FROM CBLC INTO @ACCOUNT,@AMOUNT
		WHILE @@FETCH_STATUS=0
		BEGIN
			--IF EXISTS(SELECT * FROM HPOSTBLC WHERE PBA_CompanyCode=@COMPANY AND PBA_cabang=@BRANCH AND PBA_FiscalYear=@TYEAR AND PBA_POSTACCOUNT =@ACCOUNT)
			--	BEGIN
					/*
					IF @TIPE='P'
					BEGIN
						SET @01=0
						SET @AMOUNT=0
						UPDATE HPOSTBLC SET PBA_BegBalance01=0,PBA_BegBalance02=@AMOUNT + @01,PBA_BegBalance03=@AMOUNT + @02+@01,PBA_BegBalance04=@AMOUNT + @02+@01 + @03,PBA_BegBalance05=@AMOUNT + @02+@01 + @03 + @04,PBA_BegBalance06=@AMOUNT  + @02+@01 + @03 + @04+ @05,PBA_BegBalance07=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06,PBA_BegBalance08=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07,PBA_BegBalance09=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08,PBA_BegBalance10=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09,PBA_BegBalance11=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10,PBA_BegBalance12=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10+ @11,PBA_BegBalance13=@AMOUNT  + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10+ @11+ @12,PBA_BegBalance14=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10+ @11+ @12+ @13 WHERE PBA_CompanyCode=@COMPANY AND PBA_CABANG=@BRANCH AND PBA_FiscalYear=@TYEAR AND PBA_POSTACCOUNT=@ACCOUNT
					END
					*/
					--IF @TIPE='B'
					--	BEGIN
					set  @02=0
					set @01 =0
					set @03 =0
					set  @04=0
					set @05=0
					set  @06 =0
					set @07 =0
					set @08 =0
					set @09 =0
					set @10=0
					set @11=0
					set @12=0
					set @13=0
					--		SELECT @01=PBA_Balance01,@02=PBA_Balance02,@03=PBA_Balance03,@04=PBA_Balance04,@05=PBA_Balance05,@06=PBA_Balance06, @07=PBA_Balance07, @08=PBA_Balance08,@09=PBA_Balance09,@10=PBA_Balance10,@11=PBA_Balance11,@12=PBA_Balance12,@13=PBA_Balance13 FROM HPOSTBLC WHERE PBA_CompanyCode=@COMPANY AND PBA_CABANG=@BRANCH AND PBA_FiscalYear=@TYEAR AND  PBA_POSTACCOUNT=@ACCOUNT
							UPDATE HPOSTBLC SET PBA_BegBalance03=@AMOUNT ,
								PBA_BegBalance04=@AMOUNT ,PBA_BegBalance05=@AMOUNT ,PBA_BegBalance06=@AMOUNT ,PBA_BegBalance07=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06,PBA_BegBalance08=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07,PBA_BegBalance09=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08,PBA_BegBalance10=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09,PBA_BegBalance11=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10,PBA_BegBalance12=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10+ @11,PBA_BegBalance13=@AMOUNT  + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10+ @11+ @12,PBA_BegBalance14=@AMOUNT + @02+@01 + @03 + @04+ @05+ @06 + @07 + @08 + @09 + @10+ @11+ @12+ @13 WHERE PBA_CompanyCode=@COMPANY AND PBA_CABANG=@BRANCH AND PBA_FiscalYear=@TYEAR AND PBA_POSTACCOUNT=@ACCOUNT
					--	END			
--UPDATE POSTBLC SET PBA_BegBalance01=@AMOUNT, PBA_BegBalance02=PBA_BegBalance01 + PBA_Balance01 + @AMOUNT,PBA_BegBalance03=PBA_BegBalance01 + PBA_Balance01+PBA_Balance02 + @AMOUNT,PBA_BegBalance04=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03  + @AMOUNT,PBA_BegBalance05=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04  + @AMOUNT,PBA_BegBalance06=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05  + @AMOUNT,PBA_BegBalance07=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ @AMOUNT,PBA_BegBalance08=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07+ @AMOUNT,PBA_BegBalance09=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07 +PBA_Balance08+ @AMOUNT,PBA_BegBalance10=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07 +PBA_Balance08+PBA_BALANCE09+ @AMOUNT, PBA_BegBalance11=PBA_BegBalance01 + PBA_Balance01+PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07 +PBA_Balance08+PBA_BALANCE09+PBA_BALANCE10 + @AMOUNT,PBA_BegBalance12=PBA_BegBalance01 + PBA_Balance01+PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07 +PBA_Balance08 +PBA_Balance09+PBA_Balance10+PBA_Balance11+ @AMOUNT,PBA_BegBalance13=PBA_BegBalance01 + PBA_Balance01+PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07 +PBA_Balance08+PBA_BALANCE09+PBA_BALANCE10 +PBA_BALANCE11+PBA_BALANCE12+ @AMOUNT,PBA_BegBalance14=PBA_BegBalance01 + PBA_Balance01 +PBA_Balance02+PBA_Balance03+PBA_Balance04+PBA_Balance05+PBA_Balance06+ PBA_Balance07 +PBA_Balance08+PBA_BALANCE09+PBA_BALANCE10+PBA_BALANCE11+PBA_BALANCE12+PBA_BALANCE13+ @AMOUNT WHERE PBA_CompanyCode=@COMPANY AND PBA_CABANG=@BRANCH AND PBA_FiscalYear=@TYEAR AND PBA_POSTACCOUNT=@ACCOUNT
				--END
--			ELSE
--				INSERT INTO HPOSTBLC SELECT @COMPANY,@BRANCH,ACCOUNT,@TYEAR,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN @AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN @AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,CASE TIPE WHEN 'B' THEN AMOUNT ELSE 0 END,0,0,0,0,0,0,0,0,0,0,0,0,0 FROM @TMP WHERE ACCOUNT =@ACCOUNT
	
			FETCH NEXT FROM CBLC INTO @ACCOUNT,@AMOUNT

		END
		CLOSE CBLC
		DEALLOCATE CBLC
	
	--UPDATE MBRANCH SET COY_CurrentYearEndDate=CAST('31-dec-'+@TYEAR AS DATETIME) WHERE COY_CompanyCode=@COMPANY AND COY_CABANG=@BRANCH

	COMMIT TRAN
	END TRY

	BEGIN CATCH
		
		if  @@TRANCOUNT > 0
		ROLLBACK TRAN 
	select isnull(ERROR_MESSAGE(),'')+ isnull(  ERROR_PROCEDURE(),'')
	END CATCH


END 





