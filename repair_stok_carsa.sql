select top 10 * from meka..MFFCOST where FF_Counter='85957' and ff_cabang='03' and FF_Kode_Barang='MS-MDSC1540F4-005   '
--update MEKA..MFFCOST set FF_Qty_Keluar='9', FF_Flag_Closed='N' from meka..MFFCOST where FF_Counter='85957' and FF_Kode_Barang='ACC.072' and ff_cabang='03'

select top 10 * from MEKA..MFFCOST where FF_Cabang='03' and FF_Counter='85957'

81856
85957

select top 10 * from MEKA..MFFCOST where FF_Cabang='03' and FF_Counter='83588'
select SUM(mc_qty)from MEKA..HFFMOV where MC_NOMOR_FIFO='83588' and MC_Cabang='03' and MC_Sifat_Trn='-'
select mc_cabang,MC_Tanggal,MC_Kode_Barang,MC_Qty,MC_Sifat_Trn,MC_No_Doc from MEKA..HFFMOV where MC_NOMOR_FIFO='83588' and MC_Cabang='03' and MC_Sifat_Trn='-'
--and MC_Tanggal > '2017-12-26'
order by MC_Tanggal desc


--update MEKA..MFFCOST set FF_Qty_Keluar='27', FF_Flag_Closed='N' from meka..MFFCOST where FF_Counter='83588'  and ff_cabang='03'
and FF_Kode_Barang='BULB-003'



72522


select top 10 * from MEKA..MFFCOST where FF_Cabang='03' and FF_Counter='77102'
select SUM(mc_qty)from MEKA..HFFMOV where MC_NOMOR_FIFO='77102' and MC_Cabang='03' and MC_Sifat_Trn='-'
select mc_cabang,MC_Tanggal,MC_Kode_Barang,MC_Qty,MC_Sifat_Trn,MC_No_Doc from MEKA..HFFMOV where MC_NOMOR_FIFO='77102' and MC_Cabang='03' and MC_Sifat_Trn='-'
--and MC_Tanggal > '2017-12-26'
order by MC_Tanggal desc


--update MEKA..MFFCOST set FF_Qty_Keluar='4', FF_Flag_Closed='N' from meka..MFFCOST where FF_Counter='77102'  and ff_cabang='03'
and FF_Kode_Barang='MOB.002'

80295
82839

select top 10 * from MEKA..MFFCOST where FF_Cabang='03' and FF_Counter='82839'
select SUM(mc_qty)from MEKA..HFFMOV where MC_NOMOR_FIFO='82839' and MC_Cabang='03' and MC_Sifat_Trn='-'
select mc_cabang,MC_Tanggal,rtrim(MC_Kode_Barang) as kode_brg,MC_Qty,MC_Sifat_Trn,MC_No_Doc from MEKA..HFFMOV
where MC_NOMOR_FIFO='82839' and MC_Cabang='03' and MC_Sifat_Trn='-'
--and MC_Tanggal > '2017-12-26'
order by MC_Tanggal desc


--update MEKA..MFFCOST set FF_Qty_Keluar='3', FF_Flag_Closed='N' from meka..MFFCOST where FF_Counter='82839'  and ff_cabang='03'
and FF_Kode_Barang='OFL-049'

77893
79727

select top 10 * from MEKA..MFFCOST where FF_Cabang='03' and FF_Counter='80286'
select SUM(mc_qty)from MEKA..HFFMOV where MC_NOMOR_FIFO='80286' and MC_Cabang='03' and MC_Sifat_Trn='-'
select mc_cabang,MC_Tanggal,rtrim(MC_Kode_Barang) as kode_brg,MC_Qty,MC_Sifat_Trn,MC_No_Doc from MEKA..HFFMOV
where MC_NOMOR_FIFO='97745' and MC_Cabang='03' and MC_Sifat_Trn='-'
--and MC_Tanggal > '2017-12-26'
order by MC_Tanggal desc


--update MEKA..MFFCOST set FF_Qty_Keluar='2', FF_Flag_Closed='N' from meka..MFFCOST where FF_Counter='76252'  and ff_cabang='03'
and FF_Kode_Barang='43310-09015'



