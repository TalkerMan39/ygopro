--Re-contract Covenant
function c511001456.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	e1:SetHintTiming(0,TIMING_DRAW_PHASE)
	c:RegisterEffect(e1)
	--counter
	local e2=Effect.CreateEffect(c)
	e2:SetDescription(aux.Stringid(511001456,0))
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_O)
	e2:SetProperty(EFFECT_FLAG_DELAY)
	e2:SetCode(EVENT_CHAIN_DISABLED)
	e2:SetRange(LOCATION_SZONE)
	e2:SetCondition(c511001456.con)
	e2:SetTarget(c511001456.tg)
	e2:SetOperation(c511001456.op)
	c:RegisterEffect(e2)
	local e3=e2:Clone()
	e3:SetCode(EVENT_CHAIN_NEGATED)
	c:RegisterEffect(e3)
end
function c511001456.con(e,tp,eg,ep,ev,re,r,rp)
	return ep~=tp and re and re:GetHandler():IsType(TYPE_SPELL+TYPE_TRAP)
end
function c511001456.tg(e,tp,eg,ep,ev,re,r,rp,chk)
	local c=e:GetHandler()
	local tc=re:GetHandler()
	local condition=re:GetCondition()
	local cost=re:GetCost()
	local target=re:GetTarget()
	if chk==0 then return (not condition or condition(e,tp,eg,ep,ev,re,r,rp)) and (not cost or cost(e,tp,eg,ep,ev,re,r,rp,0)) 
		and (not target or target(e,tp,eg,ep,ev,re,r,rp,0)) end
	local e3=Effect.CreateEffect(c)
	e3:SetDescription(aux.Stringid(9765723,1))
	e3:SetCategory(CATEGORY_DAMAGE)
	e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
	e3:SetCode(EVENT_PHASE+PHASE_STANDBY)
	e3:SetRange(LOCATION_SZONE)
	e3:SetCountLimit(1)
	if Duel.GetTurnPlayer()==tp and Duel.GetCurrentPhase()==PHASE_STANDBY then
		e3:SetCondition(c511001456.damcon1)
		e3:SetLabel(Duel.GetTurnCount())
		e3:SetReset(RESET_EVENT+0x1fe0000+RESET_PHASE+PHASE_STANDBY+RESET_SELF_TURN,2)
	else
		e3:SetCondition(c511001456.damcon2)
		e3:SetReset(RESET_EVENT+0x1fe0000+RESET_PHASE+PHASE_STANDBY+RESET_SELF_TURN)
	end
	e3:SetCost(c511001456.damcost)
	e3:SetTarget(c511001456.damtg)
	e3:SetOperation(c511001456.damop)
	c:RegisterEffect(e3)
	Duel.Hint(HINT_CARD,0,tc:GetOriginalCode())
	Duel.ClearTargetCard()
	e:SetLabelObject(re)
	if cost then cost(e,tp,eg,ep,ev,re,r,rp,1) end
	e:SetCategory(re:GetCategory())
	e:SetProperty(re:GetProperty())
	if target and target(e,tp,eg,ep,ev,re,r,rp,0) then target(e,tp,eg,ep,ev,re,r,rp,1) end
end
function c511001456.op(e,tp,eg,ep,ev,re,r,rp)
	local te=e:GetLabelObject()
	if not te then return end
	local op=te:GetOperation()
	if op then op(e,tp,eg,ep,ev,re,r,rp) end
end
function c511001456.damcon1(e,tp,eg,ep,ev,re,r,rp)
	return Duel.GetTurnPlayer()==tp and Duel.GetTurnCount()~=e:GetLabel()
end
function c511001456.damcon2(e,tp,eg,ep,ev,re,r,rp)
	return Duel.GetTurnPlayer()==tp
end
function c511001456.damcost(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return e:GetHandler():GetFlagEffect(511001456)==0 end
	e:GetHandler():RegisterFlagEffect(511001456,RESET_EVENT+0x1fe0000+RESET_PHASE+PHASE_END,0,1)
end
function c511001456.damtg(e,tp,eg,ep,ev,re,r,rp,chk)
	if chk==0 then return true end
	Duel.SetTargetPlayer(tp)
	Duel.SetTargetParam(1000)
	Duel.SetOperationInfo(0,CATEGORY_DAMAGE,0,0,tp,1000)
end
function c511001456.damop(e,tp,eg,ep,ev,re,r,rp)
	if not e:GetHandler():IsRelateToEffect(e) then return end
	local p,d=Duel.GetChainInfo(0,CHAININFO_TARGET_PLAYER,CHAININFO_TARGET_PARAM)
	Duel.Damage(p,d,REASON_EFFECT)
end
