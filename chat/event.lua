

    local _AddMessage = ChatFrame1.AddMessage
    local gsub = string.gsub
    local blacklist = {[ChatFrame2] = true,}
    local _, class = UnitClass'player'
    local currentURL
    local orig = {}

        -- EVENTS
    local chatevents = {
        CHAT_MSG_BG_SYSTEM_ALLIANCE = {
            ['The Alliance Flag was picked up by (.+)!'] = '+ 联盟旗帜 — |cffff7d00%1|r.',
            ['The Alliance Flag was dropped by (.+)!'] = '- 联盟旗帜 — |cffff7d00%1|r.',
            ['The Alliance Flag was returned to its base by (.+)!'] = '%1 送回联盟旗帜.'
        },
        CHAT_MSG_BG_SYSTEM_HORDE = {
            ['The Horde flag was picked up by (.+)!'] = '+ 部落旗帜 — |cffff7d00%1|r.',
            ['The Horde flag was dropped by (.+)!'] = '- 部落旗帜 — |cffff7d00%1|r.',
            ['The Horde flag was returned to its base by (.+)!'] = '%1 送回部落旗帜.'
        },
        CHAT_MSG_COMBAT_FACTION_CHANGE = {
            ['你在(.+)中的声望值提高了(.+)点。'] = '+ %2 %1 声望.',
            ['你在(.+)中的声望达到了(.+)。'] = '%2 现在的地位 %1.',
        },
        CHAT_MSG_COMBAT_XP_GAIN = {
            ['(.+)死亡，+ (.+)点经验值.（+(.+)点经验值的精神充沛奖励）'] = '加了%2 (+%3)点经验.在%1.',
            ['(.+)死亡，你获得(.+)点经验值。'] = '加了%2点经验.从%1.',
            ['你获得了(.+)点经验值。'] = '加了%1点经验.',
        },
        CHAT_MSG_CURRENCY = {
            ['你获得了金钱：(.+)。'] = '+ %1.',
            ['你失去了(.+)。'] = '- %1.',
        },
        CHAT_MSG_LOOT = {
            ['你获得了物品：(.+)。'] = '(获得) + %1',
            ['你得到了物品：(.+)。'] = '(获得) + %1',
            ['你制造了(.+)。'] = '(制造获得) + %1.',
            ['你退还了(.+)。'] = '+ %1.',
            ['你选择了(.+)取向：(.+)'] = '选择 %1 之 %2.',
            ['获得物品：(.+)。'] = '(获得) + %1.',
            ['(.+)获得了物品：(.+)。'] = '+ %2 之 %1.',
            ['(.+)得到了物品：(.+)。'] = '+ %2 之 %1.',
            ['(.+)制造了：(.+)。'] = '+ %2 之 %1.',
        },
        CHAT_MSG_SKILL = {
            ['你的(.+)技能提高到了(.+)。'] = '%1技能升级%2'
        },
        CHAT_MSG_SYSTEM = {
            ['获得(.+)，(.+)。'] = '+ %1, %2.',
            ['获得(.+)。'] = '+ %1.',
            ['Received (.+) of item: (.+).'] = '+ %2x%1.',
            -- ['(.+) completed.'] = '- Quest |cfff86256%1|r.',
            ['接受任务：(.+)'] = '+ 任务 |cfff86256%1|r.',
            ['获得物品：(.+)。'] = '+ %1',
            ['获得经验值：(.+)。'] = '+ %1 经验值',
            ['(.+)上线了。'] = '|cff40fb40%1|r 登录',
            ['(.+)下线了。'] = '|cff40fb40%1|r 离线',
            ['你现在很忙：战斗中'] = '+ Combat.',
            ['You are no longer marked Busy.'] = '- Combat.',
            ['发现(.+)：获得(.+)点经验值'] = '+ %2 经验, 发现 %1.',
            ['你在(.+)中的声望达到了(.+)。'] = '+ %2 派系,现在 %1.',
            ['接受任务：(.+)'] = '+ 任务 |cfff86256%1|r',
            ['你现在处于离开状态：暂离'] = '+ AFK',
            ['你现在不再处于离开状态'] = '- AFK',
            ['You are no longer rested.'] = '- Rested.',
            ['你还未达到接受该任务的前提条件'] = '|cffff000!|r 任务要求未满足.',
            ['未找到名为“(.+)”的在线玩家。'] = '没有这样的玩家, \'|cffff7d00%1|r\'.',
            ['(.+)加入了队伍。'] = '+ 队伍成员 |cffff7d00%1|r.',
            ['(.+)加入了团队'] = '+ 团队成员 |cffff7d00%1|r.',
            ['(.+)离开了团队'] = '- 团队成员 |cffff7d00%1|r.',
        },
        CHAT_MSG_TRADESKILLS = {
            ['(.+)制造了(.+)。'] = '%1 |cffffff00->|r %2.',
        },
    }

        -- CHANNELS
     if tonumber(GetCVar'modChatFormat') == 1 then
        CHAT_GUILD_GET = '|Hchannel:Guild|hg|h %s:\32'                        -- GUILD          'g'
        CHAT_OFFICER_GET = '|Hchannel:o|ho|h %s:\32'                          -- OFFICER        'o'
        CHAT_RAID_GET = '|Hchannel:raid|hr|h %s:\32'                          -- RAID           'r'
        CHAT_RAID_WARNING_GET = 'rw %s:\32'                                   -- RAID W         'rw'
        CHAT_RAID_LEADER_GET = '|Hchannel:raid|hrl|h %s:\32'                  -- RAID L         'rl'
        CHAT_BATTLEGROUND_GET = '|Hchannel:Battleground|hbg|h %s:\32'         -- BG             'bg'
        CHAT_BATTLEGROUND_LEADER_GET = '|Hchannel:Battleground|hbl|h %s:\32'  -- BG L           'bl'
        CHAT_PARTY_GET = '|Hchannel:party|hp|h %s:\32'                        -- PARTY          'p'
        CHAT_PARTY_GUIDE_GET = '|Hchannel:party|hdg|h %s:\32'                 -- DUNGEONGUIDE   'dg'
        CHAT_MONSTER_PARTY_GET = '|Hchannel:raid|hr|h %s:\32'                 -- RAID           'r'
    end
    local URL = '|cff0ce27b%s|r'                                              -- URLS

        -- URL TYPES
    local URL_PATTERNS = {      -- pinched from PhanxChat, sorry phanx
            -- X://Y url           https://github.com/Phanx/PhanxChat/blob/master/Modules/LinkURLs.lua
        '^(%a[%w%.+-]+://%S+)',
        '%f[%S](%a[%w%.+-]+://%S+)',
            -- www.X.Y url
        '^(www%.[-%w_%%]+%.%S+)',
        '%f[%S](www%.[-%w_%%]+%.%S+)',
            -- X.Y.Z/WWWWW url with path
        '^([-%w_%%%.]+[-%w_%%]%.(%a%a+)/%S+)',
        '%f[%S]([-%w_%%%.]+[-%w_%%]%.(%a%a+)/%S+)',
            -- X.Y.Z url
        '^([-%w_%%%.]+[-%w_%%]%.(%a%a+))',
        '%f[%S]([-%w_%%%.]+[-%w_%%]%.(%a%a+))',
            -- X@Y.Z email
        '(%S+@[-%w_%%%.]+%.(%a%a+))',
            -- X.Y.Z:WWWW/VVVVV url with port and path
        '^([-%w_%%%.]+[-%w_%%]%.(%a%a+):[0-6]?%d?%d?%d?%d/%S+)',
        '%f[%S]([-%w_%%%.]+[-%w_%%]%.(%a%a+):[0-6]?%d?%d?%d?%d/%S+)',
            -- X.Y.Z:WWWW url with port
        '^([-%w_%%%.]+[-%w_%%]%.(%a%a+):[0-6]?%d?%d?%d?%d)%f[%D]',
        '%f[%S]([-%w_%%%.]+[-%w_%%]%.(%a%a+):[0-6]?%d?%d?%d?%d)%f[%D]',
            -- XXX.YYY.ZZZ.WWW:VVVV/UUUUU IPv4 address with port and path
        '^([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d:[0-6]?%d?%d?%d?%d/%S+)',
        '%f[%S]([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d:[0-6]?%d?%d?%d?%d/%S+)',
            -- XXX.YYY.ZZZ.WWW:VVVV IPv4 address with port (IP of ts server for example)
        '^([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d:[0-6]?%d?%d?%d?%d)%f[%D]',
        '%f[%S]([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d:[0-6]?%d?%d?%d?%d)%f[%D]',
            -- XXX.YYY.ZZZ.WWW/VVVVV IPv4 address with path
        '^([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%/%S+)',
        '%f[%S]([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%/%S+)',
            -- XXX.YYY.ZZZ.WWW IPv4 address
        '^([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%)%f[%D]',
        '%f[%S]([0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%.[0-2]?%d?%d%)%f[%D]',
    }

    TLDS = { AC = true, AD = true, AE = true, AERO = true, AF = true, AG = true, AI = true, AL = true, AM = true, AN = true, AO = true, AQ = true, AR = true, ARPA = true, AS = true, ASIA = true, AT = true, AU = true, AW = true, AX = true, AZ = true, BA = true, BB = true, BD = true, BE = true, BF = true, BG = true, BH = true, BI = true, BIZ = true, BJ = true, BM = true, BN = true, BO = true, BR = true, BS = true, BT = true, BV = true, BW = true, BY = true, BZ = true, CA = true, CAT = true, CC = true, CD = true, CF = true, CG = true, CH = true, CI = true, CK = true, CL = true, CM = true, CN = true, CO = true, COM = true, COOP = true, CR = true, CU = true, CV = true, CX = true, CY = true, CZ = true, DE = true, DJ = true, DK = true, DM = true, DO = true, DZ = true, EC = true, EDU = true, EE = true, EG = true, ER = true, ES = true, ET = true, EU = true, FI = true, FJ = true, FK = true, FM = true, FO = true, FR = true, GA = true, GB = true, GD = true, GE = true, GF = true, GG = true, GH = true, GI = true, GL = true, GM = true, GN = true, GOV = true, GP = true, GQ = true, GR = true, GS = true, GT = true, GU = true, GW = true, GY = true, HK = true, HM = true, HN = true, HR = true, HT = true, HU = true, ID = true, IE = true, IL = true, IM = true, IN = true, INFO = true, INT = true, IO = true, IQ = true, IR = true, IS = true, IT = true, JE = true, JM = true, JO = true, JOBS = true, JP = true, KE = true, KG = true, KH = true, KI = true, KM = true, KN = true, KP = true, KR = true, KW = true, KY = true, KZ = true, LA = true, LB = true, LC = true, LI = true, LK = true, LR = true, LS = true, LT = true, LU = true, LV = true, LY = true, MA = true, MC = true, MD = true, ME = true, MG = true, MH = true, MIL = true, MK = true, ML = true, MM = true, MN = true, MO = true, MOBI = true, MP = true, MQ = true, MR = true, MS = true, MT = true, MU = true, MUSEUM = true, MV = true, MW = true, MX = true, MY = true, MZ = true, NA = true, NAME = true, NC = true, NE = true, NET = true, NF = true, NG = true, NI = true, NL = true, NO = true, NP = true, NR = true, NU = true, NZ = true, OM = true, ORG = true, PA = true, PE = true, PF = true, PG = true, PH = true, PK = true, PL = true, PM = true, PN = true, PR = true, PRO = true, PS = true, PT = true, PW = true, PY = true, QA = true, RE = true, RO = true, RS = true, RU = true, RW = true, SA = true, SB = true, SC = true, SD = true, SE = true, SG = true, SH = true, SI = true, SJ = true, SK = true, SL = true, SM = true, SN = true, SO = true, SR = true, ST = true, SU = true, SV = true, SY = true, SZ = true, TC = true, TD = true, TEL = true, TF = true, TG = true, TH = true, TJ = true, TK = true, TL = true, TM = true, TN = true, TO = true, TP = true, TR = true, TRAVEL = true, TT = true, TV = true, TW = true, TZ = true, UA = true, UG = true, UK = true, UM = true, US = true, UY = true, UZ = true, VA = true, VC = true, VE = true, VG = true, VI = true, VN = true, VU = true, WF = true, WS = true, YE = true, YT = true, YU = true, ZA = true, ZM = true, ZW = true, }

    StaticPopupDialogs['URL_COPY_DIALOG'] = {                              -- COPY BOX
        text = 'URL',
        button2 = CLOSE,
        timeout = 0,
        hasEditBox = 1, maxLetters = 1024, editBoxWidth = 350,
        whileDead = true, hideOnEscape = true,
        OnShow = function()
            (this.icon or _G[this:GetName()..'AlertIcon']):Hide()
            local editBox = this.editBox or _G[this:GetName()..'EditBox']
            editBox:SetText(currentURL)
            editBox:SetFocus()
            editBox:HighlightText(0)
            local button2 = this.button2 or _G[this:GetName()..'Button2']
            button2:ClearAllPoints()
            button2:SetPoint('TOP', editBox, 'BOTTOM', 0, -6)
            button2:SetWidth(150)
            currentURL = nil
        end,
    }

    local URL_LINK = '|Hurl:%s|h'..URL..'|h'
    local modURL = function(url, tld)
        if tld then
            return TLDS[strupper(tld)] and string.format(URL_LINK, url, url) or url
        else
            return string.format(URL_LINK, url, url)
        end
    end

    orig.ChatFrame_OnHyperlinkShow = ChatFrame_OnHyperlinkShow
    function ChatFrame_OnHyperlinkShow(link, text, button)
        if strsub(link, 1, 4) == 'url:' then
            currentURL = strsub(link, 5)
            StaticPopup_Show'URL_COPY_DIALOG'
            return
       end
       orig.ChatFrame_OnHyperlinkShow(link, text, button)
    end

   local AddMessage = function(f, t, r, g, b, id)
       if t == nil then return _AddMessage(f, t, r, g, b, id) end
       local colour = HEX_CLASS_COLORS[class]
       local ts = tonumber(GetCVar'modTimestamp')
       if tonumber(GetCVar'modItemLink') == 1 then
           t = gsub(t, '|H(.-)|h%[(.-)%]|h', '|H%1|h%2|h')                -- STRIP BRACKETS
       end
       if tonumber(GetCVar'modChatFormat') == 1 then
           t = gsub(t, '%[(%d+)%. .+%].+(|Hplayer.+)', '%1 %2')               -- WORLD CHANNELS '1'
           t = gsub(t, '今日公会信息:', 'GMOTD —')                -- MOTD
           for i, v in pairs(chatevents) do                                   -- CHAT EVENTS
               for k, j in pairs(v) do
                   if string.find(t, k)then
                       -- print(k, 'is a match.')
                       t = gsub(t, k, j)
                   end
               end
           end
           if  ts == 1 then                                                   -- TIMESTAMP
               local d = date'%I.%M'..string.lower(date'%p')
               d = gsub(d, '0*(%d+)', '%1', 1)
               t = string.format('|cff'..colour..'%s|r %s', d, t)
           end
       end
       for i = 1, tlength(URL_PATTERNS) do                                -- URL
           if string.find(t, URL_PATTERNS[i]) then
              local new = gsub(t, URL_PATTERNS[i], modURL)
              if t ~= new then t = new break end
           end
       end
       return _AddMessage(f, t, r, g, b, id)
   end

   for i = 1, 7 do
       if not blacklist[chat] then _G['ChatFrame'..i].AddMessage = AddMessage end
   end

   --