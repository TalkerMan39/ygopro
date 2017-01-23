--Ascension Spiral
function c511000511.initial_effect(c)
	--Activate
	local e1=Effect.CreateEffect(c)
	e1:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e1:SetType(EFFECT_TYPE_ACTIVATE)
	e1:SetCode(EVENT_FREE_CHAIN)
	e1:SetHintTiming(0,TIMING_END_PHASE)
	e1:SetLabel(0)
	e1:SetCost(c511000511.cost)
	e1:SetTarget(c511000511.target)
	e1:SetOperation(c511000511.activate)
	c:RegisterEffect(e1)
end
function c511000511.cost(e,tp,eg,ep,ev,re,r,rp,chk)
	e:SetLabel(1)
	if chk==0 then return true end
end
function c511000511.filter(c,e,tp,tid)
	local rk=c:GetRank()
	return c:IsType(TYPE_XYZ) and c:IsReason(REASON_DESTROY) and c:GetTurnID()==tid and c:IsAbleToRemove() and Duel.IsExistingTarget(c511000511.spfilter,tp,LOCATION_EXTRA,0,1,nil,e,tp,rk)
end
function c511000511.spfilter(c,e,tp,rk)
	return c:IsType(TYPE_XYZ) and c:GetRank()==rk+2 and c:IsCanBeSpecialSummoned(e,0,tp,true,false)
end
function c511000511.target(e,tp,eg,ep,ev,re,r,rp,chk)
	local tid=Duel.GetTurnCount()
	if chk==0 then
		if e:GetLabel()~=1 then return false end
		e:SetLabel(0)
		return Duel.IsExistingMatchingCard(c511000511.filter,tp,LOCATION_GRAVE,0,1,nil,e,tp,tid) 
			and Duel.GetLocationCount(tp,LOCATION_MZONE)>0 end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_REMOVE)
	local rg=Duel.SelectMatchingCard(tp,c511000511.filter,tp,LOCATION_GRAVE,0,1,1,nil,e,tp,tid)
	Duel.Remove(rg,POS_FACEUP,REASON_COST)
	Duel.SetTargetParam(rg:GetFirst():GetRank())
	Duel.SetOperationInfo(0,CATEGORY_SPECIAL_SUMMON,nil,1,0,0)
end
function c511000511.activate(e,tp,eg,ep,ev,re,r,rp)
	if Duel.GetLocationCount(tp,LOCATION_MZONE)<=0 then return end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_SPSUMMON)
	local g=Duel.SelectMatchingCard(tp,c511000511.spfilter,tp,LOCATION_EXTRA,0,1,1,nil,e,tp,Duel.GetChainInfo(0,CHAININFO_TARGET_PARAM))
	Duel.SpecialSummon(g,0,tp,tp,true,false,POS_FACEUP)
end
