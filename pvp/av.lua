

    for i = 1, 7 do
        local node = CreateFrame('Button', 'modnode_av'..i, UIParent)
        node:SetWidth(10) node:SetHeight(10)
        node:Hide()

        node.text = node:CreateFontString(nil, 'OVERLAY', 'GameFontNormalSmall')
        node.text:SetPoint('CENTER', node)
        node.text:SetJustifyH'LEFT'
        node.text:SetTextColor(1, .8, 0)

        node.faction = node:CreateFontString(nil, 'OVERLAY', 'GameFontNormalSmall')
        node.faction:SetPoint('RIGHT', node.text, 'LEFT')
        node.faction:SetJustifyH'RIGHT'
    end

    local reposition = function()
        local i = 1
        for j = 1, 7 do
            local node = _G['modnode_av'..j]
            node:SetPoint(i == 1 and 'TOP' or 'TOPLEFT',
                          i == 1 and UIParent or _G['modnode_av'..(j - 1)],
                          i == 1 and 'TOP' or 'BOTTOMLEFT',
                          0,
                          i == 1 and -20 or -5)
            if node:IsShown() then i = i + 1 end
        end
    end

    local nodePrint = function(text, o, t)
        local time = math.floor(this.max - GetTime())
        SendChatMessage(o..' — '..t..', '..AVAB_round(time), 'GUILD')
    end

    local nodeUpdate = function(text, faction, o, t)
        local time = math.floor(this.max - GetTime())
        text:SetText(' — '..t..', '..AVAB_round(time))
        faction:SetText(o)
        this:SetWidth(text:GetStringWidth())
    end

    local nodeHide = function(node)
        node:Hide() node.text:SetText'' node.faction:SetText''
        node:SetScript('OnUpdate', nil)
        node.name = false
        reposition()
    end

    local nodeShow = function(node, o, t)
        node.name = t
        t = gsub(t, '^%l', string.upper)
        node.max = GetTime() + 300
        node:Show()
        node:SetScript('OnUpdate', function() nodeUpdate(node.text, node.faction, o, t) end)
        reposition()
    end

    local f = CreateFrame'Frame'
    f:RegisterEvent'CHAT_MSG_MONSTER_YELL'
    f:RegisterEvent'ZONE_CHANGED_NEW_AREA'
    f:SetScript('OnEvent', function()
        if tonumber(GetCVar'modPVPTimers') == 1 then
            local s = arg1
            local o, t

            if  event == 'ZONE_CHANGED_NEW_AREA' then
                for i = 1, 7 do
                    local node = _G['modnode_av'..i]
                    nodeHide(node)
                end
            else
                if string.find(s, '(.+)受到攻击！') and not string.find(s, '你的将军受到攻击!') then
                    t = gsub(s, '(.+) is under attack! If left unchecked, the (.+) will (.+) it!', '%1')
                    o = gsub(s, '(.+) is under attack! If left unchecked, the (.+) will (.+) it!', '%2')
                    t = gsub(t, 'The (.+)', '%1')
                    o = o == 'Alliance' and '|cff0df1ceAlliance|r' or '|cffff0e0eHorde|r'
                end
                for i = 1, 7 do
                    local node = _G['modnode_av'..i]
                    if
                        node.name
                    and
                        (
                            string.find(s, '(.+)被占领了！')
                        or
                            string.find(s, '(.+)被摧毁了！')
                        )
                    then
                        local defend  = string.find(s, 'The (.+)被占领了！') and gsub(s, 'The (.+) was taken by the (.+)!', '%1') or gsub(s, '(.+) was taken by the (.+)!', '%1')
                        local destroy = string.find(s, 'The (.+)被摧毁了！') and gsub(s, 'The (.+) was destroyed by the (.+)!', '%1') or gsub(s, '(.+) was destroyed by the (.+)!', '%1')
                        if
                            string.find(node.name, defend)
                        or
                            string.find(node.name, destroy) or string.find(s, '(.+)即将获胜')
                        then
                            nodeHide(node)
                        end
                    end

                    if t ~= nil and not node.name then
                        nodeShow(node, o, t)
                        break
                    end
                end
            end
        end
    end)

    --
