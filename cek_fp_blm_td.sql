select top 10 * from meka..har where ar_nomor_bukti='010514001279fp' or ar_nomor_bukti='010514001284fp'
select top 10 * from meka..har where ar_nomor_bukti='010514001284fp'
select top 10 * from meka..tcold where ddt_nomor_document='010117040068fp' or ddt_nomor_document='010514001284fp'
select top 10 * from meka..tcolh where hdt_nomor_tagihan='010514000094TH      '
select top 100 *
010117040068fp

select top 10 * from MEKA..TCOLH inner join MEKA..TCOLD on HDT_Nomor_Tagihan=DDT_Nomor_Tagihan
where DDT_Nomor_Document='010117040068fp'
--select hdt_cabang,hdt_nomor_tagihan,hdt_tanggal,hdt_flag_penerimaan,hdt_creator,
hdt_penagih,hdt_kode_sales,ar_flag_lunas,ar_status_giro,ddt_nomor_document 
from meka..tcolh inner join meka..tcold on hdt_nomor_tagihan=ddt_nomor_tagihan inner join meka..har on ddt_nomor_document=ar_nomor_bukti
where --hdt_flag_penerimaan='n' 
hdt_nomor_tagihan='010117040068fp'
ddt_nomor_document='010116015546fp'
order by ddt_nomor_document desc

--update meka..har set ar_status_giro='X' from meka..har where ar_nomor_bukti='010514001279fp'

select top 10 * from meka..har
select top 10 * from meka..ttrfdocd
select top 10000 payinvoiceno,trfd_document from meka..paypoint 
left join meka..ttrfdocd on payinvoiceno=trfd_faktur 
where paybranch='05' and paytipe='credit limit' and paydate between '2014-01-01' and '2014-03-20' 
and trfd_document is null

select top 10 * from meka..ttrfdocd where trfd_faktur='010118004525FP'
select top 10 * from meka..ttrfdocd where trfd_document='010113000790TD'

--cek_td_by_fp
select top 100 trfd_faktur,ar_flag_lunas,ar_salesman,tf_recuser,tf_createuser,tf_document,tf_date
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document  inner join meka..har
on trfd_faktur=ar_nomor_bukti
where --ar_salesman='1ar' and ar_flag_lunas='n' and tf_recuser <>'widya' and tf_createuser='kiki'
--trfd_faktur='010116001300TD'
tf_document='010118000509TD      '

select top 10 * from meka..ttrfdoch where tf_date='2015-09-03' and tf_createuser='nur'
 tf_document='010215000438TD'

4888fp(andar), 7692fp(ngadiono),8711fp(ngadiono)

select top 10 rtrim(tf_document),tf_recuser,tf_createuser,tf_recdate
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
where trfd_faktur='010118006505fp'   

--insert into meka..ttrfdocd (TRFD_DOCUMENT,trfd_faktur) values ('010116001273TD','010116015546FP')
--insert into meka..ttrfdocd (TRFD_DOCUMENT,trfd_faktur) values ('010115001579TD','010115017112FP')
--insert into meka..ttrfdocd (TRFD_DOCUMENT,trfd_faktur) values ('010115001579TD','010114030182FP')

select top 10 tf_document,tf_recuser
from meka..ttrfdoch where tf_document='010115001061TD'

select * from meka..ttrfdocd where trfd_document='010115001442TD'

select trfd_document,trfd_faktur,ar_kode_cust,ar_salesman,ar_flag_lunas
from meka..ttrfdocd inner join meka..har on trfd_faktur=ar_nomor_bukti
where --trfd_document='010116001300TD'
tf_recuser='wahyu' and ar_flag_lunas='N' and tf_branch='35'

--update meka..ttrfdoch set tf_recuser='DRAJAT' from meka..ttrfdoch where tf_document='010116003115TD'
--update meka..ttrfdoch set tf_recuser='WIDYA' from meka..ttrfdoch where tf_recuser='wahyu' and tf_branch='01'
--update meka..ttrfdoch set tf_recuser='ANDAR' from meka..ttrfdoch where tf_recuser='wahyu' and tf_branch='35'

select top 10000 * from meka..ttrfdoch where tf_recuser='wahyu' and tf_branch='01'

select top 10000 rtrim(tf_document),tf_recuser,tf_createuser
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document
where --tf_createuser='kiki' and 
tf_recuser='wahyu' and tf_branch='35'


select top 100 trfd_document,trfd_faktur,ar_status_giro,ar_flag_lunas from meka..ttrfdocd inner join meka..har on trfd_faktur=ar_nomor_bukti
where trfd_document='010216000820TD'  and ar_status_giro='x'  


select top 100 trfd_document,trfd_faktur,TF_FlagReceive,ar_status_giro,ar_flag_lunas
--select * 
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document inner join meka..har on trfd_faktur=ar_nomor_bukti
where trfd_document='010217000360TD'    
select top 100 * from meka..ttrfdocd where trfd_document='010217006370FP' --and trfd_faktur like '%43910fp'
select top 100 * from meka..ttrfdoch where tf_document='010217000400TD'    
select top 100 * from meka..ttrfdocd where trfd_faktur='010217006370FP' and trfd_document='010217000400TD'
select top 100 * from meka..ttrfdocd where trfd_faktur='010217006370FPP' and trfd_document='010217000400TD'
  
--delete from meka..ttrfdocd where trfd_faktur='010217006370FP' and trfd_document='010217000400TD'
--delete from meka..ttrfdocd where trfd_faktur='010217005388FP' and trfd_document='010217000400TD'

--update meka..ttrfdoch set tf_totitem='4' from meka..ttrfdoch where tf_document='010217000400TD'
--update meka..ttrfdocd set trfd_faktur='010117011392FP'  from meka..ttrfdocd where trfd_faktur='010117011382fp' and trfd_document='010117011392FP'
--update meka..ttrfdocd set trfd_document='010117001159TD'  from meka..ttrfdocd where trfd_faktur='010117011392FP' and trfd_document='010117011392FP'


mas dar minta tolong  no 010117001159TD no faktur 010117011382fp minta diganti 010117011392FP. mksh

--update meka..ttrfdoch set TF_FlagReceive='N' from meka..ttrfdoch where tf_document='010216000820TD'

---CEK USER RECIEVE ATAS TD DI SUATU INVOICE----
select top 100 trfd_faktur,ar_flag_lunas,ar_salesman,tf_recuser,tf_createuser,tf_document
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document  inner join meka..har
on trfd_faktur=ar_nomor_bukti
where --ar_salesman='1ar' and ar_flag_lunas='n' and tf_recuser <>'widya' and tf_createuser='kiki'
trfd_faktur='010117012576fp'

---CEK ISI TRANSFER DOCUMENT BESERTA STATUS AR DAN NAMA SLSMN----
select top 100 trfd_faktur,ar_flag_lunas,ar_salesman,tf_recuser,tf_createuser,tf_document
from meka..ttrfdoch inner join meka..ttrfdocd on tf_document=trfd_document  inner join meka..har
on trfd_faktur=ar_nomor_bukti
where --ar_salesman='1ar' and ar_flag_lunas='n' and tf_recuser <>'widya' and tf_createuser='kiki'
tf_document='010115000713TD'

--UBAH USER RECIEVE TRASNFER DOCUMENT---
--update meka..ttrfdoch set tf_recuser='ANDAR' from meka..ttrfdoch where tf_document='010115002787TD      ' and tf_branch='01'

