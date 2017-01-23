
Debug.SetAIName("ドラゴン・キラー")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,10000,0,0)
Debug.SetPlayerInfo(1,10000,0,0)

Debug.AddCard(18161786,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64047146,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(64751286,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(69933858,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(05318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(06967870,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
local m01 = Debug.AddCard(38479725,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
local m02 = Debug.AddCard(74591968,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
local m03 = Debug.AddCard(88472456,0,0,LOCATION_MZONE,3,POS_FACEUP_ATTACK)
local m04 = Debug.AddCard(94004268,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(94004268,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,1,POS_FACEUP_DEFENSE)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,2,POS_FACEUP_DEFENSE)
Debug.AddCard(62873545,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(34124316,1,1,LOCATION_MZONE,4,POS_FACEDOWN_DEFENSE)

Debug.AddCard(04178474,0,0,LOCATION_SZONE,0,POS_FACEDOWN)
local s01 = Debug.AddCard(83746708,0,0,LOCATION_SZONE,1,POS_FACEUP)
local s02 = Debug.AddCard(21900719,0,0,LOCATION_SZONE,2,POS_FACEUP)
local s03 = Debug.AddCard(21900719,0,0,LOCATION_SZONE,3,POS_FACEUP)
local s04 = Debug.AddCard(56747793,0,0,LOCATION_SZONE,4,POS_FACEUP)
Debug.AddCard(85742772,1,1,LOCATION_SZONE,2,POS_FACEUP)
Debug.AddCard(33950246,1,1,LOCATION_SZONE,3,POS_FACEUP)
Debug.AddCard(56594520,1,1,LOCATION_SZONE,5,POS_FACEUP)

Debug.PreEquip(s01,m01)
Debug.PreEquip(s02,m02)
Debug.PreEquip(s03,m03)
Debug.PreEquip(s04,m04)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()