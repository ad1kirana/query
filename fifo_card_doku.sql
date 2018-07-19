select rtrim(MC_No_Doc)as doku,MC_Kode_Cust_Sup,MC_Kode_Transaksi,MC_Sifat_Trn,(MC_Qty*MC_Harga_Pokok_UNIT) as amount from MEKA..hffmov where 
year(mc_tanggal )=2017
and month(mc_tanggal)=7
and MC_Cabang='02'
group by MC_No_Doc,MC_Kode_Cust_Sup,MC_Kode_Transaksi,MC_Sifat_Trn,MC_Qty*MC_Harga_Pokok_UNIT 