
Debug.SetAIName("ＶＷＸＹＺ")
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI)

Debug.SetPlayerInfo(0,900,0,0)
Debug.SetPlayerInfo(1,7400,0,0)

Debug.AddCard(70828912,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(24094653,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(51638941,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(42703248,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.AddCard(91998119,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK,true)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(23995346,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(65240384,1,1,LOCATION_MZONE,3,POS_FACEUP_DEFENSE)
Debug.AddCard(17985575,1,1,LOCATION_MZONE,4,POS_FACEUP_DEFENSE)

Debug.AddCard(97077563,0,0,LOCATION_SZONE,2,POS_FACEDOWN)

Debug.AddCard(96300057,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)
Debug.AddCard(82112775,0,0,LOCATION_GRAVE,0,POS_FACEDOWN)

Debug.AddCard(58859575,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)
Debug.AddCard(84243274,0,0,LOCATION_EXTRA,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()
Debug.ShowHint("１回合內取得勝利")
aux.BeginPuzzle()