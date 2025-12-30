-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1, AG2_1, AG3_1, AG4_1
AG0_1 = Config
AG0_1 = AG0_1.esxSettings
AG0_1 = AG0_1.enabled
if AG0_1 then
  AG0_1 = Config
  AG0_1 = AG0_1.qbSettings
  AG0_1 = AG0_1.enabled
  if AG0_1 then
    AG0_1 = print
    AG1_1 = "^1BOTH FRAMEWORKS ENABLED!! MAKE SURE TO ONLY ENABLE ONE FRAMEWORK IN THE CONFIG FILE!"
    AG0_1(AG1_1)
  end
end
AG0_1 = "imp_prop_kq_lift_empty"
AG1_1 = "imp_prop_kq_lift_arms"
AG2_1 = Config
AG3_1 = {}
AG3_1.stepSize = 0.011
AG3_1.stepTime = 40
AG2_1.liftSmoothness = AG3_1
AG2_1 = Citizen
AG2_1 = AG2_1.CreateThread
function AG3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2
  while true do
    AG0_2 = Citizen
    AG0_2 = AG0_2.Wait
    AG1_2 = 5000
    AG0_2(AG1_2)
    AG0_2 = pairs
    AG1_2 = Config
    AG1_2 = AG1_2.locations
    AG0_2, AG1_2, AG2_2, AG3_2 = AG0_2(AG1_2)
    for AG4_2, AG5_2 in AG0_2, AG1_2, AG2_2, AG3_2 do
      AG6_2 = AG5_2.arms
      if AG6_2 then
        AG6_2 = DoesEntityExist
        AG7_2 = AG5_2.arms
        AG6_2 = AG6_2(AG7_2)
        if AG6_2 then
          goto AG_LABEL_41
        end
      end
      AG6_2 = GetClosestPlayer
      AG7_2 = AG5_2.x
      AG8_2 = AG5_2.y
      AG9_2 = AG5_2.z
      AG6_2 = AG6_2(AG7_2, AG8_2, AG9_2)
      if AG6_2 then
        AG5_2.armsCreator = AG6_2
        AG7_2 = TriggerClientEvent
        AG8_2 = "kq_carlift:createArms"
        AG9_2 = tonumber
        AG10_2 = AG6_2
        AG9_2 = AG9_2(AG10_2)
        AG10_2 = AG4_2
        AG7_2(AG8_2, AG9_2, AG10_2)
        AG7_2 = Debug
        AG8_2 = "Player "
        AG9_2 = AG6_2
        AG10_2 = " requested to create lift "
        AG11_2 = AG4_2
        AG12_2 = " arms"
        AG8_2 = AG8_2 .. AG9_2 .. AG10_2 .. AG11_2 .. AG12_2
        AG7_2(AG8_2)
      end
      -- [FIX IF ERROR] Move ::AG_LABEL_41:: outside nested blocks until all 'goto AG_LABEL_41' can see it
      ::AG_LABEL_41::
    end
    AG0_2 = Citizen
    AG0_2 = AG0_2.Wait
    AG1_2 = 10000
    AG0_2(AG1_2)
  end
end
AG2_1(AG3_1)
AG2_1 = RegisterServerEvent
AG3_1 = "kq_carlift:armsCreated"
AG2_1(AG3_1)
AG2_1 = AddEventHandler
AG3_1 = "kq_carlift:armsCreated"
function AG4_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2
  AG2_2 = Config
  AG2_2 = AG2_2.locations
  AG2_2 = AG2_2[AG0_2]
  AG2_2 = AG2_2.armsCreator
  AG3_2 = source
  if AG2_2 == AG3_2 then
    AG2_2 = Debug
    AG3_2 = source
    AG4_2 = " created arms "
    AG5_2 = AG1_2
    AG3_2 = AG3_2 .. AG4_2 .. AG5_2
    AG2_2(AG3_2)
    AG2_2 = Config
    AG2_2 = AG2_2.locations
    AG2_2 = AG2_2[AG0_2]
    AG2_2 = AG2_2.arms
    if AG2_2 then
      AG2_2 = DoesEntityExist
      AG3_2 = Config
      AG3_2 = AG3_2.locations
      AG3_2 = AG3_2[AG0_2]
      AG3_2 = AG3_2.arms
      AG2_2 = AG2_2(AG3_2)
      if AG2_2 then
        AG2_2 = Debug
        AG3_2 = "Old arms found. Deleted newly created arms"
        AG2_2(AG3_2)
        AG2_2 = DeleteEntity
        AG3_2 = NetworkGetEntityFromNetworkId
        AG4_2 = AG1_2
        AG3_2, AG4_2, AG5_2 = AG3_2(AG4_2)
        AG2_2(AG3_2, AG4_2, AG5_2)
        return
      end
    end
    AG2_2 = Config
    AG2_2 = AG2_2.locations
    AG2_2 = AG2_2[AG0_2]
    AG3_2 = NetworkGetEntityFromNetworkId
    AG4_2 = AG1_2
    AG3_2 = AG3_2(AG4_2)
    AG2_2.arms = AG3_2
    AG2_2 = SetEntityHeading
    AG3_2 = Config
    AG3_2 = AG3_2.locations
    AG3_2 = AG3_2[AG0_2]
    AG3_2 = AG3_2.arms
    AG4_2 = Config
    AG4_2 = AG4_2.locations
    AG4_2 = AG4_2[AG0_2]
    AG4_2 = AG4_2.h
    AG4_2 = AG4_2 + 180.0
    AG2_2(AG3_2, AG4_2)
    AG2_2 = Debug
    AG3_2 = "Arms kept"
    AG4_2 = DoesEntityExist
    AG5_2 = Config
    AG5_2 = AG5_2.locations
    AG5_2 = AG5_2[AG0_2]
    AG5_2 = AG5_2.arms
    AG4_2 = AG4_2(AG5_2)
    AG5_2 = Config
    AG5_2 = AG5_2.locations
    AG5_2 = AG5_2[AG0_2]
    AG5_2 = AG5_2.arms
    AG2_2(AG3_2, AG4_2, AG5_2)
    AG2_2 = Citizen
    AG2_2 = AG2_2.CreateThread
    function AG3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename AG0_1, AG1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3
      AG0_3 = Citizen
      AG0_3 = AG0_3.Wait
      AG1_3 = 5000
      AG0_3(AG1_3)
      AG0_3 = Debug
      AG1_3 = "Arms 5s check"
      AG2_3 = DoesEntityExist
      AG3_3 = Config
      AG3_3 = AG3_3.locations
      AG4_3 = AG0_2
      AG3_3 = AG3_3[AG4_3]
      AG3_3 = AG3_3.arms
      AG2_3 = AG2_3(AG3_3)
      AG3_3 = Config
      AG3_3 = AG3_3.locations
      AG4_3 = AG0_2
      AG3_3 = AG3_3[AG4_3]
      AG3_3 = AG3_3.arms
      AG0_3(AG1_3, AG2_3, AG3_3)
    end
    AG2_2(AG3_2)
  else
    AG2_2 = Debug
    AG3_2 = "Wrong owner. Deleted newly created arms"
    AG2_2(AG3_2)
    AG2_2 = DeleteEntity
    AG3_2 = NetworkGetEntityFromNetworkId
    AG4_2 = AG1_2
    AG3_2, AG4_2, AG5_2 = AG3_2(AG4_2)
    AG2_2(AG3_2, AG4_2, AG5_2)
  end
end
AG2_1(AG3_1, AG4_1)
function AG2_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2
  AG3_2 = nil
  AG4_2 = 500.0
  AG5_2 = ipairs
  AG6_2 = GetPlayers
  AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2 = AG6_2()
  AG5_2, AG6_2, AG7_2, AG8_2 = AG5_2(AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2)
  for AG9_2, AG10_2 in AG5_2, AG6_2, AG7_2, AG8_2 do
    AG11_2 = tonumber
    AG12_2 = AG10_2
    AG11_2 = AG11_2(AG12_2)
    AG10_2 = AG11_2
    AG11_2 = GetEntityCoords
    AG12_2 = GetPlayerPed
    AG13_2 = AG10_2
    AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2 = AG12_2(AG13_2)
    AG11_2 = AG11_2(AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2)
    AG12_2 = GetDistanceBetweenCoords
    AG13_2 = AG11_2.x
    AG14_2 = AG11_2.y
    AG15_2 = AG11_2.z
    AG16_2 = AG0_2
    AG17_2 = AG1_2
    AG18_2 = AG2_2
    AG12_2 = AG12_2(AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2)
    if AG4_2 > AG12_2 then
      AG3_2 = AG10_2
      AG4_2 = AG12_2
    end
  end
  return AG3_2
end
GetClosestPlayer = AG2_1
AG2_1 = AddEventHandler
AG3_1 = "onClientResourceStop"
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2
  AG1_2 = GetCurrentResourceName
  AG1_2 = AG1_2()
  if AG1_2 ~= AG0_2 then
    return
  end
  AG1_2 = pairs
  AG2_2 = lifts
  AG1_2, AG2_2, AG3_2, AG4_2 = AG1_2(AG2_2)
  for AG5_2, AG6_2 in AG1_2, AG2_2, AG3_2, AG4_2 do
    AG7_2 = DeleteEntity
    AG8_2 = AG6_2.lift
    AG7_2(AG8_2)
    AG7_2 = DeleteEntity
    AG8_2 = AG6_2.arms
    AG7_2(AG8_2)
  end
end
AG2_1(AG3_1, AG4_1)
AG2_1 = Config
AG2_1 = AG2_1.debug
if AG2_1 then
  AG2_1 = RegisterCommand
  AG3_1 = "lclear"
  function AG4_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2
    AG0_2 = pairs
    AG1_2 = Config
    AG1_2 = AG1_2.locations
    AG0_2, AG1_2, AG2_2, AG3_2 = AG0_2(AG1_2)
    for AG4_2, AG5_2 in AG0_2, AG1_2, AG2_2, AG3_2 do
      AG6_2 = DeleteEntity
      AG7_2 = AG5_2.lift
      AG6_2(AG7_2)
      AG6_2 = DeleteEntity
      AG7_2 = AG5_2.arms
      AG6_2(AG7_2)
    end
  end
  AG2_1(AG3_1, AG4_1)
end
AG2_1 = RegisterServerEvent
AG3_1 = "kq_carlift:up"
AG2_1(AG3_1)
AG2_1 = AddEventHandler
AG3_1 = "kq_carlift:up"
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2
  if not AG0_2 then
    return
  end
  AG1_2 = GoUp
  AG2_2 = AG0_2
  AG1_2(AG2_2)
end
AG2_1(AG3_1, AG4_1)
function AG2_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = Config
  AG1_2 = AG1_2.locations
  AG1_2 = AG1_2[AG0_2]
  AG2_2 = SetEntityHeading
  AG3_2 = AG1_2.arms
  AG4_2 = AG1_2.h
  AG2_2(AG3_2, AG4_2)
  AG2_2 = AG1_2.event
  if "up" ~= AG2_2 then
    AG2_2 = Entity
    AG3_2 = AG1_2.arms
    AG2_2 = AG2_2(AG3_2)
    AG2_2 = AG2_2.state
    AG2_2 = AG2_2.liftLocked
    if not AG2_2 then
      goto AG_LABEL_19
    end
  end
  return
  -- [FIX IF ERROR] Move ::AG_LABEL_19:: outside nested blocks until all 'goto AG_LABEL_19' can see it
  ::AG_LABEL_19::
  AG2_2 = SetEvent
  AG3_2 = AG0_2
  AG4_2 = "up"
  AG2_2(AG3_2, AG4_2)
  AG2_2 = Citizen
  AG2_2 = AG2_2.CreateThread
  function AG3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3
    AG0_3 = GetEntityCoords
    AG1_3 = AG1_2.arms
    AG0_3 = AG0_3(AG1_3)
    AG0_3 = AG0_3.z
    AG1_3 = Config
    AG1_3 = AG1_3.locations
    AG2_3 = AG0_2
    AG1_3 = AG1_3[AG2_3]
    AG1_3 = AG1_3.z
    AG1_3 = AG1_3 - 1.0
    AG0_3 = AG0_3 - AG1_3
    while true do
      AG1_3 = 2.1
      if not (AG0_3 < AG1_3) then
        break
      end
      AG1_3 = AG1_2.event
      if "up" ~= AG1_3 then
        break
      end
      AG1_3 = Entity
      AG2_3 = AG1_2.arms
      AG1_3 = AG1_3(AG2_3)
      AG1_3 = AG1_3.state
      AG1_3 = AG1_3.liftLocked
      if AG1_3 then
        break
      end
      AG1_3 = Config
      AG1_3 = AG1_3.locations
      AG2_3 = AG0_2
      AG1_3 = AG1_3[AG2_3]
      AG2_3 = Config
      AG2_3 = AG2_3.liftSmoothness
      AG2_3 = AG2_3.stepSize
      AG0_3 = AG0_3 + AG2_3
      AG2_3 = SetEntityCoords
      AG3_3 = AG1_2.arms
      AG4_3 = AG1_3.x
      AG5_3 = AG1_3.y
      AG6_3 = AG1_3.z
      AG6_3 = AG6_3 - 1.0
      AG6_3 = AG6_3 + AG0_3
      AG7_3 = 0
      AG8_3 = 0
      AG9_3 = 0
      AG10_3 = 1
      AG2_3(AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3)
      AG2_3 = Citizen
      AG2_3 = AG2_3.Wait
      AG3_3 = Config
      AG3_3 = AG3_3.liftSmoothness
      AG3_3 = AG3_3.stepTime
      AG2_3(AG3_3)
    end
    AG1_3 = AG1_2.event
    if "up" == AG1_3 then
      AG1_3 = SetEvent
      AG2_3 = AG0_2
      AG3_3 = "none"
      AG1_3(AG2_3, AG3_3)
    end
  end
  AG2_2(AG3_2)
end
GoUp = AG2_1
AG2_1 = RegisterServerEvent
AG3_1 = "kq_carlift:stop"
AG2_1(AG3_1)
AG2_1 = AddEventHandler
AG3_1 = "kq_carlift:stop"
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2
  if not AG0_2 then
    return
  end
  AG1_2 = Stop
  AG2_2 = AG0_2
  AG1_2(AG2_2)
end
AG2_1(AG3_1, AG4_1)
function AG2_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = Config
  AG1_2 = AG1_2.locations
  AG1_2 = AG1_2[AG0_2]
  AG2_2 = SetEvent
  AG3_2 = AG0_2
  AG4_2 = "none"
  AG2_2(AG3_2, AG4_2)
end
Stop = AG2_1
AG2_1 = RegisterServerEvent
AG3_1 = "kq_carlift:down"
AG2_1(AG3_1)
AG2_1 = AddEventHandler
AG3_1 = "kq_carlift:down"
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2
  if not AG0_2 then
    return
  end
  AG1_2 = GoDown
  AG2_2 = AG0_2
  AG1_2(AG2_2)
end
AG2_1(AG3_1, AG4_1)
function AG2_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = Config
  AG1_2 = AG1_2.locations
  AG1_2 = AG1_2[AG0_2]
  AG2_2 = AG1_2.event
  if "down" ~= AG2_2 then
    AG2_2 = Entity
    AG3_2 = AG1_2.arms
    AG2_2 = AG2_2(AG3_2)
    AG2_2 = AG2_2.state
    AG2_2 = AG2_2.liftLocked
    if not AG2_2 then
      goto AG_LABEL_15
    end
  end
  return
  -- [FIX IF ERROR] Move ::AG_LABEL_15:: outside nested blocks until all 'goto AG_LABEL_15' can see it
  ::AG_LABEL_15::
  AG2_2 = SetEvent
  AG3_2 = AG0_2
  AG4_2 = "down"
  AG2_2(AG3_2, AG4_2)
  AG2_2 = Citizen
  AG2_2 = AG2_2.CreateThread
  function AG3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3
    AG0_3 = GetEntityCoords
    AG1_3 = AG1_2.arms
    AG0_3 = AG0_3(AG1_3)
    AG0_3 = AG0_3.z
    AG1_3 = Config
    AG1_3 = AG1_3.locations
    AG2_3 = AG0_2
    AG1_3 = AG1_3[AG2_3]
    AG1_3 = AG1_3.z
    AG1_3 = AG1_3 - 1.0
    AG0_3 = AG0_3 - AG1_3
    while AG0_3 > 0.0 do
      AG1_3 = AG1_2.event
      if "down" ~= AG1_3 then
        break
      end
      AG1_3 = Entity
      AG2_3 = AG1_2.arms
      AG1_3 = AG1_3(AG2_3)
      AG1_3 = AG1_3.state
      AG1_3 = AG1_3.liftLocked
      if AG1_3 then
        break
      end
      AG1_3 = Config
      AG1_3 = AG1_3.locations
      AG2_3 = AG0_2
      AG1_3 = AG1_3[AG2_3]
      AG2_3 = Config
      AG2_3 = AG2_3.liftSmoothness
      AG2_3 = AG2_3.stepSize
      AG0_3 = AG0_3 - AG2_3
      AG2_3 = SetEntityCoords
      AG3_3 = AG1_2.arms
      AG4_3 = AG1_3.x
      AG5_3 = AG1_3.y
      AG6_3 = AG1_3.z
      AG6_3 = AG6_3 - 1.0
      AG6_3 = AG6_3 + AG0_3
      AG7_3 = 0
      AG8_3 = 0
      AG9_3 = 0
      AG10_3 = 1
      AG2_3(AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3)
      AG2_3 = Citizen
      AG2_3 = AG2_3.Wait
      AG3_3 = Config
      AG3_3 = AG3_3.liftSmoothness
      AG3_3 = AG3_3.stepTime
      AG2_3(AG3_3)
    end
    AG1_3 = AG1_2.event
    if "down" == AG1_3 then
      AG1_3 = SetEvent
      AG2_3 = AG0_2
      AG3_3 = "none"
      AG1_3(AG2_3, AG3_3)
    end
  end
  AG2_2(AG3_2)
end
GoDown = AG2_1
function AG2_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2
  AG2_2 = Config
  AG2_2 = AG2_2.locations
  AG2_2 = AG2_2[AG0_2]
  AG2_2.event = AG1_2
  AG3_2 = DoesEntityExist
  AG4_2 = AG2_2.arms
  AG3_2 = AG3_2(AG4_2)
  if AG3_2 then
    AG3_2 = Entity
    AG4_2 = AG2_2.arms
    AG3_2 = AG3_2(AG4_2)
    AG3_2 = AG3_2.state
    AG3_2.event = AG1_2
  end
end
SetEvent = AG2_1
function AG2_1(AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG6_2, AG7_2
  AG6_2 = AG3_2 - AG0_2
  AG6_2 = AG6_2 ^ 2
  AG7_2 = AG4_2 - AG1_2
  AG7_2 = AG7_2 ^ 2
  AG6_2 = AG6_2 + AG7_2
  AG7_2 = AG5_2 - AG2_2
  AG7_2 = AG7_2 ^ 2
  AG6_2 = AG6_2 + AG7_2
  AG6_2 = AG6_2 ^ 0.5
  return AG6_2
end
GetDistanceBetweenCoords = AG2_1
function AG2_1(AG0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2
  AG1_2 = Config
  AG1_2 = AG1_2.debug
  if AG1_2 then
    AG1_2 = print
    AG2_2 = AG0_2
    AG3_2 = ...
    AG1_2(AG2_2, AG3_2)
  end
end
Debug = AG2_1
