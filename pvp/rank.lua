

    local ranks = {
        {0,      0,      0,     0},
        {2539,   910,    1000,  400},
        {5231,   2539,   2000,  1000},
        {9221,   5231,   3000,  2000},
        {15491,  9221,   4000,  3000},
        {23369,  15491,  5000,  4000},
        {36958,  23369,  6000,  5000},
        {54408,  36958,  7000,  6000},
        {76316,  54408,  8000,  7000},
        {120420, 76316,  9000,  8000},
        {164960, 120420, 10000, 9000},
        {226508, 164960, 11000, 10000},
        {315119, 226508, 12000, 11000},
        {431492, 315119, 13000, 12000},
    }

    local p = function() local x = (math.floor(GetPVPRankProgress(target)*10000))/100 return x end
    local c = function() local x = (UnitPVPRank'player' - 6)*5000 + 5000*p()/100 if x == -30000 then x = 0 end return x end
    local n = function() local x = (UnitPVPRank'player' - 5)*5000 - c()*.8 if x == -25000 then x = '15 HK' end return x end

    local g = function()
        local _, cp = GetPVPThisWeekStats()
        local _, i  = GetPVPRankInfo(UnitPVPRank'player')
        local cp_hi = ranks[i + 1][1] local cp_lo = ranks[i + 1][2]
        local rp_hi = ranks[i + 1][3] local rp_lo = ranks[i + 1][4]
        x = math.floor((cp - cp_lo)/(cp_hi - cp_lo)*(rp_hi - rp_lo) + rp_lo)
        if isNAN(x) then return 0 else return x end
    end

    local modprint = function()
        SendChatMessage('— PvP 军衔: ['..(UnitPVPRank'player' - 4)..'] '..'进展: ['..p()..'%] '..'当前经验: ['..c()..'] 到下级需经验: ['..n()..'].', 'emote')
    end

    local modtip = function()
        GameTooltip:SetOwner(this, 'ANCHOR_NONE')
        GameTooltip:AddLine'|cffff6c6cmodRank|r'
        GameTooltip:AddLine' '
        GameTooltip:AddLine('这些总数给出了在周末结束时达到新等级所需的荣誉点数。PVP排名是流动的，取决于服务器上的总RP，因此结果可能会有所不同.', 1, .8, 0, true)
        GameTooltip:AddLine' '
        GameTooltip:AddDoubleLine('|cffeec265进展:|r', p()..'%')
        GameTooltip:AddDoubleLine('|cffeec265当前经验:|r', c())
        GameTooltip:AddDoubleLine('|cffeec265到下级需经验:|r', n())
        GameTooltip:AddDoubleLine('|cffeec265本周获得经验:|r', g())
        GameTooltip:AddLine' '
        GameTooltip:AddLine('单击以在聊天窗口中广播数据.', .3, 1, .6)
        GameTooltip:Show()
    end

    local f = CreateFrame('Button', 'modrp', HonorFrame, 'UIPanelButtonTemplate')
    f:SetWidth(40) f:SetHeight(20)
    f:SetText'—RP'
    f:SetFont(STANDARD_TEXT_FONT, 10)
    f:SetPoint('TOPRIGHT', HonorFrame, -50, -40)
    f:SetScript('OnClick', modprint)
    f:SetScript('OnEnter', modtip)
    f:SetScript('OnLeave', function() GameTooltip:Hide() end)
    HonorFrame:SetScript('OnShow', function()
        if tonumber(GetCVar'modPVPRank') == 1 then f:Show() else f:Hide() end
    end)

    f:RegisterEvent("CHAT_MSG_COMBAT_HONOR_GAIN")--on honorgain
	f:RegisterEvent("PLAYER_PVP_KILLS_CHANGED")--"backup" event, fires when HK's update.
	f:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE") -- RUN WHEN GETTING REP WITH FACTION(AB/AV/WSG)

    --
