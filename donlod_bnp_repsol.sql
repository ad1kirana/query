select hts_cabang,hts_no_tran_stock,hts_tanggal,hts_kode_warehous,hts_jenis_spb,hts_kode_customer,dts_product,dts_kode_barang,dts_qty,hts_keterangan from meka..ttsh inner join meka..ttsd on hts_no_tran_stock=dts_nomor_t_stock where hts_jenis_spb='bn/p' and hts_cabang='30' and hts_keterangan like '%jan%'


select js_so,js_kode_area,js_kode_sales,js_customer,cust_nama,cust_alamat_1,cust_kota,js_sts from meka..mrjdwsl left join meka..mcust on js_customer=cust_kode where js_kode_sales like '0%'