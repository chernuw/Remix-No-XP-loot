local bonusExperienceIds = {
    [224408] = true,
    [224407] = true,
    [220764] = true,
    [220763] = true
}

local function OnLootOpened()
    local itemCount = GetNumLootItems()
    for slot = itemCount, 1, -1 do
        local slotType = GetLootSlotType(slot)
        local lootItemID = 0
        if slotType == Enum.LootSlotType.Item then
            lootItemID = C_Item.GetItemInfoInstant(GetLootSlotLink(slot))
        end
        if not bonusExperienceIds[lootItemID] then
            LootSlot(slot)
        end
    end
end

local lootEventFrame = CreateFrame("Frame")
lootEventFrame:RegisterEvent("LOOT_OPENED")
lootEventFrame:SetScript("OnEvent", OnLootOpened)