select top 100 * from meka..mcsbus where seg_kode='4'
--update meka..mcsbus set seg_description='K-Out-PC/OthSeg' from meka..mcsbus where seg_kode='4'

--1	Retail/WCC MCO                
--2	Grosir/WCC PCMO               
--3	End User/BW Rimula            
--4	K-Out-PC/OthSeg               
--5	Key Outlet MCO                
--6	IWS Chain PCMO                
--7	BW HELIX                      
--8	BW ADVANCE                    
--9	IWS CHAIN MCO                 

select top 1000 * from meka..mcust where cust_klasifikasi_2='5' and cust_cabang='01'
--update meka..mcust set cust_klasifikasi_2='1' from meka..mcust where cust_klasifikasi_2='5' and cust_cabang='01'