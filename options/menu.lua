

    -- DISPLAY
    --  timestamps
    --  gryphons
    --

    local _, class = UnitClass'player'
    local colour = RAID_CLASS_COLORS[class]

    local version = '99' -- VERSION OF ADDON

    local menu = CreateFrame('Frame', 'modui_options', UIParent)
    menu:SetWidth(360) menu:SetHeight(270)
    menu:SetPoint('CENTER', UIParent)
    menu:SetBackdrop({bgFile   = [[Interface\Tooltips\UI-Tooltip-Background]],
                      edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
    				  insets   = {left = 11, right = 12, top = 12, bottom = 11}})
    menu:SetBackdropColor(0, 0, 0, .7)
    menu:SetBackdropBorderColor(.2, .2, .2)
    menu:SetMovable(true) menu:SetUserPlaced(true)
    menu:RegisterForDrag'LeftButton' menu:EnableMouse(true)
    menu:SetScript('OnDragStart', function() menu:StartMoving() end)
    menu:SetScript('OnDragStop', function() menu:StopMovingOrSizing() end)
    menu:Hide()

    local highlight = function()
        if modSkinned(modui_optionsactionbar) then
            for _, v in pairs({modui_optionsactionbar, modui_display, modui_status, modui_elements, modui_colour, modui_optionsmodraid}) do modSkinColor(v, .7, .7, .7) end
        end
    end

    modmenu:SetScript('OnClick', function()
        if menu:IsShown() then menu:Hide() else menu:Show() end
    end)

    menu:SetScript('OnShow', function() if modmenu:IsShown() then modSkinColor(modmenu, 1, .4, 0) end end)
    menu:SetScript('OnHide', function() if modmenu:IsShown() then modSkinColor(modmenu, .7, .7, .7) end end)


    menu.x = CreateFrame('Button', 'modui_optionsCloseButton', menu, 'UIPanelCloseButton')
    menu.x:SetPoint('TOPRIGHT', -6, -6)
    menu.x:SetScript('OnClick', function() menu:Hide() end)

    menu.header = menu:CreateTexture(nil, 'ARTWORK')
    menu.header:SetWidth(256) menu.header:SetHeight(64)
    menu.header:SetPoint('TOP', menu, 0, 12)
    menu.header:SetTexture[[Interface\DialogFrame\UI-DialogBox-Header]]
    menu.header:SetVertexColor(.2, .2, .2)

    menu.header.t = menu:CreateFontString(nil, 'ARTWORK', 'GameFontNormal')
    menu.header.t:SetPoint('TOP', menu.header, 0, -14)
    menu.header.t:SetText'modui options'

    menu.header.f = CreateFrame('Button', 'modui_optionsheader', menu)
    menu.header.f:SetAllPoints(menu.header.t)
    menu.header.f:SetFrameLevel(menu:GetFrameLevel() + 1)

    menu.intro = menu:CreateFontString(nil, 'OVERLAY', 'GameFontNormal')
    menu.intro:SetTextColor(colour.r, colour.g, colour.b)
    menu.intro:SetPoint('TOP', menu, 0, -85)
    menu.intro:SetWidth(280)
    menu.intro:SetText('你好!你正在使用版本为 '..version..'|cffff6c6cmodui|r. 由60addons Qcat汉化,更多最新插件请到 60addons.com 下载\' 网址:')

    menu.uilink = CreateFrame('EditBox', 'modui_uilink', menu, 'InputBoxTemplate')
    menu.uilink:SetFont(STANDARD_TEXT_FONT, 12)
    menu.uilink:SetWidth(250) menu.uilink:SetHeight(10)
    menu.uilink:SetPoint('TOP', menu.intro, 'BOTTOM', 0, -10)
    menu.uilink:SetAutoFocus(false)
    menu.uilink:SetScript('OnShow', function()
        this:SetText'http://60addons.com/'
    end)

    menu.description = menu:CreateFontString(nil, 'OVERLAY', 'GameFontNormal')
    menu.description:SetPoint('TOP', menu, 0, -170)
    menu.description:SetWidth(280)
    menu.description:SetText'此面板提供了一些进一步的定制选项.在窗口顶部的选项卡选择菜单。'

    menu.reload = CreateFrame('Button', 'modui_optionsreload', menu, 'UIPanelButtonTemplate')
    menu.reload:SetWidth(100) menu.reload:SetHeight(20)
    menu.reload:SetText'重载 UI'
    menu.reload:SetFont(STANDARD_TEXT_FONT, 10)
    menu.reload:SetPoint('TOP', menu, 0, -320)
    menu.reload:Hide()

    menu.reload.description = menu.reload:CreateFontString(nil, 'OVERLAY', 'GameFontNormal')
    menu.reload.description:SetPoint('TOP', menu.reload, 0, 30)
    menu.reload.description:SetWidth(200)
    menu.reload.description:SetText'你需要重新加载UI.新的设置才会生效.'

    menu.header.f:SetScript('OnMouseDown', function()
        for _, v in pairs({menu.intro, menu.uilink, menu.description, menu.whisper, menu.gryphon, menu.endcap, menu.chatstamp, menu.chatformat, menu.chateditbox, menu.itemlink, menu.auraformat, menu.tooltip, menu.tooltip.cursor, menu.castbar, menu.castbar.target, menu.targetaura, menu.horizontal, menu.value, menu.consolidate, menu.white, menu.ctDMG, menu.ctHEAL, menu.elements.title, menu.elements.description, menu.elementcontainer, menu.allelement, menu.actionlayout, menu.keydown, menu.keydown.selfcast, menu.modraid.apology, menu.modraid.text, menu.modraid.frame, menu.modraid.frametext}) do v:Hide() end
        for _, v in pairs({menu.intro, menu.uilink, menu.description, menu.whisper}) do v:Show() end
        for i = 1,  2 do _G['modui_optionsaurabutton'..i]:Hide() end
        for i = 1, 12 do _G['modui_element'..i]:Hide() end
        for i = 1, 60 do _G['modui_actionbutton'..i]:Hide() end
        menu.reload:SetPoint('TOP', menu, 0, -300)
        if menu.reload:IsShown() then menu:SetHeight(340) else menu:SetHeight(270) end
        highlight()
    end)

    menu.reload:SetScript('OnClick', ReloadUI)

    table.insert(UISpecialFrames, menu:GetName())     -- ESC
    table.insert(MODUI_COLOURELEMENTS_BORDER_FOR_UI, menu) -- dark theme
    table.insert(MODUI_COLOURELEMENTS_FOR_UI, menu.header)

    SLASH_MODUI_OPTIONS1 = '/modui'
    SlashCmdList['MODUI_OPTIONS'] = function(arg)
        if menu:IsShown() then menu:Hide() else menu:Show() end
    end

    --
