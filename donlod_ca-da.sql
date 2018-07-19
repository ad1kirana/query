select hdkn_cabang,hdkn_date,hdkn_no_ca,hdkn_eks_faktur,hdkn_customer_code,'',hdkn_total_cost,hdkn_ref_number,ddkn_description from meka..tcah inner join meka..tcad on hdkn_no_ca=ddkn_no_ca
where hdkn_cabang='08'
and year(hdkn_date)=2017
and month(hdkn_date)=06
order by hdkn_no_ca asc

select top 3 * from meka..tcah