select sales_kode,sales_nama,sales_supervisor from meka..mslsmn where sales_cabang<>'20'

select product_kode,product_nama,description,sup_kode_supplier,sup_nama from meka..mprod inner join meka..mspl 
on product_supplier=sup_kode_supplier
inner join meka..mgprod on product_group=kode_group
select top 10 * from meka..mgprod