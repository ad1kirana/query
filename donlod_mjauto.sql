select tcoa_company,tcoa_cabang,tcoa_jenis_transaksi,kmts_keterangan,tcoa_traksaksi_debit, tcoa_mutasi_debit,tcoa_transaksi_credit,tcoa_mutasi_credit
from meka..mjauto inner join meka..kodemts on tcoa_jenis_transaksi=kmts_kode
where tcoa_company <>'20'
select top 10 * from meka..mjauto
