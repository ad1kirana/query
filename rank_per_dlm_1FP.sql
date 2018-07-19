
SELECT t.hs_customer,t.cust_nama,'FP',t.hs_tanggal, t.hs_nomor_faktur,
RANK() OVER(PARTITION BY t.ds_nomor_faktur ORDER BY t.row_id) AS rank,
t.DS_Kode_Barang,t.TYPE_NAMA,t.TYPE_KODE_SPL_1
FROM (SELECT *, ROW_NUMBER() OVER(ORDER BY ds_nomor_faktur) AS row_id  FROM 
tSLSH inner join MEKA..tslsd on HS_Nomor_Faktur=DS_Nomor_Faktur inner join 
meka..mtipe on ds_kode_barang=type_kode inner join MEKA..MCUST on HS_Customer=CUST_Kode
WHERE 
HS_Cabang='01' and TYPE_KODE_GROUP='inp' and HS_Tanggal='2017-12-04') AS t

