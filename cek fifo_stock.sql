declare @cabang char(2)
set @cabang='05'
with tmp(part,fifo,rfs,total) as(
select ff_kode_barang,sum(FF_Qty_Masuk-FF_Qty_Keluar),0,0 from meka..mffcost where ff_cabang=@cabang 
--and FF_Flag_Closed='N' 
group by ff_kode_barang
union
select part_kode,0,sum(part_stock_bisa_jual),sum(part_stock_total) from mpart where part_cabang=@Cabang group by part_kode)
select part,sum(fifo),sum(rfs),sum(total) from tmp where part not like 'JAs%' group by part having sum(fifo)<>sum(total)--or sum(fifo)<>sum(rfs)


select top 10 type_kode_group,( 
select ff_kode_barang,sum(FF_Qty_Masuk-FF_Qty_Keluar) 
from meka..mffcost where FF_cabang='01' and ff_flag_closed='N' group by ff_kode_barang)
from meka..mtipe where type_kode=ff_kode_barang

select rtrim(ff_kode_barang),sum(FF_Qty_Masuk-FF_Qty_Keluar)as fifo 
from meka..mffcost where FF_cabang='01' group by ff_kode_barang having sum(FF_Qty_Masuk-FF_Qty_Keluar) >'0'
ECA026000-1940
select top 3 * from meka..mffcost

