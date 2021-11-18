CreateThread(function()
    while true do
        Wait(0)
        local health = (GetEntityHealth(PlayerPedId()) - 100)
        local armor = GetPedArmour(PlayerPedId())
        SendNUIMessage({
            action = 'updateStatusHud', -- sending message to the NUI hud to update HP and armour constantly
            show = true,
            health = health,
            armour = armor,
        })
    end
end)