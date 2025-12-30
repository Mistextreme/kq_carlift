-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1
AG0_1 = {}
function AG1_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2, AG6_2
  AG3_2 = AG0_1
  AG4_2 = {}
  AG4_2.data = AG1_2
  AG5_2 = GetGameTimer
  AG5_2 = AG5_2()
  AG6_2 = AG2_2 or AG6_2
  if not AG2_2 then
    AG6_2 = 3000
  end
  AG5_2 = AG5_2 + AG6_2
  AG4_2.maxAge = AG5_2
  AG3_2[AG0_2] = AG4_2
end
SaveCache = AG1_1
function AG1_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2
  AG1_2 = AG0_1
  AG1_2[AG0_2] = nil
end
WipeCache = AG1_1
function AG1_1(AG0_2, AG1_2, AG2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG3_2, AG4_2, AG5_2, AG6_2, AG7_2
  AG3_2 = AG0_1
  AG3_2 = AG3_2[AG0_2]
  if AG3_2 then
    AG3_2 = AG0_1
    AG3_2 = AG3_2[AG0_2]
    AG3_2 = AG3_2.maxAge
    AG4_2 = GetGameTimer
    AG4_2 = AG4_2()
    if not (AG3_2 < AG4_2) then
      goto AG_LABEL_27
    end
  end
  AG3_2 = {}
  AG4_2 = AG1_2
  AG4_2, AG5_2, AG6_2, AG7_2 = AG4_2()
  AG3_2[1] = AG4_2
  AG3_2[2] = AG5_2
  AG3_2[3] = AG6_2
  AG3_2[4] = AG7_2
  AG4_2 = SaveCache
  AG5_2 = AG0_2
  AG6_2 = AG3_2
  AG7_2 = AG2_2
  AG4_2(AG5_2, AG6_2, AG7_2)
  AG4_2 = table
  AG4_2 = AG4_2.unpack
  AG5_2 = AG3_2
  return AG4_2(AG5_2)
  -- [FIX IF ERROR] Move ::AG_LABEL_27:: outside nested blocks until all 'goto AG_LABEL_27' can see it
  ::AG_LABEL_27::
  AG3_2 = table
  AG3_2 = AG3_2.unpack
  AG4_2 = AG0_1
  AG4_2 = AG4_2[AG0_2]
  AG4_2 = AG4_2.data
  return AG3_2(AG4_2)
end
UseCache = AG1_1
