select PayBranch,payinvoiceno,PayDate,
PayTipe, payinvoiceamount,HRC_Nilai_Total_Retr
from MEKA..PayPoint
 left join MEKA..TRTRH on PayInvoiceNo=HRC_Eks_Faktur
where PayDate between '2017-01-01' and '2018-02-28'
order by PayInvoiceNo asc,PayBranch asc

group by PayBranch,year(paydate),
month(paydate)
,PayTipe



select top 10 * from MEKA..TRTRH

DATENAME(MM, GETDATE()) + ' ' + CAST(YEAR(GETDATE()) AS VARCHAR(4)) AS [Month YYYY]

select TODA