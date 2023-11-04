local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/Rexshack-RedM/rsg-wildhorse/main/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

        --versionCheckPrint('success', ('Current Version: %s'):format(currentVersion))
        --versionCheckPrint('success', ('Latest Version: %s'):format(text))
        
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

-----------------------------------------------------------------------
-- sell horse reward
-----------------------------------------------------------------------
RegisterServerEvent('rsg-sellwildhorse:server:reward')
AddEventHandler('rsg-sellwildhorse:server:reward', function(rewardmoney, rewarditem)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname

    if Config.Debug then
        print("Money    : "..tostring(rewardmoney))
        print("Item     : "..tostring(rewarditem))
    end

    local reward = rewardmoney * Config.SaleMultiplier

    Player.Functions.AddMoney(Config.PaymentType, reward)
    Player.Functions.AddItem(rewarditem, 1)

    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem], "add")

    TriggerClientEvent('ox_lib:notify', src, {title = 'Horse Sold', description = Lang:t('success.you_have_sold_all_your_horse_for')..reward, type = 'success' })

    TriggerEvent('rsg-log:server:CreateLog', 'horsetrainer', 'WILD HORSE 🐎', 'yellow', firstname..' '..lastname..' Horse sold for '..rewardmoney..' 💰 ')
end)

-----------------------------------------------------------------------
-- save horse to stable
-----------------------------------------------------------------------
RegisterServerEvent('rsg-wildhorse:server:WildHorseStable')
AddEventHandler('rsg-wildhorse:server:WildHorseStable', function(modelHash, gender, horsename)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname

    -- Define the required job and item
    local requiredJob = "horsetrainer" -- Change this to your desired job name or identifier
    local requiredItem = "saddlebag" -- Change this to the item name or identifier

    -- Check if the player has the required job "horsetrainer"
    if Player.PlayerData.job.name ~= requiredJob then
        TriggerClientEvent('ox_lib:notify', src, {title = 'Incorrect Job', description = 'you need to be a horsetrainer to save a wild horse!', type = 'error' })
        return
    end

    -- Check if the player has the required item "saddlebag" and remove it
    if Player.Functions.RemoveItem(requiredItem, 1) then
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[requiredItem], "remove")
        -- Check if the provided modelHash exists in the mapping table
        local modelName = Config.HorseModels[modelHash]

        if not modelName then
            TriggerClientEvent('ox_lib:notify', src, {title = 'Invalid Horse', description = 'invalid horse model!', type = 'error' })
            return
        end

        -- Function to generate a unique horse ID
        local function GenerateHorseid()
            local seed = tonumber(tostring(os.time()):reverse():sub(1, 6)) -- Get a 6-digit timestamp-based seed
            math.randomseed(seed)
            local randomNum = math.random(10000, 99999)
            return tostring(seed) .. tostring(randomNum)
        end

        local horseid = GenerateHorseid()

        -- Insert the wild horse into the 'player_horses' table as a wild horse, you are able to monitor how many horses are caught in the wild.
        MySQL.Async.insert('INSERT INTO player_horses(citizenid, horseid, name, horse, gender, active, wild) VALUES(@citizenid, @horseid, @name, @horse, @gender, @active, @wild)', {
            ['@citizenid'] = Player.PlayerData.citizenid,
            ['@horseid'] = horseid,
            ['@name'] = horsename,
            ['@horse'] = modelName,
            ['@gender'] = gender,
            ['@active'] = false,
            ['@wild'] = true,
        }, function(inserted)
            if inserted then
                TriggerClientEvent('ox_lib:notify', src, {title = 'Horse Saved', description = 'you have successfully saved a wild horse', type = 'success' })
                TriggerClientEvent('RSGCore:Command:DeleteVehicle', src)
                TriggerEvent('rsg-log:server:CreateLog', 'horsetrainer', 'WILD HORSE 🐎', 'yellow', firstname..' '..lastname..' stored a wild horse in the stable')
            else
                TriggerClientEvent('ox_lib:notify', src, {title = 'Failed', description = 'you failed to save the wild horse, please try again later', type = 'error' })
            end
        end)
    else
        TriggerClientEvent('ox_lib:notify', src, {title = 'Missing Item', description = 'you need a saddlebag to save a wild horse!', type = 'error' })
    end
end)

-----------------------------------------------------------------------
-- debug
-----------------------------------------------------------------------
if Config.Debug then
    -- Debug Command to Set Any Horse as Wild Horse
    RSGCore.Commands.Add('sethorsewild', 'Make current Horse a Wild Horse to test/debug Horse Taming activity', {}, false, function(source)
        local src = source
        local Player = RSGCore.Functions.GetPlayer(src)

        if not Player then return end

        TriggerClientEvent('sellwild:client:SetHorseAsWild', src)
    end, 'admin')
end

--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()
