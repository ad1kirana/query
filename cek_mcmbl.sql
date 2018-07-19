select COUNT(cust_kode) from meka..MCMBL where Cust_Tahun is null
select COUNT(cust_kode) from meka..MCMBL where Cust_Warna is null
select COUNT(cust_kode) from meka..MCMBL where Cust_volum is null
select COUNT(cust_kode) from meka..MCMBL where Cust_Bhnbkr is null
select COUNT(cust_kode) from meka..MCMBL where Cust_Transmisi is null
select COUNT(cust_kode) from meka..MCMBL where Cust_Varian is null
select COUNT(cust_kode) from meka..MCMBL where Cust_SubMerk is null
select COUNT(cust_kode) from meka..MCMBL where Cust_Merk is null
select COUNT(cust_kode) from meka..MCMBL where CUST_NoKendaraan is null
select COUNT(cust_kode) from meka..MCMBL where Cust_nomesin is null
select Cust_kode,CUST_NoKendaraan,Cust_Norangka, Cust_nomesin from meka..MCMBL where Cust_nomesin like 'CARfix%' 
order by Cust_nomesin asc

select Cust_kode,CUST_NoKendaraan,Cust_Norangka, Cust_nomesin from meka..MCMBL where CUST_NoKendaraan like 'AD DANANG%'
select Cust_kode,CUST_NoKendaraan,Cust_Norangka, Cust_nomesin from meka..MCMBL where cust_norangka='CARfixRank118838'

select Cust_kode,CUST_NoKendaraan,Cust_Norangka, Cust_nomesin from meka..MCMBL where Cust_nomesin is null

select Cust_kode,CUST_NoKendaraan,Cust_Norangka, Cust_nomesin from meka..MCMBL where Cust_nomesin like 'CARfixEng118838%' 
order by Cust_nomesin desc
select * from meka..MCMBL where Cust_Bhnbkr is not null


select top 10 * AD DANANG'      