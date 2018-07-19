select PayBranch,--PaySalesoffice,
year(paydate) as tahun,
RIGHT('0' + RTRIM(MONTH(PayDate)), 2) as bln,
PayTipe,
SUM(payinvoiceamount), sum(HRC_Nilai_Total_Retr)
from MEKA..PayPoint
 left join MEKA..TRTRH on PayInvoiceNo=HRC_Eks_Faktur
where PayDate between '2018-01-01' and '2018-05-31' and paybranch='04'
group by PayBranch,year(paydate),month(paydate),PayTipe
order by tahun asc, bln asc,PayBranch asc


select PayBranch,year(paydate) as tahun,--RIGHT('0' + RTRIM(MONTH(PayDate)), 2) as bln,
PayTipe, SUM(payinvoiceamount), sum(HRC_Nilai_Total_Retr)
from MEKA..PayPoint
 left join MEKA..TRTRH on PayInvoiceNo=HRC_Eks_Faktur
where PayDate between '2018-01-01' and '2018-05-31' and paybranch='04'
group by PayBranch,year(paydate),--month(paydate),
PayTipe
order by tahun asc, --bln asc,
PayBranch asc



select top 10 * from MEKA..TRTRH

DATENAME(MM, GETDATE()) + ' ' + CAST(YEAR(GETDATE()) AS VARCHAR(4)) AS [Month YYYY]