select top 10 * from meka..mtipe where type_kode='ABB AN768WK' and type_kode_group='aba'
--update meka..mtipe set type_kode='ABB AN768WK', type_kode_group='ABB' from meka..mtipe where type_kode='ABA AN768WK' and type_kode_group='aba'
select top 10 * from meka..mtipe where type_kode='ABA AN492WK' and type_kode_group='aba'
--update meka..mtipe set type_kode='ABB AN492WK', type_kode_group='ABB' from meka..mtipe where type_kode='ABA AN492WK' and type_kode_group='aba'
select top 10 * from meka..mtipe where type_kode='ABA AN654WK' and type_kode_group='aba'
--update meka..mtipe set type_kode='ABB AN654WK', type_kode_group='ABB' from meka..mtipe where type_kode='ABA AN654WK' and type_kode_group='aba'
select top 10 * from meka..mtipe where type_kode='ABB AN654WK' --(gak ada)
select top 10 * from meka..mtipe where type_kode='ABB AN768WK' --ada
select top 10 * from meka..mtipe where type_kode='ABb AN492WK' --gak ada

select top 10 * from meka..mpart where part_kode='ABA AN492WK' --ada
select top 10 * from meka..mpart where part_kode='ABA AN654WK' --ada
select top 10 * from meka..mpart where part_kode='ABA AN768WK' --gak ada

select top 10 * from meka..mpart where part_kode='ABB AN492WK' --ada
select top 10 * from meka..mpart where part_kode='ABB AN654WK' --ada
select top 10 * from meka..mpart where part_kode='ABB AN768WK' --gak ada


--update meka..mpart set part_kode='ABB AN492WK', part_kode_group='ABB' from meka..mpart where part_kode='ABA AN492WK' --ada
--update meka..mpart set part_kode='ABB AN654WK', part_kode_group='ABB' from meka..mpart where part_kode='ABA AN654WK' --ada
--update meka..mpart set part_kode='ABB AN768WK', part_kode_group='ABB' from meka..mpart where part_kode='ABA AN768WK' --gak ada
