
select * from meka..MVMS where SSMerk='' and SSMerkDescription=''
select * from meka..mvms where SSMerk ='005'
select  * from meka..mvms where SSMerkDescription ='FEROzA'

select top 2000 *  from meka..mvmsv where vmerk is null
select top 2000 *  from meka..mvmsv where VSMerk ='' 
select top 2000 *  from meka..mvmsv where Vvarian ='FRZ' and CreateDate='1901-01-01 00:00:00.000'
select top 2000 *  from meka..mvmsv where varianDescription ='feroza'
select top 2000 *  from meka..mvmsv where Vvarian ='001' and varianDescription like 'feroza%'
select top 2000 *  from meka..mvmsv where vsmerk ='' and Vvarian='015'
--update meka..mvmsv set vmerk='03'  from meka..mvmsv where vmerk ='' and VSMerk='014'
--update meka..MVMS set SMerk='02' from meka..MVMS where SSMerk='FRZ' and SSMerkDescription='FEROZA'
select top 2000 *  from meka..mvmsv where VMerk='02'
-- and Vvarian='015' and VSMerk =''
--delete from meka..mvmsv where Vvarian ='' and CreateDate='1901-01-01 00:00:00.000'

variandescription='RUSH 1.5 G M/T'

select  rtrim(c.vmerk),rtrim(a.merkdescription),rtrim(c.vsmerk),rtrim(b.ssmerkdescription)
,rtrim(c.vvarian),rtrim(c.variandescription) from meka..mvmsv c 
left join meka..mvms b on c.vsmerk=b.ssmerk and c.vmerk=b.smerk
left join meka..mvm a on b.smerk=a.merk
--and varianDescription like '%120%'
--and c.VMerk='03'
order by c.vmerk asc


select rtrim(c.Merk),rtrim(c.MerkDescription),rtrim(b.SSMerk),rtrim(SSMerkDescription),rtrim(a.Vvarian),rtrim(a.varianDescription) from MEKA..MVMSV a
left join MEKA..MVMS b
on a.VMerk=b.SMerk and a.VSMerk=b.SSMerk
left join MEKA..MVM c
on b.SMerk=c.Merk and a.VMerk=c.Merk
--where c.Merk is null
order by a.VMerk asc,  a.VSMerk asc, a.vvarian asc

select* from MEKA..MVMSV order by VMerk asc,  VSMerk asc, vvarian asc

select top 1 * from MEKA..MVMSV order by VMerk asc,  VSMerk asc, vvarian asc
select top 1 * from MEKA..MVMS
select top 1 * from MEKA..MVM

select top 10 * from MEKA..MCMBL where Cust_Varian='015' and Cust_Merk='02' and Cust_SubMerk='FRZ'
select * from MEKA..MCMBL where Cust_Merk='02' and Cust_SubMerk='005'
select * from MEKA..MCMBL where Cust_Merk='02' and Cust_SubMerk='005' and Cust_Varian='015'
select * from MEKA..MCMBL where Cust_Merk='02' and Cust_SubMerk='FRZ'

select * from MEKA..MCMBL where CUST_NoKendaraan= 'H 7422 A'

select  * from MEKA..MVMSV where vsmerk='frz'
select * from MEKA..MVMS where SSMerk='frz'
select  * from MEKA..MVM
