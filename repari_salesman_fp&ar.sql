select top 10 hs_nomor_faktur,hs_customer,hs_kode_salesman from meka..tslsh
where hs_nomor_faktur between '0102160017737fp' and '0102160017737fp'
select top 10 ar_nomor_bukti,ar_kode_cust,ar_salesman from meka..har
where ar_nomor_bukti between '010216009430fp' and '010216009431FP'

select top 10 hs_nomor_faktur,hs_customer,hs_kode_salesman from meka..tslsh
where hs_nomor_faktur ='010116040918FP'
select top 10 ar_nomor_bukti,ar_kode_cust,ar_salesman from meka..har
where ar_nomor_bukti = '010116040918FP'

update meka..tslsh set hs_kode_salesman='KRIS' from meka..tslsh where hs_nomor_faktur ='010216022717FP'                       

--update meka..tslsh set hs_kode_salesman='1ROS' from meka..tslsh where hs_nomor_faktur ='010116040918FP'
--update meka..har set ar_salesman='1ROS' from meka..har where ar_nomor_bukti ='010116040918FP'


--update meka..tslsh set hs_kode_salesman='2IR' from meka..tslsh where hs_nomor_faktur between '010216009430fp' and '010216009431FP'
--update meka..har set ar_salesman='2IR' from meka..har where ar_nomor_bukti between '010216009430fp' and '010216009431FP'

--update meka..tslsh set hs_kode_salesman='2EDY' from meka..tslsh where hs_nomor_faktur='303015006640FP'
--update meka..har set ar_salesman='2EDY' from meka..har where ar_nomor_bukti='303015006640FP'

010116043853FP
010116040918FP
 - 1ROS
.