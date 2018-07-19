select top 10 HPO_Nomor_PO,hpo_status,HPO_Flag_Posting from MEKA..TPOH where HPO_Nomor_PO='010118000323po'
--update meka..tpoh set hpo_status='' from MEKA..TPOH where HPO_Nomor_PO='010118000323po'

select top 100 * from MEKA..TPOH inner join meka..tpod on HPO_Nomor_PO=DPO_Nomor_PO 
where HPO_Nomor_PO='010117000376PO'

select top 100 * from MEKA..TPOd where dPO_Nomor_PO='010117000370PO'
and DPO_Harga_Beli='0'


--delete from MEKA..TPOd where dPO_Nomor_PO='010117000370PO'
and DPO_Harga_Beli='0'


select top 100 * from MEKA..TPOh where HPO_Nomor_PO='010118000341PO'
--update MEKA..TPOH set HPO_Supplier='201' from MEKA..TPOh where HPO_Nomor_PO='010118000341PO'