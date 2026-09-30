Citizen.CreateThread(function()
    if type(Config) ~= 'table' or type(Config.Zones) ~= 'table' then
        print('^1[colorZones]^7 Config.Zones is missing, check that config.lua loaded.')
        return
    end

    -- The map isn't ready on the very first tick, so wait for the player to spawn in.
    while not NetworkIsSessionStarted() do
        Wait(100)
    end

    for i = 1, #Config.Zones do
        local zone = Config.Zones[i]

        if zone.Hash and zone.Color then
            MapEnableRegionBlip(zone.Hash, GetHashKey(zone.Color))
        else
            print(('^3[colorZones]^7 Skipping zone #%d: missing Hash or Color.'):format(i))
        end
    end
end)