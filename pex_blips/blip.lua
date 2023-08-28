-- Function to create a blip
function CreateBlip(x, y, z, sprite, color, name)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.8)
    SetBlipColour(blip, color)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
    return blip
end

-- Creating blips
Citizen.CreateThread(function()
    -- Creating a blip on the first place
    local blip1 = CreateBlip(x1, y1, z1, 1, 3, "Frist Blip") -- Replace x1, y1, z1 as needed

    -- Creating a blip on the second place
    local blip2 = CreateBlip(x2, y2, z2, 2, 1, "Second Blip") -- Replace x2, y2, z2 as needed

    -- ... you can resume with another blips
end)