select userid,ori_password,mobileno 
from sjtrade..userlogin where userid='udin'
--update sjtrade..userlogin set ori_password='Mekadashboard' from sjtrade..userlogin where userid='kodari'
--update sjtrade..userlogin set ori_password='v3KQ-G' from sjtrade..userlogin where userid='spv08'
--update sjtrade..userlogin set mobileno='081280840319' from sjtrade..userlogin where userid='widijarto'

select * from sjtrade..userlogin where lastlogout >'2017-03-01'
