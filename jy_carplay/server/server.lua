-----------------For support, scripts, and more----------------
--------------- https://discord.gg/fz655NHeDq  -------------
---------------------------------------------------------------

RegisterNetEvent('jay_carplay:syncmusic')
AddEventHandler('jay_carplay:syncmusic', function(peds, vehNet, data)
    local veh = NetworkGetEntityFromNetworkId(vehNet)
	if veh ~= 0 then
        for k, v in pairs(peds) do
            TriggerClientEvent("jay_carplay:playsound", v, data)
        end
	end
end)
