select  rtrim(vmerk),rtrim(merkdescription),rtrim(vsmerk),rtrim(ssmerkdescription),rtrim(vvarian),rtrim(variandescription) from meka..mvmsv 
left join meka..mvms on vsmerk=ssmerk and vmerk=smerk
left join meka..mvm on smerk=merk
left join meka..mcmbl on vmerk=cust_merk and vsmerk=cust_submerk and vvarian=cust_varian
order by vmerk asc

select * from MEKA..MCMBL

select *
from meka..mcust a right join meka..mcmbl b on a.cust_kode=b.cust_kode
left join meka..mvmsv on vmerk=cust_merk and vsmerk=cust_submerk and vvarian=cust_varian
left join meka..mvms on vsmerk=ssmerk and vmerk=smerk
left join meka..mvm on smerk=merk

select a.cust_cabang,a.cust_kode,a.cust_nama,a.cust_alamat_1,a.cust_alamat_2,a.cust_alamat_3,a.cust_kota,a.cust_createdate,a.cust_telefon,a.mobileno,a.CUST_HP, a.CUST_Contact_Person, b.cust_nokendaraan,rtrim(b.cust_merk) as kode_merk,rtrim(merkdescription)as merk,rtrim(cust_submerk)as kode_submerk,rtrim(ssmerkdescription)as submerk,rtrim(cust_varian)as kode_var,rtrim(variandescription)as varian,
Cust_Transmisi,Cust_Bhnbkr,Cust_volum,Cust_Warna,Cust_Norangka,Cust_nomesin

from meka..mcust a right join meka..mcmbl b on a.cust_kode=b.cust_kode
left join meka..mvmsv on vmerk=cust_merk and vsmerk=cust_submerk and vvarian=cust_varian
left join meka..mvms on vsmerk=ssmerk and vmerk=smerk
left join meka..mvm on smerk=merk
where --cust_status_cust <>'1'
--and a.cust_kode='051300137C' and 
a.cust_cabang between '03' and '08'
and a.cust_createdate <= '2017-09-10'

139531


--donlod_master_mobil_with_data_cust
select 
c.cust_kode as customer_id, c.cust_nama, c.CUST_Alamat_1,c.CUST_Alamat_2,c.CUST_Alamat_3,c.CUST_Kota,c.CUST_Telefon,c.mobileno,c.CUST_HP,
g.merkdescription as merkcode,
h.ssmerkdescription as modelcode,
i.variandescription as description,
e.vecdescription as category,
'U' as kondisi_mobil,
'xx' as car_usage,
replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(d.cust_nokendaraan,' ',''),'-',''),'_',''),'.',''),',',''),'/',''),'\',''),'[',''),']',''),'`',''),'+',''),'=','') as nopolisi,
--d.cust_norangka as norangka, d.cust_nomesin nomesin, d.cust_warna as warna, d.cust_tahun as tahun,
'' as no_faktur,
'',
'xxx' as no_bpkb,
d.cust_lastkm as angka_odometer,
'' as akhir_kredit,
'' as leasing,
c.cust_kode_affco as afco,
f.no_npwp as npwp,
d.cust_transmisi as transmisi,
d.cust_bhnbkr as bhnbkr,
convert(varchar(30),d.cust_lastservice,120) as last_service
from ((meka..mcust c 
left join meka..mcmbl d on c.cust_kode=d.cust_kode 
left join meka..mvt e on d.cust_tipe=e.vectype)
left join meka..mvm g on d.cust_merk=g.merk
left join meka..mvms h on d.cust_submerk=h.ssmerk and d.cust_merk=h.smerk)
left join meka..mvmsv i on d.cust_merk=i.vmerk and d.cust_submerk=i.vsmerk and d.cust_varian=i.vvarian 
left join MEKA..MAPJK f on c.CUST_Kode=f.Kode_Customer and d.Cust_kode=f.Kode_Customer
and c.CUST_Cabang between '03' and '08'



select 
c.cust_kode as customer_id, c.cust_nama, c.CUST_Alamat_1,c.CUST_Alamat_2,c.CUST_Alamat_3,c.CUST_Kota,c.CUST_Telefon,c.mobileno,c.CUST_HP,
g.merkdescription as merkcode,
h.ssmerkdescription as modelcode,
i.variandescription as description,
e.vecdescription as category,
'U' as kondisi_mobil,
'xx' as car_usage,
replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(d.cust_nokendaraan,' ',''),'-',''),'_',''),'.',''),',',''),'/',''),'\',''),'[',''),']',''),'`',''),'+',''),'=','') as nopolisi,
--d.cust_norangka as norangka, d.cust_nomesin nomesin, d.cust_warna as warna, d.cust_tahun as tahun,
'' as no_faktur,
'',
'xxx' as no_bpkb,
d.cust_lastkm as angka_odometer,
'' as akhir_kredit,
'' as leasing,
c.cust_kode_affco as afco,
f.no_npwp as npwp,
d.cust_transmisi as transmisi,
d.cust_bhnbkr as bhnbkr,
convert(varchar(30),d.cust_lastservice,120) as last_service
from ((meka..mcust c 
left join meka..mcmbl d on c.cust_kode=d.cust_kode 
left join meka..mvt e on d.cust_tipe=e.vectype)
left join meka..mvm g on d.cust_merk=g.merk
left join meka..mvms h on d.cust_submerk=h.ssmerk and d.cust_merk=h.smerk)
left join meka..mvmsv i on d.cust_merk=i.vmerk and d.cust_submerk=i.vsmerk and d.cust_varian=i.vvarian 
left join MEKA..MAPJK f on c.CUST_Kode=f.Kode_Customer and d.Cust_kode=f.Kode_Customer
and c.CUST_Cabang between '03' and '08'



select * from MEKA..Mcmbl a inner join MEKA..Mcust b on a.CUST_Kode=b.cust_kode
where b.cust_status_cust <>'1'
and b.cust_cabang between '03' and '08'
and a.cust_createdate <= '2017-09-10'

select * from MEKA..Mcmbl 
where cust_createdate <= '2017-09-10'

select a.CUST_Cabang,a.CUST_Nama,a.CUST_Alamat_1,a.CUST_Alamat_2, a.CUST_Alamat_3, a.CUST_Kota,a.CUST_Contact_Person,a.CUST_Telefon,a.mobileno, a.CUST_HP,
c.Merk, c.MerkDescription,d.SSMerk,d.SSMerkDescription,e.Vvarian,e.varianDescription from MEKA..Mcust a left join MEKA..MCMBL b on a.CUST_Kode=b.cust_kode
left join MEKA..MVM c on b.Cust_Merk=c.Merk 
left join MEKA..MVMS d on b.Cust_Merk=d.SMerk and b.Cust_SubMerk=d.SSMerk
left join MEKA..MVMSV e on b.Cust_Merk=e.VMerk and b.Cust_SubMerk=e.VSMerk and b.Cust_Varian=e.Vvarian
where a.cust_status_cust <>'1'
and a.cust_createdate <= '2017-09-10'


select a.cust_cabang,a.cust_kode,a.cust_nama,a.cust_alamat_1,a.cust_alamat_2,a.cust_alamat_3,a.cust_kota,a.cust_telefon,a.mobileno,cust_nokendaraan,cust_jenis,rtrim(cust_merk) as kode_merk,rtrim(cust_submerk)as kode_submerk,rtrim(cust_varian) as kode_varian
from meka..mcust a inner join meka..mcmbl b on a.cust_kode=b.cust_kode
where cust_status_cust <>'1'



select top 2 * from meka..mcust
select rtrim(merk), rtrim(merkdescription) from meka..mvm
select top 100 * from meka..mvt