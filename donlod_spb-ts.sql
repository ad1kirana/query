select hts_nomor_spb,hts_no_tran_stock,hts_tanggal from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock
where hts_tanggal between '2016-10-01' and '2016-12-31' and dts_product like 'om%'
and hts_cabang='01'

select top 10 * from meka..ttsh