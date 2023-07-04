local settings = {repeatamount = 10, exceptions = {"SayMessageRequest", 'Items:CollectDroppedItems','Pets:OpenPetCrate', 'Companion:RequestCompanionMoveTo', 'Harvest:AssignPetToObject', 'Harvest:PetStopHarvestObject', 'Interactables:OnInteract', 'Harvest:StopHarvestObject', 'UI:UIClosed', 'Items:TransferToMachine', 'Items:DebugLeftClick', 'Items:Sell', 'Items:Buy', "Items:Transfer" ,"Items:SetRecipe", "Property:BuildBatch", "Property:Destroy"}}
            local mt = getrawmetatable(game)
            local old = mt.__namecall
            setreadonly(mt, false)
    
            mt.__namecall = function(uh, ...)
            local args = {...}
            local method = getnamecallmethod()
            for i,o in next, settings.exceptions do
                if uh.Name == o then
                    return old(uh, ...)
                end
            end
            if method == "FireServer" or method == "InvokeServer" then
                for i = 1,settings.repeatamount do
                    old(uh, ...)
                end
            end
            return old(uh, ...)
            end
            setreadonly(mt, true)
