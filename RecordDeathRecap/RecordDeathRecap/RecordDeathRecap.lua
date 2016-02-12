-- The addon namespace
RecordDeathRecap = {}

-- Shorthand
local Me = RecordDeathRecap

-- Our name
Me.name = "RecordDeathRecap"

-- Init function.  Grab saved variables.
function Me:Initialize()
   self.saved = ZO_SavedVars:New(self.name .. "SavedVariables", 1, nil, {})
   if (not self.saved.deaths) then
      self.saved.deaths = {}
   end

   -- Register for death event
   EVENT_MANAGER:RegisterForEvent(Me.name, EVENT_PLAYER_DEAD, function() self:OnPlayerDead() end)

end

-- Called on load
function Me.OnLoaded(event, addonName)
  if addonName == Me.name then
     Me:Initialize()
  end
end

-- Called on death
function Me.OnPlayerDead()
   if (IsUnitDead("player")) then
      local timeString = GetDateStringFromTimestamp(GetTimeStamp()) .. " " .. GetTimeString()
      Me.saved.deaths[timeString] = {}	 
      for i = 1, GetNumKillingAttacks() do
	 local name, damage, icon, wasKill, timeAgo, duration = GetKillingAttackInfo(i)
	 local killer = {};
	 if (DoesKillingAttackHaveAttacker(i)) then
	    local name, vr, lvl, rank, isPlayer, isBoss, alliance, minion = GetKillingAttackerInfo(i)
	    killer = {
	       name = name,
	       vr = vr,
	       lvl = lvl,
	       rank = rank,
	       isPlayer = isPlayer,
	       isBoss = isBoss,
	       alliance = alliance,
	       minion = minion
	    }
	 end
	 Me.saved.deaths[timeString][i] = {
            name = name,
	    damage = damage,
	    wasKill = wasKill,
	    timeAgo = timeAgo,
	    duration = duration,
	    killer = killer
	 }
      end
   end
end

-- Register for load event
EVENT_MANAGER:RegisterForEvent(Me.name, EVENT_ADD_ON_LOADED, Me.OnLoaded)
