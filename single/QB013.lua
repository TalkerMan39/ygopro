--QB解谜13
Debug.SetAIName("高性能电子头脑")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)
Debug.SetPlayerInfo(0,1000,0,0)
Debug.SetPlayerInfo(1,10000,0,0)
--怪区1 
Debug.AddCard(89631139,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK) --青眼白龙
Debug.AddCard(89631139,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE) --青眼白龙

--怪区0 
Debug.AddCard(87621407,0,0,LOCATION_MZONE,1,POS_FACEDOWN)--魔装机关车
Debug.AddCard(07089711,0,0,LOCATION_MZONE,2,POS_FACEDOWN)--哈尼哈尼
--卡组0 
Debug.AddCard(07093411,0,0,LOCATION_DECK,0,POS_FACEDOWN)--青玉飞马
Debug.AddCard(79759861,0,0,LOCATION_DECK,0,POS_FACEDOWN)--对死者的供奉
Debug.AddCard(68215963,0,0,LOCATION_DECK,0,POS_FACEDOWN)--翡翠龟
Debug.AddCard(00295517,0,0,LOCATION_DECK,0,POS_FACEDOWN)--传说之都-亚特兰蒂斯
--后场0 
Debug.AddCard(07093411,0,0,LOCATION_SZONE,0,POS_FACEUP)--青玉飞马
Debug.AddCard(69937550,0,0,LOCATION_SZONE,1,POS_FACEUP)--琥珀猛犸
Debug.AddCard(32710364,0,0,LOCATION_SZONE,2,POS_FACEUP)--红玉兽
Debug.AddCard(95600067,0,0,LOCATION_SZONE,3,POS_FACEUP)--黄玉虎
Debug.AddCard(21698716,0,0,LOCATION_SZONE,4,POS_FACEUP)--蓝钴鹰
Debug.AddCard(34487429,0,0,LOCATION_SZONE,5,POS_FACEUP)--虹之古代都市
--手牌0   ，，,，，，
Debug.AddCard(18318842,0,0,LOCATION_HAND,0,POS_FACEDOWN)--深渊士兵
Debug.AddCard(43793530,0,0,LOCATION_HAND,0,POS_FACEDOWN)--魔蜥义豪
Debug.AddCard(96677818,0,0,LOCATION_HAND,0,POS_FACEDOWN)--魔导书整理
Debug.AddCard(79759861,0,0,LOCATION_HAND,0,POS_FACEDOWN)--对死者的供奉
Debug.AddCard(74825788,0,0,LOCATION_HAND,0,POS_FACEDOWN)--H-火热之心
Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)--过早的埋葬

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