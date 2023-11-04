local RSGCore = exports['rsg-core']:GetCoreObject()

local createdEntries = {}
local selling = false
local cooldown = false
local cooldowntimer = 0
local gender = nil

-------------------------------------------------------------
-- delete entity
-------------------------------------------------------------
local DeleteThis = function(horse)
    NetworkRequestControlOfEntity(horse)
    SetEntityAsMissionEntity(riding, true, true)

    Wait(100)

    DeleteEntity(horse)

    Wait(500)

    local ped = PlayerPedId()
    local entitycheck = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
    local ridingcheck = GetPedType(entitycheck)

    if ridingcheck == 0 then return true end

    return false
end

-------------------------------------------------------------------------------------------
-- prompts and blips if needed
-------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    for _, v in pairs(Config.SellWildHorseLocations) do
        exports['rsg-core']:createPrompt(v.location, v.coords, RSGCore.Shared.Keybinds[Config.Keybind], Lang:t('menu.open')..v.name, {
            type = 'client',
            event = 'rsg-sellwildhorse:client:menu',
            args = { v.name },
        })
        if v.showblip == true then
            local SellWildHorseBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(SellWildHorseBlip,  joaat(Config.Blip.blipSprite), true)
            SetBlipScale(Config.Blip.blipScale, 0.2)
            Citizen.InvokeNative(0x9CB1A1623062F402, SellWildHorseBlip, Config.Blip.blipName)
        end
    end
end)

-------------------------------------------------------------
-- sell wild horse menu
-------------------------------------------------------------
RegisterNetEvent('rsg-sellwildhorse:client:menu', function(name)
    if selling then return end

    if Config.EnableCooldown and cooldowntimer > 0 then
        local time = 'seconds'
        local timer = cooldowntimer

        if cooldowntimer > 60 then
            timer = math.floor(cooldowntimer / 60)
            time = 'minutes'
        end

        lib.notify({ title = 'Please Wait!', description = 'you need to wait '..timer..' '..time..' before selling another Wild Horse!', type = 'inform' })
        return
    end
    
    lib.registerContext(
        {
            id = 'sellhorse_menu',
            title = name,
            position = 'top-right',
            options = {
                {
                    title = Lang:t('menu.sell_stored_horse'),
                    description = Lang:t('text.sell_store_horse'),
                    icon = 'fas fa-paw',
                    event = 'rsg-sellwildhorse:client:sellhorse',
                   
                },
                {
                    title = Lang:t('menu.save_stored_horse'),
                    description = Lang:t('text.save_store_horse'),
                    icon = 'fas fa-paw',
                    event = 'rms-wildhorsestable:client:wildhorsestable',
                },
            }
        }
    )
    lib.showContext('sellhorse_menu')
    
end)

-------------------------------------------------------------
-- sell horse event
-------------------------------------------------------------
AddEventHandler('rsg-sellwildhorse:client:sellhorse', function()
    local ped = PlayerPedId()
    local horse = Citizen.InvokeNative(0xE7E11B8DCBED1058, ped)
    local myhorse = exports['rsg-horses']:CheckActiveHorse()
    local model = GetEntityModel(horse)
    local owner = Citizen.InvokeNative(0xF103823FFE72BB49, horse)
    selling = true

    if Config.Debug then
        print("Rider    : "..tostring(ped))
        print("Horse    : "..tostring(horse))
        print("Model    : "..tostring(model))
        print("Owner    : "..tostring(owner))
    end

    if not horse or horse == 0 then

        lib.notify({ title = 'No Horse!', description = Lang:t('error.you_dont_have_any_horse_to_sell'), type = 'error' })

        Wait(3000)

        selling = false

        return
    end

    if not owner or owner ~= ped then

        lib.notify({ title = 'Not Tamed!', description = Lang:t('error.not_tamed'), type = 'error' })

        Wait(3000)

        selling = false

        return
    end

    if myhorse and myhorse ~= 0 then

        lib.notify({ title = 'Owned Horse Out!', description = Lang:t('error.owned_horse'), type = 'error' })

        Wait(3000)

        selling = false

        return
    end

    for i = 1, #Config.Horse do
        local horses = Config.Horse[i]
        local models = horses.model

        if model == models then
            local name = horses.name
            local rewardmoney = horses.rewardmoney
            local rewarditem = horses.rewarditem

            if Config.Debug then
                print("Horse Model  : "..tostring(model))
                print("Reward Money : "..tostring(rewardmoney))
                print("Reward Item  : "..tostring(rewarditem))
            end

            RSGCore.Functions.Progressbar('sell-horse', Lang:t('progressbar.checking_horse')..name, Config.SellTime, false, true,
            {
                disableMovement = true,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                local deleted = DeleteThis(horse)

                if deleted then
                    TriggerServerEvent('rsg-sellwildhorse:server:reward', rewardmoney, rewarditem)

                    Wait(3000)

                    selling = false

                    if Config.EnableCooldown then
                        TriggerEvent('rsg-sellwildhorse:client:Cooldown')
                    end

                    return
                end
            end)
        end
    end

    selling = false
end)

AddEventHandler('rsg-sellwildhorse:client:Cooldown', function()
    if cooldown then return end

    CreateThread(function()
        cooldowntimer = Config.Cooldown
        cooldown = true

        while true do
            Wait(1000)

            cooldowntimer = cooldowntimer - 1

            if cooldowntimer <= 0 then
                cooldowntimer = 0
                cooldown = false

                return
            end
        end
    end)
end)

if Config.Debug then
    RegisterNetEvent('rsg-sellwildhorse:client:SetHorseAsWild')
    AddEventHandler('rsg-sellwildhorse:client:SetHorseAsWild', function()
        local ped = PlayerPedId()
        local mount = GetMount(ped)

        if mount then
            Citizen.InvokeNative(0xAEB97D84CDF3C00B, mount, true)
        end
    end)
end

-------------------------------------------------------------
-- save wild horse to stables
-------------------------------------------------------------
local RSGCore = exports['rsg-core']:GetCoreObject()

local createdEntries = {}
local selling = false
local cooldown = false
local cooldowntimer = 0

-- Function to check if the horse is wild and untamed
function CheckIfHorseIsWildAndUntamed(model)
    -- Add your logic here to check if the horse is wild and untamed (e.g., check horse attributes)
    return true -- Return true if wild and untamed, false if not
end

-------------------------------------------------------------
-- save wild horse event (client-side)
-------------------------------------------------------------
AddEventHandler('rms-wildhorsestable:client:wildhorsestable', function()
    local ped = PlayerPedId()
    local horse = Citizen.InvokeNative(0xE7E11B8DCBED1058, ped)
    local myhorse = exports['rsg-horses']:CheckActiveHorse()
    local model = GetEntityModel(horse)
    local owner = Citizen.InvokeNative(0xF103823FFE72BB49, horse)
    local player = source 

    if Config.Debug then
        print("Rider    : "..tostring(ped))
        print("Horse    : "..tostring(horse))
        print("Model    : "..tostring(model))
        print("Owner    : "..tostring(owner))
    end

    if not horse or horse == 0 then
        lib.notify({ title = 'No Horse to Save!', description = Lang:t('error.you_dont_have_any_horse_to_save'), type = 'error' })
        Wait(3000)
        return
    end

    if not owner or owner ~= ped then
        lib.notify({ title = 'No Tamed Horse!', description = Lang:t('error.not_tamed'), type = 'error' })
        Wait(3000)
        return
    end

    if myhorse and myhorse ~= 0 then
        lib.notify({ title = 'Owned Horse Out!', description = Lang:t('error.owned_horse'), type = 'error' })
        Wait(3000)
        return
    end

    -- Check if the horse is wild and untamed before saving
    if not CheckIfHorseIsWildAndUntamed(model) then
        lib.notify({ title = 'Untamed Horse!', description = 'you can only save wild and untamed horses!', type = 'error' })
        Wait(3000)
        return
    end

    -- get horse gender
    local horsegender = IsPedMale(horse)
    
    if horsegender == 1 then
        gender = 'male'
    else
        gender = 'female'
    end
    
    TriggerEvent('rsg-wildhorse:client:setname', model, gender)

end)

RegisterNetEvent('rsg-wildhorse:client:setname', function(model, gender)

    local input = lib.inputDialog('Name your Horse', {
        { 
            label = 'Name',
            type = 'input',
            required = true,
        },
    })
    if not input then return end

    TriggerServerEvent('rsg-wildhorse:server:WildHorseStable', model, gender, input[1])

end)

-------------------------------------------------------------
-- cleanup
-------------------------------------------------------------
AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    FreezeEntityPosition(PlayerPedId(), false)

    for i = 1, #createdEntries do
        if createdEntries[i].type == 'PROMPT' then
            if createdEntries[i].handle then
                exports['rsg-core']:deletePrompt(createdEntries[i].handle)
            end
        end

        if createdEntries[i].type == 'BLIP' then
            if createdEntries[i].handle then
                RemoveBlip(createdEntries[i].handle)
            end
        end
    end
end)

