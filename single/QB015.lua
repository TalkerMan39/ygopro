--QB解谜15
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,2500,0,0)
Debug.SetPlayerInfo(1,9800,0,0)

--怪区1 
Debug.AddCard(52352005,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK) --加特姆士
Debug.AddCard(09012916,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --黑羽龙
--墓地1   
Debug.AddCard(94081496,1,1,LOCATION_GRAVE,0,POS_FACEUP)--黑亮的G

--卡组0 
Debug.AddCard(36484016,0,0,LOCATION_DECK,0,POS_FACEDOWN)--奇迹同调融合
Debug.AddCard(59575539,0,0,LOCATION_DECK,0,POS_FACEDOWN)--天眼通
--后场0 
Debug.AddCard(83778600,0,0,LOCATION_SZONE,1,POS_FACEDOWN)--错误苏生
Debug.AddCard(71587526,0,0,LOCATION_SZONE,2,POS_FACEDOWN)--因果切断
Debug.AddCard(23440062,0,0,LOCATION_SZONE,3,POS_FACEDOWN)--邪恶复活
--手牌0 
Debug.AddCard(87910978,0,0,LOCATION_HAND,0,POS_FACEDOWN)--洗脑
Debug.AddCard(97651498,0,0,LOCATION_HAND,0,POS_FACEDOWN)--魔轰神路里
Debug.AddCard(67723438,0,0,LOCATION_HAND,0,POS_FACEDOWN)--紧急瞬间移动
Debug.AddCard(15839054,0,0,LOCATION_HAND,0,POS_FACEDOWN)--同调融合者
Debug.AddCard(23557835,0,0,LOCATION_HAND,0,POS_FACEDOWN)--次元融合
--额外0   ,，
Debug.AddCard(43385557,0,0,LOCATION_DECK,0,POS_FACEDOWN)--魔力人造人
Debug.AddCard(32646477,0,0,LOCATION_DECK,0,POS_FACEDOWN)--暗黑俯冲轰炸机
Debug.AddCard(40101111,0,0,LOCATION_DECK,0,POS_FACEDOWN)--究极念动力体
--除外

Debug.ReloadFieldEnd()
Debug.ShowHint("Win in this turn!")
aux.BeginPuzzle()
--注释

--LOCATION_DECK  卡组
--LOCATION_SZONE  后场
--LOCATION_GRAVE   墓地
--LOCATION_HAND    手牌
--LOCATION_MZONE   怪区
--LOCATION_EXTRA  额外
--LOCATION_REMOVED  除外
--POS_FACEDOWN   里侧
--POS_FACEUP     表侧
--POS_FACEUP_DEFENSE    表侧防守
--POS_FACEUP_ATTACK     表侧攻击
--Debug.PreEquip(e1,c1)  绑定e1和C1