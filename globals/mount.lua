

    local tip = CreateFrame('GAMETOOLTIP', 'modmount', nil, 'GameTooltipTemplate')
    tip:SetOwner(UIParent, 'ANCHOR_NONE')

    local dismount = function()
        for i = -1, 16 do
            local j = GetPlayerBuff(i)
            tip:ClearLines()
            tip:SetPlayerBuff(j)
            local t = _G['modmountTextLeft2']:GetText()
            if t then
                local _, _, speed = string.find(t, '速度提高(.+)%%。')
                if speed then CancelPlayerBuff(i) return end
            end
        end
    end

    local fishing = function()
        for bag = 0, NUM_BAG_SLOTS do
			for slot = 1, GetContainerNumSlots(bag) do
				local link = GetContainerItemLink(bag, slot)
                if  link then
                    local _, _, istring = string.find(link, '|H(.+)|h')
                    local n = GetItemInfo(istring)
                    if  n and (string.find(n, '鱼竿') or string.find(n, '纳特·帕格的超级钓鱼竿FC-5000型')) then
                         UseContainerItem(bag, slot)
                         print'|cff4c8d00你的鱼竿已经装备好了。|r'
                         break
                    end
                end
            end
        end
    end

    local shapeshift = function()
        for i = 1, GetNumShapeshiftForms() do
            local _, name, active = GetShapeshiftFormInfo(i)
            if  active ~= nil then
                CastShapeshiftForm(i)
                break
            end
        end
    end

    local f = CreateFrame'Frame'
    f:RegisterEvent'UI_ERROR_MESSAGE' f:RegisterEvent'GOSSIP_SHOW'
    f:SetScript('OnEvent', function()
        if  event =='UI_ERROR_MESSAGE' then
            if string.find(arg1, '你正在') or string.find(arg1, '无法在') then
                dismount()
            elseif string.find(arg1, '鱼竿') then
                fishing()
            elseif string.find(arg1, '变形') then
                shapeshift()
            end
        else
            local _, g1 = GetGossipOptions()
            if g1 == 'taxi' then dismount() end
        end
    end)

    --
