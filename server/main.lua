local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-clothing:saveSkin', function(model, skin)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if model and skin then
        -- TODO: Update primary key to be citizenid so this can be an insert on duplicate update query
        exports.oxmysql:execute('DELETE FROM playerskins WHERE citizenid = ?', { Player.PlayerData.citizenid }, function()
            exports.oxmysql:insert('INSERT INTO playerskins (citizenid, model, skin, active) VALUES (?, ?, ?, ?)', {
                Player.PlayerData.citizenid,
                model,
                skin,
                1
            })
        end)
    end
end)

RegisterNetEvent('qb-clothes:loadPlayerSkin', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = exports.oxmysql:executeSync('SELECT * FROM playerskins WHERE citizenid = ? AND active = ?', { Player.PlayerData.citizenid, 1 })
    if result[1] then
        TriggerClientEvent("qb-clothes:loadSkin", src, false, result[1].model, result[1].skin)
    else
        TriggerClientEvent("qb-clothes:loadSkin", src, true)
    end
end)

RegisterNetEvent("qb-clothes:saveOutfit", function(outfitName, model, skinData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if model and skinData then
        local outfitId = "outfit-"..math.random(1, 10).."-"..math.random(1111, 9999)
        exports.oxmysql:insert('INSERT INTO player_outfits (citizenid, outfitname, model, skin, outfitId) VALUES (?, ?, ?, ?, ?)', {
            Player.PlayerData.citizenid,
            outfitName,
            model,
            json.encode(skinData),
            outfitId
        }, function()
            local result = exports.oxmysql:executeSync('SELECT * FROM player_outfits WHERE citizenid = ?', { Player.PlayerData.citizenid })
            if result[1] then
                TriggerClientEvent('qb-clothing:client:reloadOutfits', src, result)
            else
                TriggerClientEvent('qb-clothing:client:reloadOutfits', src, nil)
            end
        end)
    end
end)

RegisterNetEvent("qb-clothing:server:removeOutfit", function(outfitName, outfitId)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports.oxmysql:execute('DELETE FROM player_outfits WHERE citizenid = ? AND outfitname = ? AND outfitId = ?', {
        Player.PlayerData.citizenid,
        outfitName,
        outfitId
    }, function()
        local result = exports.oxmysql:executeSync('SELECT * FROM player_outfits WHERE citizenid = ?', { Player.PlayerData.citizenid })
        if result[1] then
            TriggerClientEvent('qb-clothing:client:reloadOutfits', src, result)
        else
            TriggerClientEvent('qb-clothing:client:reloadOutfits', src, nil)
        end
    end)
end)

QBCore.Functions.CreateCallback('qb-clothing:server:getOutfits', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local retVal = {}

    local result = exports.oxmysql:executeSync('SELECT * FROM player_outfits WHERE citizenid = ?', { Player.PlayerData.citizenid })
    if result[1] then
        for k, v in pairs(result) do
            result[k].skin = json.decode(result[k].skin)
            retVal[k] = v
        end
        cb(retVal)
    end
    cb(retVal)
end)
