-- Where to read the saved variables from
local savedVariables = "SavedVariables/RecordDeathRecap.lua"

-- Load them
dofile(savedVariables)

-- Pointer to entries to process
local deaths = RecordDeathRecapSavedVariables["Default"]["@smacx250"]["Urlama"]["deaths"];

-- For each death, for each skill
local sums = {}
local counts = {}
local sumsqr = {}
local aves = {}
local maxes = {}
local mins = {}
local death, deathent
local num = 0
for death,deathent in pairs(deaths) do
   local m,d,y = string.match(death,'(%d+)/(%d+)/(%d+)');
   if ((tonumber(y) > 2015 or tonumber(m) > 8) and not (tonumber(m) == 9 and tonumber(d) == 5)) then
      num = num + 1
      local skill, skillent
      for skill,skillent in pairs(deathent) do
	 if (skillent.killer.isPlayer) then
	    local skillname = skillent.name
	    local damage = skillent.damage
	    if (not maxes[skillname] or damage > maxes[skillname]) then
	       maxes[skillname] = damage
	    end
	    if (not mins[skillname] or damage < mins[skillname]) then
	       mins[skillname] = damage
	    end
	    if (not counts[skillname]) then
	       sums[skillname] = 0
	       counts[skillname] = 0
	       sumsqr[skillname] = 0
	    end
	    sums[skillname] = sums[skillname] + damage
	    counts[skillname] = counts[skillname] + 1
	    aves[skillname] = sums[skillname] / counts[skillname]
	    --local line = string.format("%s = %d(%d,%d,%d)\n", skillname, damage, sums[skillname],counts[skillname],aves[skillname])
	    --io.write(line)
	 end
      end
   end
end

for death,deathent in pairs(deaths) do
   local m,d,y = string.match(death,'(%d+)/(%d+)/(%d+)');
   if ((tonumber(y) > 2015 or tonumber(m) > 8) and not (tonumber(m) == 9 and tonumber(d) == 5)) then
      local skill,skillent
      for skill,skillent in pairs(deathent) do
	 if (skillent.killer.isPlayer) then
	    local skillname = skillent.name
	    local damage = skillent.damage
	    sumsqr[skillname] = sumsqr[skillname] + ((aves[skillname] - damage) * (aves[skillname] - damage))
	 end
      end
   end
end

local stddev = {}
for skill in pairs(counts) do
   stddev[skill] = math.sqrt(sumsqr[skill]/counts[skill])
end
io.write("Skill,Total,Average,Max,MaxErr,Min,MinErr,StdDev,Count\n")
for skill in pairs(counts) do
   local line = string.format("%s,%d,%d,%d,%d,%d,%d,%d,%d\n", skill, aves[skill] * counts[skill], aves[skill], maxes[skill], maxes[skill]-aves[skill], mins[skill], aves[skill]-mins[skill], stddev[skill], counts[skill]);
   io.write(line)
end

io.write("NUM: ")
io.write(num)
io.write("\n")
