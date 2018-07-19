select
distinct 
rtrim(a.mc_cabang) as cab,
rtrim(b.TYPE_KODE_GROUP) as prod,
rtrim(a.MC_Kode_Barang) as part,
rtrim(b.TYPE_NAMA) as desk,
a.MC_NOMOR_FIFO as fifo,
isnull((select HF_Stock_Awal from MEKA..HBSFF
where 
HF_Cabang=a.MC_Cabang and
HF_Nomor_FIFO=a.MC_NOMOR_FIFO and
HF_Kode_Part=a.MC_Kode_Barang and 
HF_Tanggal = '2017/12/01'),0) as awal,
isnull((select sum(mc_qty) 
from MEKA..HFFMOV 
where 
mc_cabang=a.MC_Cabang and 
MC_NOMOR_FIFO=a.MC_NOMOR_FIFO and
MC_Kode_Barang=a.MC_Kode_Barang and
MC_Tanggal between '2017/12/01' and '2017/12/31' and
MC_Sifat_Trn='+'),0) as masuk,
isnull((select sum(mc_qty) 
from MEKA..HFFMOV  
where 
mc_cabang=a.MC_Cabang and 
MC_NOMOR_FIFO=a.MC_NOMOR_FIFO and
MC_Kode_Barang=a.MC_Kode_Barang and
MC_Tanggal between '2017/12/01' and '2017/12/31' and
MC_Sifat_Trn='-'
),0) as keluar,
(select distinct MC_Harga_Pokok_UNIT from MEKA..hffmov
where 
mc_cabang=a.MC_Cabang and 
MC_NOMOR_FIFO=a.MC_NOMOR_FIFO and
MC_Kode_Barang=a.MC_Kode_Barang) as cost
from 

(select
distinct 
a.mc_cabang as cab,
a.MC_NOMOR_FIFO as fifo,
a.MC_Kode_Barang as part,
isnull((select HF_Stock_Awal from MEKA..HBSFF
where 
HF_Cabang=a.MC_Cabang and
HF_Nomor_FIFO=a.MC_NOMOR_FIFO and
HF_Kode_Part=a.MC_Kode_Barang and 
HF_Tanggal = '2017/12/01'),0) as awal,
isnull((select sum(mc_qty) 
from MEKA..HFFMOV 
where 
mc_cabang=a.MC_Cabang and 
MC_NOMOR_FIFO=a.MC_NOMOR_FIFO and
MC_Kode_Barang=a.MC_Kode_Barang and
MC_Tanggal between '2017/12/01' and '2017/12/31' and
MC_Sifat_Trn='+'),0) as masuk
from MEKA..HFFMOV a
where 
a.MC_Cabang  between  '03' and '08'
a.MC_Tanggal <= '2017/12/31') t

right join MEKA..HFFMOV a on t.cab=a.MC_Cabang and t.fifo=a.MC_NOMOR_FIFO and t.part=a.MC_Kode_Barang and t.awal=awal and t.masuk=masuk
inner join MEKA..MTIPE b on a.MC_Kode_Barang=b.TYPE_KODE
where 
a.MC_Cabang between  '03' and '08'
a.MC_Tanggal <= '2017/12/31' AND
b.type_kode_group between 'AOD' and 'AOO'
(T.awal + t.masuk <>'0')
order by cab,prod, part, desk asc