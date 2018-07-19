select top 100 * from sjtrade..usermenu a inner join sjtrade..mastermenu b on a.menu=b.menu where a.menu between 'ad5' and 'ad6'
select top 100 * from sjtrade..usermenu where menu between 'ad5' and 'ad6'
--delete from sjtrade..usermenu where menu between 'ad5' and 'ad6'