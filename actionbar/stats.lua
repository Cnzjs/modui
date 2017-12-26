

    local _, class = UnitClass'Player'
    local colour = RAID_CLASS_COLORS[class]
    local addon = {} local orig = {}
    local money, lastmoney, xp, startxp, lastxp, gotxp, sessionxp = 0
    local f = CreateFrame'Frame'

    local getLatency = function()
        local _, _, home = GetNetStats()
        return  '|c00ffffff'..home..'|r 毫秒'
    end

    local getFPS = function()
        return '|c00ffffff'..floor(GetFramerate())..'|r 帧'
    end

    local getFormattedMoney = function()
        local g = floor(money/(100*100))
        local s = floor((money - (g*100*100))/100)
        local c = mod(money, 100)
        return format('%d\|cfff3ac00金|r %d\|cffc6c6c6银|r %d\|cff954e2f铜|r', g, s, c)
    end

    local getSession = function()
        local sessiontime = GetTime() - startxp
        local perhour     = sessionxp/sessiontime*3600
        local hourlyxp    = '|c00ffffff'..math.floor(perhour)..'|r 经验'
        local time        = sessiontime > 0 and sessiontime or 0
        return hourlyxp, time
    end

    local getWhoOnline = function()
        SendWho''
        MODUI_FFqueued = true
        f:RegisterEvent'WHO_LIST_UPDATE'
        local  n, t = GetNumWhoResults()
        local text = format(GetText('WHO_FRAME_TOTAL_TEMPLATE', nil, t), t)
        text = gsub(text, '(.+)发现', '%1')
        return text
    end

    local stats = function()
        local hourlyxp, time = getSession()

        GameTooltip:SetOwner(this, 'ANCHOR_NONE')

            -- HEADER
        GameTooltip:AddDoubleLine('modui 状态 By 60addons', '—', colour.r, colour.g, colour.b)
        GameTooltip:AddLine' '

            -- TOTAL ONLINE
        GameTooltip:AddDoubleLine('总在线人数', getWhoOnline(), colour.r, colour.g, colour.b, 1, .8, 0)
        GameTooltip:AddLine' '

            -- LATENCY
        GameTooltip:AddDoubleLine('延迟', getLatency(), colour.r, colour.g, colour.b)
        if SHOW_NEWBIE_TIPS then
             GameTooltip:AddLine' '
             GameTooltip:AddLine(NEWBIE_TOOLTIP_LATENCY, 1, .8, 0, 1)
        end

            -- FPS
        GameTooltip:AddLine' '
        GameTooltip:AddDoubleLine('帧数', getFPS(), colour.r, colour.g, colour.b)

            -- SESSION GOLD
        GameTooltip:AddLine' '
        GameTooltip:AddDoubleLine('本次游戏赚的钱', getFormattedMoney(), colour.r, colour.g, colour.b, 1, .8, 0)

            -- SESSION PLAYED
        GameTooltip:AddLine' '
        GameTooltip:AddDoubleLine('本次游戏时间', SecondsToTimeAbbrev(math.floor(time)), colour.r, colour.g, colour.b)

            -- HOURLY XP
        GameTooltip:AddDoubleLine('本次游戏获得经验', '|cffffffff'..sessionxp..'|r xp', colour.r, colour.g, colour.b, 1, .8, 0)
        GameTooltip:AddDoubleLine('每小时经验效率', hourlyxp, colour.r, colour.g, colour.b, 1, .8, 0)

            -- ADDONS
        GameTooltip:AddLine' '
        GameTooltip:AddLine('插件加载', colour.r, colour.g, colour.b)
        for k, v in pairs(addon) do
            if k < 20 then GameTooltip:AddDoubleLine(' ', v, 1, 1, 1) end
        end

        GameTooltip:Show()
    end

    MainMenuBarPerformanceBarFrameButton:SetScript('OnEnter', function()
        GameTooltip:ClearLines()
        stats()
    end)

	f:RegisterEvent'PLAYER_ENTERING_WORLD'
    f:RegisterEvent'ADDON_LOADED'
	f:RegisterEvent'PLAYER_MONEY'
    f:RegisterEvent'PLAYER_XP_UPDATE' f:RegisterEvent'PLAYER_LEVEL_UP'
    f:SetScript('OnEvent', function()
        if event == 'WHO_LIST_UPDATE' then
            HideUIPanel(FriendsFrame)
            f:UnregisterEvent'WHO_LIST_UPDATE'
            MODUI_FFqueued = false
        end
        if event == 'PLAYER_ENTERING_WORLD' then
            lastmoney = GetMoney()
            lastxp    = UnitXP'player'
            startxp   = GetTime()
            money     = 0
            sessionxp = 0
            gotxp     = 0
        elseif event == 'ADDON_LOADED' then
            if not string.find(arg1, 'Blizzard_(.+)') then table.insert(addon, arg1) end
        elseif event == 'PLAYER_MONEY' then
    		local m = GetMoney()
    		if m > lastmoney then
    			local increase = (m - lastmoney)
    			money = money + increase
                lastmoney = m
            end
        elseif event == 'PLAYER_XP_UPDATE' then
            sessionxp = UnitXP'player' - lastxp + gotxp
        elseif event == 'PLAYER_LEVEL_UP' then
            gotxp = gotxp + UnitXPMax'player' - lastxp
            lastxp = 0
        end
    end)

        -- HIDE SOUNDS
    function FriendsFrame_OnShow()
        FriendsFrame.showFriendsList = 1
        FriendsFrame_Update()
        UpdateMicroButtons()
        if not MODUI_FFqueued then PlaySound'igMainMenuOpen' end
        GuildFrame.selectedGuildMember = 0
        SetGuildRosterSelection(0)
        InGuildCheck()
    end

    function FriendsFrame_OnHide()
	   UpdateMicroButtons()
       if not MODUI_FFqueued then PlaySound'igMainMenuClose' end
       SetGuildRosterSelection(0)
       GuildFrame.selectedGuildMember = 0
       for _, v in pairs ({GuildControlPopupFrame, GuildMemberDetailFrame, GuildInfoFrame, RaidInfoFrame}) do
           v:Hide()
       end
       for _, v in FRIENDSFRAME_SUBFRAMES do _G[v]:Hide() end
   end

    --
