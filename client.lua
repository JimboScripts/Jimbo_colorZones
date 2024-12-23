Citizen.CreateThread(function()
    for v = 1, #Config.Zones, 1 do
        MapEnableRegionBlip(Config.Zones[v].Hash, GetHashKey(Config.Zones[v].Color));
    end
end)