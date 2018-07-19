
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime)
values ('01','06','114', '130100000', '150000011', 'A01', 'A01', '', '', '', '', '', '')

select top 10 * from meka..mjauto where tcoa_cabang='06'

select top 10 * from meka..mktrn where distribusi='ibm5'
--update meka..mktrn set description='IB ke CARfix JOG' from meka..mktrn where distribusi='ibk5'
--update meka..mktrn set description='INTERBRANCH di CARfix-JOG' from meka..mktrn where distribusi='ibm5'


select top 100 * from meka..mjauto where tcoa_jenis_transaksi='411' and tcoa_traksaksi_debit='150000016'
--delete from meka..mjauto where tcoa_jenis_transaksi='415' and tcoa_traksaksi_debit='150000016'


--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '01', '114', '130100000', '150000012', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '02', '114', '130100000', '150000012', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '04', '114', '130100000', '150000012', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '05', '114', '130100000', '150000012', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '01', '414', '150000012', '130100000', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '02', '414', '150000012', '130100000', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '04', '414', '150000012', '130100000', 'A01', 'A01', '', '', '', '', '', '')
--insert into meka..mjauto (TCOA_Company,TCOA_Cabang,TCOA_Jenis_transaksi,TCOA_Traksaksi_Debit,TCOA_Transaksi_Credit,TCOA_Mutasi_Debit,TCOA_Mutasi_Credit,TCOA_CreateDate,TCOA_CreateUser,TCOA_CreateTIme,TCOA_ModifyUser,TCOA_ModifyDate,TCOA_ModifyTime) values ('01', '05', '414', '150000012', '130100000', 'A01', 'A01', '', '', '', '', '', '')
