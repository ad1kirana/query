select top 100 * from MEKA..TPOH inner join MEKA..TPOD on HPO_Nomor_PO=DPO_Nomor_PO
where HPO_Nomor_PO='010117000356PO'

select top 10000 * from MEKA..TPOH inner join MEKA..TPOD on HPO_Nomor_PO=DPO_Nomor_PO
where HPO_Tanggal >='2017-01-01' and HPO_Supplier='002'