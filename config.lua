Config = {}

-- <!>
-- Debugging will enable debug logs as well as the `/lclear` command. This command deletes all the lifts which will then allow
-- you to restart the script to preview the new locations. Restarting the script while near a lift (in render distance)
-- will crash your game as the model will be unloaded. Make sure to use `/lclear` before restarting the script
Config.debug = false

-- jobs is an array of jobs that can use the lift. If you set jobs to false everyone no matter the job will be able to use it
Config.locations = {
    {
        x = -213.85,
        y = -1331.38,
        z = 30.9,
        h = 180.0,
        jobs = {
            'mechanic',
        },
    },
    {
        x = -326.35,
        y = -138.51,
        z = 39.0,
        h = 246.0,
        jobs = false,
    },
}


--- SETTINGS FOR ESX
Config.esxSettings = {
    enabled = false,
    -- Whether or not to use the new ESX export method
    useNewESXExport = true
}

--- SETTINGS FOR QBCORE
Config.qbSettings = {
    enabled = false,
    useNewQBExport = true, -- Make sure to uncomment the old export inside fxmanifest.lua if you're still using it
}

Config.target = {
    enabled = false,
    system = 'qtarget' -- 'qtarget' or 'qb-target'  (Other systems might work as well)
}

Config.keybinds = {
    up = {
        key = 'TOP',
        label = '⬆',
    },
    down = {
        key = 'DOWN',
        label = '⬇',
    },
    stop = {
        key = 'LEFT',
        label = '⬅',
    }
}
