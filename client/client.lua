-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1, AG2_1, AG3_1, AG4_1, AG5_1, AG6_1
AG0_1 = {}
AG0_1.ESC = 322
AG0_1.F1 = 288
AG0_1.F2 = 289
AG0_1.F3 = 170
AG0_1.F5 = 166
AG0_1.F6 = 167
AG0_1.F7 = 168
AG0_1.F8 = 169
AG0_1.F9 = 56
AG0_1.F10 = 57
AG0_1["~"] = 243
AG0_1["1"] = 157
AG0_1["2"] = 158
AG0_1["3"] = 160
AG0_1["4"] = 164
AG0_1["5"] = 165
AG0_1["6"] = 159
AG0_1["7"] = 161
AG0_1["8"] = 162
AG0_1["9"] = 163
AG0_1["-"] = 84
AG0_1["="] = 83
AG0_1.BACKSPACE = 177
AG0_1.TAB = 37
AG0_1.Q = 44
AG0_1.W = 32
AG0_1.E = 38
AG0_1.R = 45
AG0_1.T = 245
AG0_1.Y = 246
AG0_1.U = 303
AG0_1.P = 199
AG0_1["["] = 39
AG0_1["]"] = 40
AG0_1.ENTER = 18
AG0_1.CAPS = 137
AG0_1.A = 34
AG0_1.S = 8
AG0_1.D = 9
AG0_1.F = 23
AG0_1.G = 47
AG0_1.H = 74
AG0_1.K = 311
AG0_1.L = 182
AG0_1.LEFTSHIFT = 21
AG0_1.Z = 20
AG0_1.X = 73
AG0_1.C = 26
AG0_1.V = 0
AG0_1.B = 29
AG0_1.N = 249
AG0_1.M = 244
AG0_1[","] = 82
AG0_1["."] = 81
AG0_1.LEFTCTRL = 36
AG0_1.LEFTALT = 19
AG0_1.SPACE = 22
AG0_1.RIGHTCTRL = 70
AG0_1.HOME = 213
AG0_1.PAGEUP = 10
AG0_1.PAGEDOWN = 11
AG0_1.DELETE = 178
AG0_1.LEFT = 174
AG0_1.RIGHT = 175
AG0_1.TOP = 27
AG0_1.DOWN = 173
AG0_1.NENTER = 201
AG0_1.N4 = 108
AG0_1.N5 = 60
AG0_1.N6 = 107
AG0_1["N+"] = 96
AG0_1["N-"] = 97
AG0_1.N7 = 117
AG0_1.N8 = 61
AG0_1.N9 = 118
AG1_1 = {}
playerJob = nil
AG2_1 = "imp_prop_kq_lift_empty"
AG3_1 = "imp_prop_kq_lift_arms"
AG4_1 = Citizen
AG4_1 = AG4_1.CreateThread
function AG5_1()
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
    AG6_2 = AG5_2.lift
    if not AG6_2 then
      AG6_2 = DoesEntityExist
      AG7_2 = AG5_2.lift
      AG6_2 = AG6_2(AG7_2)
      if not AG6_2 then
        AG6_2 = CreateLift
        AG7_2 = AG4_2
        AG6_2(AG7_2)
      end
    end
  end
end
AG4_1(AG5_1)
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2
  AG1_2 = Citizen
  AG1_2 = AG1_2.CreateThread
  function AG2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3
    AG0_3 = Config
    AG0_3 = AG0_3.locations
    AG1_3 = AG0_2
    AG0_3 = AG0_3[AG1_3]
    AG1_3 = PlayerPedId
    AG1_3 = AG1_3()
    while not AG1_3 do
      AG2_3 = Citizen
      AG2_3 = AG2_3.Wait
      AG3_3 = 3000
      AG2_3(AG3_3)
    end
    AG2_3 = Citizen
    AG2_3 = AG2_3.Wait
    AG3_3 = 3000
    AG2_3(AG3_3)
    AG2_3 = Debug
    AG3_3 = "create lift"
    AG2_3(AG3_3)
    AG2_3 = DoRequestModel
    AG3_3 = AG2_1
    AG2_3(AG3_3)
    AG2_3 = CreateObjectNoOffset
    AG3_3 = AG2_1
    AG4_3 = AG0_3.x
    AG5_3 = AG0_3.y
    AG6_3 = AG0_3.z
    AG6_3 = AG6_3 - 0.97
    AG7_3 = 0
    AG8_3 = 0
    AG9_3 = 0
    AG2_3 = AG2_3(AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3)
    AG3_3 = Citizen
    AG3_3 = AG3_3.Wait
    AG4_3 = 300
    AG3_3(AG4_3)
    while true do
      AG3_3 = DoesEntityExist
      AG4_3 = AG2_3
      AG3_3 = AG3_3(AG4_3)
      if AG3_3 then
        break
      end
      AG3_3 = Citizen
      AG3_3 = AG3_3.Wait
      AG4_3 = 100
      AG3_3(AG4_3)
    end
    AG3_3 = SetEntityHeading
    AG4_3 = AG2_3
    AG5_3 = AG0_3.h
    AG5_3 = AG5_3 + 180.0
    AG3_3(AG4_3, AG5_3)
    AG3_3 = Entity
    AG4_3 = AG2_3
    AG3_3 = AG3_3(AG4_3)
    AG3_3 = AG3_3.state
    AG4_3 = AG0_2
    AG3_3.key = AG4_3
    AG3_3 = Entity
    AG4_3 = AG2_3
    AG3_3 = AG3_3(AG4_3)
    AG3_3 = AG3_3.state
    AG4_3 = AG0_3.jobs
    AG3_3.job = AG4_3
    AG0_3.lift = AG2_3
  end
  AG1_2(AG2_2)
end
CreateLift = AG4_1
AG4_1 = RegisterNetEvent
AG5_1 = "kq_carlift:createArms"
AG4_1(AG5_1)
AG4_1 = AddEventHandler
AG5_1 = "kq_carlift:createArms"
function AG6_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2
  AG1_2 = AG1_1
  AG1_2 = AG1_2[AG0_2]
  if not AG1_2 then
    AG1_2 = AG1_1
    AG1_2[AG0_2] = true
    AG1_2 = Debug
    AG2_2 = "CREATE ARMS"
    AG1_2(AG2_2)
    AG1_2 = Citizen
    AG1_2 = AG1_2.CreateThread
    function AG2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename AG0_1, AG1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3
      AG0_3 = Citizen
      AG0_3 = AG0_3.Wait
      AG1_3 = 2000
      AG0_3(AG1_3)
      while true do
        AG0_3 = DoesEntityExist
        AG1_3 = PlayerPedId
        AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3 = AG1_3()
        AG0_3 = AG0_3(AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3)
        if AG0_3 then
          AG0_3 = HasCollisionLoadedAroundEntity
          AG1_3 = PlayerPedId
          AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3 = AG1_3()
          AG0_3 = AG0_3(AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3)
          if AG0_3 then
            break
          end
        end
        AG0_3 = Citizen
        AG0_3 = AG0_3.Wait
        AG1_3 = 2000
        AG0_3(AG1_3)
      end
      AG0_3 = Config
      AG0_3 = AG0_3.locations
      AG1_3 = AG0_2
      AG0_3 = AG0_3[AG1_3]
      AG1_3 = PlayerPedId
      AG1_3 = AG1_3()
      while true do
        if AG1_3 then
          AG2_3 = playerJob
          if AG2_3 then
            break
          end
          AG2_3 = Config
          AG2_3 = AG2_3.esxSettings
          AG2_3 = AG2_3.enabled
          if not AG2_3 then
            AG2_3 = Config
            AG2_3 = AG2_3.qbSettings
            AG2_3 = AG2_3.enabled
            if not AG2_3 then
              break
            end
          end
        end
        AG2_3 = Debug
        AG3_3 = "job"
        AG4_3 = playerJob
        AG2_3(AG3_3, AG4_3)
        AG2_3 = Citizen
        AG2_3 = AG2_3.Wait
        AG3_3 = 1000
        AG2_3(AG3_3)
      end
      AG2_3 = DoRequestModel
      AG3_3 = AG3_1
      AG2_3(AG3_3)
      AG2_3 = GetClosestObjectOfType
      AG3_3 = vector3
      AG4_3 = AG0_3.x
      AG5_3 = AG0_3.y
      AG6_3 = AG0_3.z
      AG6_3 = AG6_3 - 0.95
      AG3_3 = AG3_3(AG4_3, AG5_3, AG6_3)
      AG4_3 = 1.0
      AG5_3 = GetHashKey
      AG6_3 = AG3_1
      AG5_3 = AG5_3(AG6_3)
      AG6_3 = 0
      AG7_3 = 0
      AG8_3 = 0
      AG2_3 = AG2_3(AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3)
      if nil ~= AG2_3 and -1 ~= AG2_3 and 0 ~= AG2_3 then
        AG3_3 = DoesEntityExist
        AG4_3 = AG2_3
        AG3_3 = AG3_3(AG4_3)
        if AG3_3 then
          AG3_3 = Debug
          AG4_3 = "detected old lift arms"
          AG3_3(AG4_3)
          AG3_3 = NetworkRequestControlOfEntity
          AG4_3 = AG2_3
          AG3_3(AG4_3)
          AG3_3 = 0
          while true do
            AG4_3 = NetworkHasControlOfEntity
            AG5_3 = AG2_3
            AG4_3 = AG4_3(AG5_3)
            if not (not AG4_3 and AG3_3 < 30) then
              break
            end
            AG4_3 = Citizen
            AG4_3 = AG4_3.Wait
            AG5_3 = 10
            AG4_3(AG5_3)
            AG3_3 = AG3_3 + 1
          end
          AG4_3 = Debug
          AG5_3 = "Deleted old lift arms"
          AG4_3(AG5_3)
          AG4_3 = DeleteEntity
          AG5_3 = AG2_3
          AG4_3(AG5_3)
        end
      end
      AG3_3 = Citizen
      AG3_3 = AG3_3.Wait
      AG4_3 = 1
      AG3_3(AG4_3)
      AG3_3 = Debug
      AG4_3 = "Creating"
      AG3_3(AG4_3)
      AG3_3 = CreateObjectNoOffset
      AG4_3 = AG3_1
      AG5_3 = AG0_3.x
      AG6_3 = AG0_3.y
      AG7_3 = AG0_3.z
      AG7_3 = AG7_3 - 0.95
      AG8_3 = 1
      AG9_3 = 1
      AG10_3 = 0
      AG3_3 = AG3_3(AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3)
      AG4_3 = Citizen
      AG4_3 = AG4_3.Wait
      AG5_3 = 300
      AG4_3(AG5_3)
      while true do
        AG4_3 = DoesEntityExist
        AG5_3 = AG3_3
        AG4_3 = AG4_3(AG5_3)
        if AG4_3 then
          break
        end
        AG4_3 = Citizen
        AG4_3 = AG4_3.Wait
        AG5_3 = 100
        AG4_3(AG5_3)
      end
      AG4_3 = SetEntityHeading
      AG5_3 = AG3_3
      AG6_3 = AG0_3.h
      AG6_3 = AG6_3 + 180.0
      AG4_3(AG5_3, AG6_3)
      AG5_3 = AG0_2
      AG4_3 = AG1_1
      AG4_3[AG5_3] = false
      AG4_3 = Debug
      AG5_3 = "Created "
      AG6_3 = AG3_3
      AG5_3 = AG5_3 .. AG6_3
      AG4_3(AG5_3)
      AG4_3 = Entity
      AG5_3 = AG3_3
      AG4_3 = AG4_3(AG5_3)
      AG4_3 = AG4_3.state
      AG5_3 = AG0_2
      AG4_3.key = AG5_3
      AG4_3 = Entity
      AG5_3 = AG3_3
      AG4_3 = AG4_3(AG5_3)
      AG4_3 = AG4_3.state
      AG5_3 = AG0_3.jobs
      AG4_3.job = AG5_3
      AG0_3.arms = AG3_3
      AG4_3 = TriggerServerEvent
      AG5_3 = "kq_carlift:armsCreated"
      AG6_3 = AG0_2
      AG7_3 = NetworkGetNetworkIdFromEntity
      AG8_3 = AG3_3
      AG7_3, AG8_3, AG9_3, AG10_3 = AG7_3(AG8_3)
      AG4_3(AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3)
      AG4_3 = SetNetworkIdExistsOnAllMachines
      AG5_3 = NetworkGetNetworkIdFromEntity
      AG6_3 = AG3_3
      AG5_3 = AG5_3(AG6_3)
      AG6_3 = true
      AG4_3(AG5_3, AG6_3)
      AG4_3 = NetworkUseHighPrecisionBlending
      AG5_3 = NetworkGetNetworkIdFromEntity
      AG6_3 = AG3_3
      AG5_3 = AG5_3(AG6_3)
      AG6_3 = false
      AG4_3(AG5_3, AG6_3)
    end
    AG1_2(AG2_2)
  end
end
AG4_1(AG5_1, AG6_1)
AG4_1 = Citizen
AG4_1 = AG4_1.CreateThread
function AG5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2, AG19_2, AG20_2, AG21_2, AG22_2, AG23_2, AG24_2, AG25_2, AG26_2, AG27_2, AG28_2, AG29_2, AG30_2, AG31_2, AG32_2, AG33_2
  while true do
    AG0_2 = 2000
    AG1_2 = PlayerPedId
    AG1_2 = AG1_2()
    AG2_2 = GetEntityCoords
    AG3_2 = AG1_2
    AG2_2 = AG2_2(AG3_2)
    AG3_2 = pairs
    AG4_2 = Config
    AG4_2 = AG4_2.locations
    AG3_2, AG4_2, AG5_2, AG6_2 = AG3_2(AG4_2)
    for AG7_2, AG8_2 in AG3_2, AG4_2, AG5_2, AG6_2 do
      AG9_2 = vector3
      AG10_2 = AG8_2.x
      AG11_2 = AG8_2.y
      AG12_2 = AG8_2.z
      AG9_2 = AG9_2(AG10_2, AG11_2, AG12_2)
      AG10_2 = GetDistanceBetweenCoords
      AG11_2 = AG9_2
      AG12_2 = AG2_2
      AG13_2 = 1
      AG10_2 = AG10_2(AG11_2, AG12_2, AG13_2)
      if AG10_2 < 100.0 then
        AG10_2 = _GetClosestObjectOfType
        AG11_2 = AG9_2
        AG12_2 = 8.0
        AG13_2 = GetHashKey
        AG14_2 = AG3_1
        AG13_2 = AG13_2(AG14_2)
        AG14_2 = "arms"
        AG10_2 = AG10_2(AG11_2, AG12_2, AG13_2, AG14_2)
        if 0 ~= AG10_2 and nil ~= AG10_2 then
          AG11_2 = 500
          if AG0_2 > AG11_2 then
            AG0_2 = 500
          end
          AG11_2 = UseCache
          AG12_2 = "armsState_"
          AG13_2 = AG10_2
          AG12_2 = AG12_2 .. AG13_2
          function AG13_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename AG0_1, AG1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local AG0_3, AG1_3
            AG0_3 = Entity
            AG1_3 = AG10_2
            AG0_3 = AG0_3(AG1_3)
            AG0_3 = AG0_3.state
            AG0_3 = AG0_3.event
            return AG0_3
          end
          AG14_2 = 200
          AG11_2 = AG11_2(AG12_2, AG13_2, AG14_2)
          if nil ~= AG11_2 and "none" ~= AG11_2 then
            if AG0_2 > 25 then
              AG0_2 = 25
            end
            AG12_2 = GetNearestVehicles
            AG13_2 = AG10_2
            AG12_2 = AG12_2(AG13_2)
            AG13_2 = pairs
            AG14_2 = AG12_2
            AG13_2, AG14_2, AG15_2, AG16_2 = AG13_2(AG14_2)
            for AG17_2, AG18_2 in AG13_2, AG14_2, AG15_2, AG16_2 do
              AG19_2 = DoesEntityExist
              AG20_2 = AG18_2
              AG19_2 = AG19_2(AG20_2)
              if AG19_2 then
                AG19_2 = ApplyForceToEntity
                AG20_2 = AG18_2
                AG21_2 = 0
                AG22_2 = 0.0
                AG23_2 = 0.0
                AG24_2 = -0.01
                AG25_2 = 0.0
                AG26_2 = 0.0
                AG27_2 = 0.0
                AG28_2 = 0
                AG29_2 = 0
                AG30_2 = 1
                AG31_2 = 1
                AG32_2 = 0
                AG33_2 = 1
                AG19_2(AG20_2, AG21_2, AG22_2, AG23_2, AG24_2, AG25_2, AG26_2, AG27_2, AG28_2, AG29_2, AG30_2, AG31_2, AG32_2, AG33_2)
              end
            end
          end
        end
      end
    end
    AG3_2 = Citizen
    AG3_2 = AG3_2.Wait
    AG4_2 = AG0_2
    AG3_2(AG4_2)
  end
end
AG4_1(AG5_1)
AG4_1 = Config
AG4_1 = AG4_1.target
AG4_1 = AG4_1.enabled
if not AG4_1 then
  AG4_1 = Citizen
  AG4_1 = AG4_1.CreateThread
  function AG5_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2
    while true do
      AG0_2 = 2000
      AG1_2 = PlayerPedId
      AG1_2 = AG1_2()
      AG2_2 = GetEntityCoords
      AG3_2 = AG1_2
      AG2_2 = AG2_2(AG3_2)
      AG3_2 = _GetClosestObjectOfType
      AG4_2 = AG2_2
      AG5_2 = 20.0
      AG6_2 = GetHashKey
      AG7_2 = AG2_1
      AG6_2 = AG6_2(AG7_2)
      AG7_2 = "object"
      AG3_2 = AG3_2(AG4_2, AG5_2, AG6_2, AG7_2)
      if 0 ~= AG3_2 and nil ~= AG3_2 then
        AG4_2 = GetLiftJobsAndKey
        AG5_2 = AG3_2
        AG4_2, AG5_2 = AG4_2(AG5_2)
        if AG4_2 then
          AG6_2 = playerJob
          if nil ~= AG6_2 then
            AG6_2 = Contains
            AG7_2 = AG4_2
            AG8_2 = playerJob
            AG6_2 = AG6_2(AG7_2, AG8_2)
            if not AG6_2 then
              goto AG_LABEL_169
            end
          end
        end
        AG6_2 = UseCache
        AG7_2 = "liftControlOffset_"
        AG8_2 = AG3_2
        AG7_2 = AG7_2 .. AG8_2
        function AG8_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename AG0_1, AG1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3
          AG0_3 = GetOffsetFromEntityInWorldCoords
          AG1_3 = AG3_2
          AG2_3 = 1.7
          AG3_3 = 0.3
          AG4_3 = 1.3
          return AG0_3(AG1_3, AG2_3, AG3_3, AG4_3)
        end
        AG9_2 = 2000
        AG6_2 = AG6_2(AG7_2, AG8_2, AG9_2)
        AG7_2 = UseCache
        AG8_2 = "liftControlDistance_"
        AG9_2 = AG3_2
        AG8_2 = AG8_2 .. AG9_2
        function AG9_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename AG0_1, AG1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local AG0_3, AG1_3, AG2_3, AG3_3
          AG0_3 = GetDistanceBetweenCoords
          AG1_3 = AG2_2
          AG2_3 = AG6_2
          AG3_3 = true
          return AG0_3(AG1_3, AG2_3, AG3_3)
        end
        AG10_2 = 1000
        AG7_2 = AG7_2(AG8_2, AG9_2, AG10_2)
        AG0_2 = 500
        AG8_2 = Config
        AG8_2 = AG8_2.liftReach
        if not AG8_2 then
          AG8_2 = 1.25
        end
        if AG7_2 < AG8_2 then
          AG0_2 = 0
          AG8_2 = Draw3DText
          AG9_2 = AG6_2.x
          AG10_2 = AG6_2.y
          AG11_2 = AG6_2.z
          AG11_2 = AG11_2 + 0.1
          AG12_2 = L
          AG13_2 = "{UP_KEYBIND} Go up"
          AG12_2 = AG12_2(AG13_2)
          AG13_2 = AG12_2
          AG12_2 = AG12_2.gsub
          AG14_2 = "{UP_KEYBIND}"
          AG15_2 = Config
          AG15_2 = AG15_2.keybinds
          AG15_2 = AG15_2.up
          AG15_2 = AG15_2.label
          AG12_2 = AG12_2(AG13_2, AG14_2, AG15_2)
          AG13_2 = 4
          AG14_2 = 0.03
          AG15_2 = 0.03
          AG8_2(AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2)
          AG8_2 = Draw3DText
          AG9_2 = AG6_2.x
          AG10_2 = AG6_2.y
          AG11_2 = AG6_2.z
          AG12_2 = L
          AG13_2 = "{STOP_KEYBIND} Stop"
          AG12_2 = AG12_2(AG13_2)
          AG13_2 = AG12_2
          AG12_2 = AG12_2.gsub
          AG14_2 = "{STOP_KEYBIND}"
          AG15_2 = Config
          AG15_2 = AG15_2.keybinds
          AG15_2 = AG15_2.stop
          AG15_2 = AG15_2.label
          AG12_2 = AG12_2(AG13_2, AG14_2, AG15_2)
          AG13_2 = 4
          AG14_2 = 0.03
          AG15_2 = 0.03
          AG8_2(AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2)
          AG8_2 = Draw3DText
          AG9_2 = AG6_2.x
          AG10_2 = AG6_2.y
          AG11_2 = AG6_2.z
          AG11_2 = AG11_2 - 0.1
          AG12_2 = L
          AG13_2 = "{DOWN_KEYBIND} Go down"
          AG12_2 = AG12_2(AG13_2)
          AG13_2 = AG12_2
          AG12_2 = AG12_2.gsub
          AG14_2 = "{DOWN_KEYBIND}"
          AG15_2 = Config
          AG15_2 = AG15_2.keybinds
          AG15_2 = AG15_2.down
          AG15_2 = AG15_2.label
          AG12_2 = AG12_2(AG13_2, AG14_2, AG15_2)
          AG13_2 = 4
          AG14_2 = 0.03
          AG15_2 = 0.03
          AG8_2(AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2)
          AG8_2 = IsControlJustReleased
          AG9_2 = 0
          AG10_2 = Config
          AG10_2 = AG10_2.keybinds
          AG10_2 = AG10_2.up
          AG11_2 = AG10_2.key
          AG10_2 = AG0_1
          AG10_2 = AG10_2[AG11_2]
          AG8_2 = AG8_2(AG9_2, AG10_2)
          if AG8_2 then
            AG8_2 = TriggerServerEvent
            AG9_2 = "kq_carlift:up"
            AG10_2 = AG5_2
            AG8_2(AG9_2, AG10_2)
            AG8_2 = onGoUp
            AG9_2 = AG5_2
            AG8_2(AG9_2)
          end
          AG8_2 = IsControlJustReleased
          AG9_2 = 0
          AG10_2 = Config
          AG10_2 = AG10_2.keybinds
          AG10_2 = AG10_2.down
          AG11_2 = AG10_2.key
          AG10_2 = AG0_1
          AG10_2 = AG10_2[AG11_2]
          AG8_2 = AG8_2(AG9_2, AG10_2)
          if AG8_2 then
            AG8_2 = TriggerServerEvent
            AG9_2 = "kq_carlift:down"
            AG10_2 = AG5_2
            AG8_2(AG9_2, AG10_2)
            AG8_2 = onGoDown
            AG9_2 = AG5_2
            AG8_2(AG9_2)
          end
          AG8_2 = IsControlJustReleased
          AG9_2 = 0
          AG10_2 = Config
          AG10_2 = AG10_2.keybinds
          AG10_2 = AG10_2.stop
          AG11_2 = AG10_2.key
          AG10_2 = AG0_1
          AG10_2 = AG10_2[AG11_2]
          AG8_2 = AG8_2(AG9_2, AG10_2)
          if AG8_2 then
            AG8_2 = TriggerServerEvent
            AG9_2 = "kq_carlift:stop"
            AG10_2 = AG5_2
            AG8_2(AG9_2, AG10_2)
            AG8_2 = onStop
            AG9_2 = AG5_2
            AG8_2(AG9_2)
          end
        end
      end
      -- [FIX IF ERROR] Move ::AG_LABEL_169:: outside nested blocks until all 'goto AG_LABEL_169' can see it
      ::AG_LABEL_169::
      AG4_2 = Citizen
      AG4_2 = AG4_2.Wait
      AG5_2 = AG0_2
      AG4_2(AG5_2)
    end
  end
  AG4_1(AG5_1)
end
function AG4_1(AG0_2, AG1_2, AG2_2, AG3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2
  AG4_2 = UseCache
  AG5_2 = "closestType-"
  AG6_2 = AG3_2
  AG7_2 = "-"
  AG8_2 = AG2_2
  AG9_2 = "_"
  AG10_2 = AG0_2.x
  AG11_2 = "_"
  AG12_2 = AG0_2.y
  AG5_2 = AG5_2 .. AG6_2 .. AG7_2 .. AG8_2 .. AG9_2 .. AG10_2 .. AG11_2 .. AG12_2
  function AG6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3
    AG0_3 = GetClosestObjectOfType
    AG1_3 = AG0_2
    AG2_3 = AG1_2
    AG3_3 = AG2_2
    AG4_3 = 0
    AG5_3 = 0
    AG6_3 = 0
    return AG0_3(AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3)
  end
  AG7_2 = 1000
  return AG4_2(AG5_2, AG6_2, AG7_2)
end
_GetClosestObjectOfType = AG4_1
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = UseCache
  AG2_2 = "GetLiftJobsAndKey_"
  AG3_2 = AG0_2
  AG2_2 = AG2_2 .. AG3_2
  function AG3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3
    AG0_3 = Entity
    AG1_3 = AG0_2
    AG0_3 = AG0_3(AG1_3)
    AG0_3 = AG0_3.state
    AG0_3 = AG0_3.job
    AG1_3 = Entity
    AG2_3 = AG0_2
    AG1_3 = AG1_3(AG2_3)
    AG1_3 = AG1_3.state
    AG1_3 = AG1_3.key
    AG2_3 = AG0_3
    AG3_3 = AG1_3
    return AG2_3, AG3_3
  end
  AG4_2 = 5000
  return AG1_2(AG2_2, AG3_2, AG4_2)
end
GetLiftJobsAndKey = AG4_1
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2
  AG1_2 = UseCache
  AG2_2 = "GetNearestVehicles_"
  AG3_2 = AG0_2
  AG2_2 = AG2_2 .. AG3_2
  function AG3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3, AG11_3
    AG0_3 = GetEntityCoords
    AG1_3 = AG0_2
    AG0_3 = AG0_3(AG1_3)
    AG1_3 = {}
    AG2_3 = GetGamePool
    AG3_3 = "CVehicle"
    AG2_3 = AG2_3(AG3_3)
    AG3_3 = 1
    AG4_3 = #AG2_3
    AG5_3 = 1
    for AG6_3 = AG3_3, AG4_3, AG5_3 do
      AG7_3 = AG2_3[AG6_3]
      AG8_3 = GetDistanceBetweenCoords
      AG9_3 = AG0_3
      AG10_3 = GetEntityCoords
      AG11_3 = AG7_3
      AG10_3 = AG10_3(AG11_3)
      AG11_3 = 0
      AG8_3 = AG8_3(AG9_3, AG10_3, AG11_3)
      if AG8_3 < 30.0 then
        AG8_3 = table
        AG8_3 = AG8_3.insert
        AG9_3 = AG1_3
        AG10_3 = AG7_3
        AG8_3(AG9_3, AG10_3)
      end
    end
    return AG2_3
  end
  AG4_2 = 1000
  return AG1_2(AG2_2, AG3_2, AG4_2)
end
GetNearestVehicles = AG4_1
AG4_1 = RegisterNetEvent
AG5_1 = "kq_carlift:up"
function AG6_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2
  AG1_2 = DoesEntityExist
  AG2_2 = AG0_2.entity
  AG1_2 = AG1_2(AG2_2)
  if not AG1_2 then
    return
  end
  AG1_2 = Entity
  AG2_2 = AG0_2.entity
  AG1_2 = AG1_2(AG2_2)
  AG1_2 = AG1_2.state
  AG1_2 = AG1_2.job
  AG2_2 = Entity
  AG3_2 = AG0_2.entity
  AG2_2 = AG2_2(AG3_2)
  AG2_2 = AG2_2.state
  AG2_2 = AG2_2.key
  if AG1_2 then
    AG3_2 = playerJob
    if nil ~= AG3_2 then
      AG3_2 = Contains
      AG4_2 = AG1_2
      AG5_2 = playerJob
      AG3_2 = AG3_2(AG4_2, AG5_2)
      if not AG3_2 then
        goto AG_LABEL_35
      end
    end
  end
  AG3_2 = TriggerServerEvent
  AG4_2 = "kq_carlift:up"
  AG5_2 = AG2_2
  AG3_2(AG4_2, AG5_2)
  AG3_2 = onGoUp
  AG4_2 = AG2_2
  AG3_2(AG4_2)
  -- [FIX IF ERROR] Move ::AG_LABEL_35:: outside nested blocks until all 'goto AG_LABEL_35' can see it
  ::AG_LABEL_35::
end
AG4_1(AG5_1, AG6_1)
AG4_1 = RegisterNetEvent
AG5_1 = "kq_carlift:down"
function AG6_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2
  AG1_2 = DoesEntityExist
  AG2_2 = AG0_2.entity
  AG1_2 = AG1_2(AG2_2)
  if not AG1_2 then
    return
  end
  AG1_2 = Entity
  AG2_2 = AG0_2.entity
  AG1_2 = AG1_2(AG2_2)
  AG1_2 = AG1_2.state
  AG1_2 = AG1_2.job
  AG2_2 = Entity
  AG3_2 = AG0_2.entity
  AG2_2 = AG2_2(AG3_2)
  AG2_2 = AG2_2.state
  AG2_2 = AG2_2.key
  if AG1_2 then
    AG3_2 = playerJob
    if nil ~= AG3_2 then
      AG3_2 = Contains
      AG4_2 = AG1_2
      AG5_2 = playerJob
      AG3_2 = AG3_2(AG4_2, AG5_2)
      if not AG3_2 then
        goto AG_LABEL_35
      end
    end
  end
  AG3_2 = TriggerServerEvent
  AG4_2 = "kq_carlift:down"
  AG5_2 = AG2_2
  AG3_2(AG4_2, AG5_2)
  AG3_2 = onGoDown
  AG4_2 = AG2_2
  AG3_2(AG4_2)
  -- [FIX IF ERROR] Move ::AG_LABEL_35:: outside nested blocks until all 'goto AG_LABEL_35' can see it
  ::AG_LABEL_35::
end
AG4_1(AG5_1, AG6_1)
AG4_1 = RegisterNetEvent
AG5_1 = "kq_carlift:stop"
function AG6_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2
  AG1_2 = DoesEntityExist
  AG2_2 = AG0_2.entity
  AG1_2 = AG1_2(AG2_2)
  if not AG1_2 then
    return
  end
  AG1_2 = Entity
  AG2_2 = AG0_2.entity
  AG1_2 = AG1_2(AG2_2)
  AG1_2 = AG1_2.state
  AG1_2 = AG1_2.job
  AG2_2 = Entity
  AG3_2 = AG0_2.entity
  AG2_2 = AG2_2(AG3_2)
  AG2_2 = AG2_2.state
  AG2_2 = AG2_2.key
  if AG1_2 then
    AG3_2 = playerJob
    if nil ~= AG3_2 then
      AG3_2 = Contains
      AG4_2 = AG1_2
      AG5_2 = playerJob
      AG3_2 = AG3_2(AG4_2, AG5_2)
      if not AG3_2 then
        goto AG_LABEL_35
      end
    end
  end
  AG3_2 = TriggerServerEvent
  AG4_2 = "kq_carlift:stop"
  AG5_2 = AG2_2
  AG3_2(AG4_2, AG5_2)
  AG3_2 = onStop
  AG4_2 = AG2_2
  AG3_2(AG4_2)
  -- [FIX IF ERROR] Move ::AG_LABEL_35:: outside nested blocks until all 'goto AG_LABEL_35' can see it
  ::AG_LABEL_35::
end
AG4_1(AG5_1, AG6_1)
function AG4_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2
  AG2_2 = ipairs
  AG3_2 = AG0_2
  AG2_2, AG3_2, AG4_2, AG5_2 = AG2_2(AG3_2)
  for AG6_2, AG7_2 in AG2_2, AG3_2, AG4_2, AG5_2 do
    if AG7_2 == AG1_2 then
      AG8_2 = true
      return AG8_2
    end
  end
  AG2_2 = false
  return AG2_2
end
Contains = AG4_1
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2
  AG1_2 = Locale
  if AG1_2 then
    AG1_2 = Locale
    AG1_2 = AG1_2[AG0_2]
    if AG1_2 then
      AG1_2 = Locale
      AG1_2 = AG1_2[AG0_2]
      return AG1_2
    end
  end
  return AG0_2
end
L = AG4_1
function AG4_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2
  AG1_2 = GetHashKey
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  AG2_2 = RequestModel
  AG3_2 = AG1_2
  AG2_2(AG3_2)
  while true do
    AG2_2 = HasModelLoaded
    AG3_2 = AG1_2
    AG2_2 = AG2_2(AG3_2)
    if AG2_2 then
      break
    end
    AG2_2 = Citizen
    AG2_2 = AG2_2.Wait
    AG3_2 = 100
    AG2_2(AG3_2)
  end
end
DoRequestModel = AG4_1
function AG4_1(AG0_2, ...)
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
Debug = AG4_1
AG4_1 = Config
AG4_1 = AG4_1.debug
if AG4_1 then
  AG4_1 = RegisterCommand
  AG5_1 = "lclear"
  function AG6_1()
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
  AG4_1(AG5_1, AG6_1)
end
