select top 1000000 part_cabang,part_kode_wh,type_status,part_kode_group,rtrim(part_kode),part_nama,part_dbp, part_harga_jual
select *  from meka..mpart inner join meka..mtipe on part_kode=type_kode 
inner join meka..mprod on type_kode_group=product_kode
where 
part_kode_wh='25' and
part_cabang between '03' and '03'
and type_status ='0'
--and part_stock_bisa_jual>'1'
--and part_kode_group <> 'tgp' 
--and part_kode like 'jasa-oil%'
and product_supplier='002'
