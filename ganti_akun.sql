select top 10 * from MEKA..MCOA where IDT_IdentifierCode='110101029'
select top 10 * from MEKA..Mpacc where PAC_PostAccount='110101029'

--update meka..mcoa set IDT_IdentifierCode='110100029' from MEKA..MCOA where IDT_IdentifierCode='110101029'
--update meka..mpacc set PAC_PostAccount='110100029' from MEKA..Mpacc where PAC_PostAccount='110101029'

select top 10 * from MEKA..MJAUTO where TCOA_Traksaksi_Debit='110101029'
select top 10 * from MEKA..MJAUTO where TCOA_Transaksi_Credit ='110101029'


--update MEKA..MJAUTO set TCOA_Traksaksi_Debit='110100029' from MEKA..MJAUTO where TCOA_Traksaksi_Debit='110101029'
--update MEKA..MJAUTO set TCOA_Transaksi_Credit ='110100029' from MEKA..MJAUTO where TCOA_Transaksi_Credit ='110101029'
