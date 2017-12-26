

    -- TODO:  check each of these for existing globals
    if GetLocale() == 'zhCN' then
         MODUI.L = {
            -- ['global string']    =    "localised string",

            --  ACTION BAR  --
            --      bagbar.lua
            ['Full!']                                                           = '满!',
            --      stats.lua
            ['FPS']                                                             = '帧数',
            ['(.+) Found']                                                      = '(.+)发现', --  capturing total online from /who window pane
            ['stats']                                                           = '状态',
            ['Total Users Online']                                              = '总在线人数',
            ['Ping']                                                            = '延迟', --  alternative: "latency" ?
            ['Framerate']                                                       = '帧数',
            ['Money earned this session']                                       = '本次游戏赚的钱',
            ['Time played this session']                                        = '本次游戏时间',
            ['EXP earned this session']                                         = '本次游戏获得经验',
            ['EXP rate per hour']                                               = '每小时经验速率',
            ['AddOns Loaded']                                                   = '插件加载',

            --  BAG  --
            --      bag.lua
            ['Free Space:']                                                     = '自由空间',

            -- CASTBAR
            ['Hearthstone']                                                     = '炉石',
            ['Fishing']                                                         = '钓鱼',
            ['Herb Gathering']                                                  = '采集草药',
            ['Mining']                                                          = '采矿',
            ['Aimed Shot']                                                      = '瞄准射击'

            --  CHAT --
            --      event.lua
            ['The Alliance Flag was picked up by (.+)!']                        = 'The Alliance Flag was picked up by (.+)!',
            ['The Alliance Flag was dropped by (.+)!']                          = 'The Alliance Flag was dropped by (.+)!',
            ['The Alliance Flag was returned to its base by (.+)!']             = 'The Alliance Flag was returned to its base by (.+)!',
            ['The Horde flag was picked up by (.+)!']                           = 'The Horde flag was picked up by (.+)!',
            ['The Horde flag was dropped by (.+)!']                             = 'The Horde flag was dropped by (.+)!',
            ['The Horde flag was returned to its base by (.+)!']                = 'The Horde flag was returned to its base by (.+)!',
            ['Reputation with (.+) increased by (.+).']                         = '你在(.+)中的声望值提高了(.+)点。',
            ['You are now (.+) with (.+).']                                     = '你在(.+)中的声望达到了(.+)。',
            ['(.+) dies, you gain (.+) experience. %(%+(.+)exp Rested bonus%)'] = '(.+)死亡，你获得了(.+)点经验值。（(.+)点经验值的精神充沛奖励）',
            ['(.+) dies, you gain (.+) experience.']                            = '(.+)死亡，你获得(.+)点经验值。',
            ['You gain (.+) experience.']                                       = '你获得了(.+)点经验值。',
            ['You receive currency: (.+)%.']                                    = '你获得了金钱：(.+)。',
            ['You\'ve lost (.+)%.']                                             = '你失去了(.+)。',
            ['You receive item: (.+)%.']                                        = '你获得了物品：(.+)。',
            ['You receive loot: (.+)%.']                                        = '你得到了物品：(.+)。',
            ['You create: (.+)%.']                                              = '你制造了(.+)。',
            ['You are refunded: (.+)%.']                                        = '你归还了(.+)。',
            ['You have selected (.+) for: (.+)']                                = '你选择了(.+)取向：(.+)',
            ['Received item: (.+)%.']                                           = '获得物品：(.+)。',
            ['(.+) receives item: (.+)%.']                                      = '(.+)获得了物品：(.+)。',
            ['(.+) receives loot: (.+)%.']                                      = '(.+)获得了物品：(.+)。',
            ['(.+) creates: (.+)%.']                                            = '(.+)制造了：(.+)。',
            ['Your skill in (.+) has increased to (.+).']                       = '你的(.+)技能提高到了(.+)。',
            ['Received (.+), (.+).']                                            = '获得(.+)，(.+)。',
            ['Received (.+).']                                                  = '获得(.+)。',
            ['Received (.+) of item: (.+).']                                    = 'Received (.+) of item: (.+)',
            -- ['(.+) completed.']                                              = '',
            ['Quest accepted: (.+)']                                            = '接受任务：(.+)',
            ['Received item: (.+)%.']                                           = '获得物品：(.+)。',
            ['Experience gained: (.+).']                                        = '获得经验值：(.+)。',
            ['(.+) has come online.']                                           = '(.+)上线了。',
            ['(.+) has gone offline.']                                          = '(.+)下线了。',
            ['You are now Busy: in combat']                                     = '你现在很忙：在战斗中',
            ['You are no longer marked Busy.']                                  = 'You are no longer marked Busy',
            ['Discovered (.+): (.+) experience gained']                         = '发现(.+)：获得(.+)点经验值',
            ['You are now (.+) with (.+).']                                     = '你在(.+)中的声望达到了(.+)。',
            ['Quest Accepted (.+)']                                             = '接受任务：(.+)',
            ['You are now Away: AFK']                                           = '你现在处于离开状态：AFK',
            ['You are no longer Away.']                                         = '你已经不在AFK了',
            ['You are no longer rested.']                                       = '你不再休息了',
            ['You don\'t meet the requirements for that quest.']                = '你还未达到接受该任务的前提条件',
            ['No player named \'(.+)\' is currently playing.']                  = '未找到名为“(.+)”的在线玩家。',
            ['(.+) has joined the party.']                                      = '(.+)加入了队伍。',
            ['(.+) has joined the raid group']                                  = '(.+)加入了团队',
            ['(.+) has left the raid group']                                    = '(.+)离开了团队',
            ['(.+) creates (.+).']                                              = '(.+)制造了(.+)。',
            ['Guild Message of the Day']                                        = '公会今日信息',
            --      quest.lua
            ['Quest description too long']                                      = '任务描述太长',

            --  GLOBALS  --
            --      shit.lua
            ['trash items have been sold']                                      = '垃圾物品已经售出。',
            ['Sell all grey items held in inventory.']                          = '出售库存中所有灰色物品',
            --      table.lua
            --      TODO: spells will be in their localised form in the combat log
            --          and an other method through which we track them (tooltip etc)
            --          so we need to export all entries in here.
            --      unitcasting.lua
            ['(.+) begins to cast (.+).']                                       = '(.+)开始施放(.+)。',
            ['(.+) begins to perform (.+).']                                    = '(.+)开始施展(.+)。',
            ['(.+) gains (.+).']                                                = '(.+)获得了(.+)的效果。',
            ['(.+) fades from (.+).']                                           = '(.+)效果从(.+)身上消失。',
            ['(.+) is afflicted by (.+).']                                      = '(.+)受到了(.+)效果的影响。',
            ['(.+)\'s (.+) is removed.']                                        = '(.+)的(.+)被移除了。',
            ['(.+)\'s (.+) hits (.+) for (.+)']                                 = '(.+)的(.+)击中(.+)造成(.+)点伤害。',
            ['(.+)\'s (.+) crits (.+) for (.+)']                                = '(.+)的(.+)对(.+)造成(.+)点致命一击伤害。',
            ['(.+)\'s (.+) is absorbed by (.+).']                               = '(.+)的(.+)被(.+)吸收了。',
            ['Your (.+) hits (.+) for (.+)']                                    = '你的(.+)击中(.+)造成(.+)',
            ['Your (.+) crits (.+) for (.+)']                                   = '你的(.+)致命一击对(.+)造成(.+)',
            ['Your (.+) is absorbed by (.+).']                                  = '你吸收了(.+)的(.+)。',
            ['(.+)\'s (.+) fails.']                                             = '(.+)的(.+)施放失败。',
            ['(.+) suffers (.+) from (.+)\'s (.+).']                            = '(.+)的(.+)使(.+)受到了(.+)点',
            ['You suffer (.+) from (.+)\'s (.+).']                              = '你受到(.+)点(.+)伤害（(.+)的(.+)）。',
            ['(.+)\'s (.+) was resisted by (.+).']                              = '(.+)的(.+)被(.+)抵抗了。',
            ['.+)\'s (.+) was resisted.']                                       = '(.+)的(.+)被抵抗了。',
            ['(.+) gains (.+) health from (.+)\'s (.+).']                       = '(.+)获得(.+)点生命值（(.+)的(.+)）。',
            ['You gain (.+) health from (.+)\'s (.+).']                         = '你因(.+)的(.+)而获得了(.+)点生命值。',
            ['(.+) attempts to run away in fear!']                              = '(.+) attempts to run away in fear!',
            ['Your (.+) heals (.+) for (.+).']                                  = '你的(.+)治疗了(.+)(.+)点生命值。',
            ['Your (.+) critically heals (.+) for (.+).']                       = '你的(.+)对(.+)产生极效治疗效果，恢复了(.+)点生命值。',
            ['(.+) gains (.+) health from your (.+).']                          = '(.+)获得(.+)点生命值（你的(.+)）。',

            --  MAPS  --
            --      pins.lua
            --      world.lua
            --      do cities & zones have localised names? is "blackwing lair" different in german + chinese?

            --  NAMEPLATES  --
            ['Orange Tabby']                                                    = '虎皮猫',
            ['Silver Tabby']                                                    = '黑斑白猫',
            ['Bombay']                                                          = '灰猫',
            ['Cornish Rex']                                                     = '黄猫',
            ['Siamese']                                                         = '黑尾白猫',
            ['Hawk Owl']                                                        = '黑色猫头鹰',
            ['Great Horned Owl']                                                = '棕色猫头鹰',
            ['Cockatiel']                                                       = '红尾鹦鹉',
            ['Senegal']                                                         = '金翼鹦鹉',
            ['Green Wing Macaw']                                                = '绿翼鹦鹉',
            ['Hyacinth Macaw']                                                  = '花羽鹦鹉',
            ['Black Kingsnake']                                                 = '黑色王蛇',
            ['Brown Snake']                                                     = '棕色蟒蛇',
            ['Crimson Snake']                                                   = '赤练蛇',
            ['Prairie Dog']                                                     = '草原土拨鼠',
            ['Cockroach']                                                       = '蟑螂',
            ['Ancona Chicken']                                                  = '灰色小鸡',
            ['Worg Pup']                                                        = '座狼幼崽',
            ['Smolderweb Hatchling']                                            = '烟网小蜘蛛',
            ['Mechanical Chicken']                                              = '机械小鸡',
            ['Mechanical Squirrel']                                             = '机械松鼠',
            ['Lifelike Mechanical Toad']                                        = '仿真机械蛙',
            ['Pet Bombling']                                                    = '步行炸弹',
            ['Lil\' Smokey']                                                    = '发条机器人',
            ['Sprite Darter']                                                   = '小精龙',
            ['Tiny Black Whelpling']                                            = '黑龙宝宝',
            ['Tiny Emerald Whelpling']                                          = '绿龙宝宝',
            ['Tiny Crimson Whelpling']                                          = '红龙宝宝',
            ['Unconscious Dig Rat']                                             = '昏迷的掘地鼠',

            --  OPTIONS  --
            --      menu.lua
            ['modui options']                                                   = 'Modui 设置',
            ['Hello! You are using version v70 of |cffff6c6cmodui|r. You can find the latest version and further support on the dedicated thread on Nostalrius\' forums:'] = '你好!你正在使用的|cffff6c6cmodui|r. V99版 由60addons Qcat汉化,更多最新插件请到 60addons.com 下载.',
            ['This panel offers several further customisation options and toggles to your UI, cycle through the different menus with the tabbed buttons located at the top of this window.'] = '此面板提供了一些进一步的定制选项.在窗口顶部的选项卡选择菜单。',
            ['Reload UI']                                                       = '重置 UI',
            ['Your new settings require a UI reload to take effect.']           = '你需要重新加载UI.新的设置才会生效',
            --      options_actionbar.lua
            ['Actionbar']                                                       = '动作条',
            ['Positioning of 3rd & 4th Actionbars']                             = '第三和第四动作条定位',
            ['Bottom Row']                                                      = '底排',
            ['Default']                                                         = '默认',
            ['Button Layout']                                                   = '按钮布局',
            --      options_colour.lua
            ['Class Colour UI']                                                 = '职业颜色UI',
            ['Reset to Default']                                                = '重置为默认',
            ['UI Colour']                                                       = '颜色UI',
            --      options_display.lua
            ['Gryphon']                                                         = '狮鹫',
            ['Lion']                                                            = '狮子',
            ['Switch End Cap Textures']                                         = '两边纹理开关',
            ['MainBar Gryphon Options']                                         = '主条狮鹫设置',
            ['Toggle Display of MainMenu End Cap Textures']                     = '主菜单两边纹理切换显示',
            ['Toggle Timestamps on Chat Messages']                              = '切换聊天信息时间戳',
            ['Chat Messages']                                                   = '聊天框信息',
            ['Toggle Custom Chat Channel Formatting']                           = '切换自定义聊天频道的格式',
            ['Toggle |cffc600ff[Brackets]|r on Item Links.']                    = '切换去除 |cffc600ff[装备]|r 物品链接.',
            ['Round Numbers']                                                   = '整数',
            ['Aura Duration Formatting']                                        = '光环持续时间格式',
            ['Auras']                                                           = '光环',
            --      options_elements.lua
            ['One Bag']                                                         = '包裹整合',
            ['Modified Map (Battleground)']                                     = '地图增强（战场）',
            ['Modified Map (World)']                                            = '地图增强（世界）',
            ['Maps for Dungeons']                                               = '副本地图',
            ['Modified Nameplates']                                             = '姓名板增强',
            ['Modified Objective Tracker']                                      = '目标跟踪增强',
            ['Modified Tooltip']                                                = '鼠标提示增强',
            ['Modified Unitframes']                                             = '单位框架增强',
            ['PvP Battleground Timers']                                         = 'PvP战场计时器',
            ['PvP Rank Tracking']                                               = 'PvP等级跟踪',
            ['Stopwatch']                                                       = '秒表',
            ['Elements']                                                        = '元素',
            ['Toggle individual components of modui on or off on demand.']      = '切换modui的单个组件的开关',
            --      options_raidframes.lua
            ['Raid Frames']                                                     = '团队框架',
            ['Coming Soon!']                                                    = '快来了',
            --      options_status.lua
            ['Percent']                                                         = '百分比',
            ['True Value']                                                      = '真实值',
            ['Toggle Horizontally Aligned or Default Status Text Positions on UnitFrames'] = '切换水平对齐或默认状态文本位置的头像插件',
            ['Will reload ui!']                                                 = '将重载UI',
            ['Positioning']                                                     = '定位',
            ['\% or True Value Text on Statusbars']                             = '\% 或真实值文本,在状态栏',
            ['Formatting']                                                      = '格式设置',
            ['Show Both True & \% Values on Statusbars (Disables Slider Option)'] = '显示真实 & \% 值在状态栏(禁用滑块选项)',
            ['Status Text']                                                     = '状态文本',

            --  PVP --
            --      ab.lua
            ['claims the (.+)']                                                 = '攻占了(.+)',
            ['(.+) claims the (.+)! If left unchallenged, the (.+) will control it in 1 minute!'] = '(.+)攻占了(.+)！如果不赶快采取行动的话，(.+)在1分钟内(.+)它！',
            ['has assaulted the (.+)']                                          = '突袭了(.+)',
            ['(.+) has assaulted the (.+)']                                     = '(.+)突袭了(.+)',
            ['has taken the (.+)']                                              = '夺取了(.+)！',
            ['has defended the (.+)']                                           = '守住了(.+)！',
            ['The (.+) wins']                                                   = '(.+)即将获胜',
            ['claims the (.+)']                                                 = '攻占了(.+)',
            ['(.+) has defended the (.+)']                                      = '(.+)守住了(.+)！',
            ['(.+) has taken the (.+)']                                         = '(.+)夺取了(.+)！',
            ['(.+) claims the (.+)']                                            = '(.+)攻占了(.+)！',
            --      av.lua
            ['(.+) is under attack!']                                           = '(.+)受到攻击！',
            ['your General is under attack!']                                   = '你的将军受到攻击！',
            ['(.+) is under attack! If left unchecked, the (.+) will (.+) it!'] = '(.+)受到攻击！如果我们不尽快采取措施，(.+)会(.+)它的！',
            ['The (.+)']                                                        = 'The (.+)',   -- ie. "The Stonehearth Graveyard", captures the first half of previous table entry string
            ['was taken by the (.+)!']                                          = '(.+)被(.+)占领了！',
            ['was destroyed by the (.+)!']                                      = '(.+)被(.+)摧毁了！',
            ['The (.+) was taken']                                              = '(.+)被(.+)占领了！',
            ['The (.+) was taken by the (.+)!']                                 = '(.+)被(.+)占领了！',
            ['(.+) was taken by the (.+)!']                                     = '(.+)被(.+)占领了！',
            ['The (.+) was destroyed']                                          = '(.+)被(.+)摧毁了！',
            ['The (.+) was destroyed by the (.+)!']                             = '(.+)被(.+)摧毁了！',
            ['(.+) was destroyed by the (.+)!']                                 = '(.+)被(.+)摧毁了！',
            --      rank.lua
            ['PvP Rank']                                                        = 'PvP 军衔',
            ['Progress']                                                        = '进展',
            ['Current RP']                                                      = '目前的经验',
            ['RP to next rank']                                                 = '到下个军衔经验',
            ['RP gained this week']                                             = '获得本周经验',
            ['These totals give a projection of the honour points needed to reach a new rank at the end of the week. PvP rankings are fluid & dependent on total RP earned across the server — therefore results may vary.'] = '这些总数给出了在周末结束时达到新等级所需的荣誉点数。PVP排名是流动的，取决于服务器上的总RP，因此结果可能会有所不同。',
            ['Click to broadcast data in chat window.']                         = '单击以在聊天窗口中广播数据。',
            --      wsg.lua
            ['Click to Target']                                                 = '点击目标',
            ['The Alliance (.+) was picked up by (.+)!']                        = 'The Alliance (.+) was picked up by (.+)!',
            ['The Alliance (.+) was dropped by (.+)!']                          = 'The Alliance (.+) was dropped by (.+)!',
            ['captured the Alliance (.+)!']                                     = 'captured the Alliance (.+)!',
            ['The Horde (.+) was picked up by (.+)!']                           = 'The Horde (.+) was picked up by (.+)!',
            ['The Horde (.+) was dropped by (.+)!']                             = 'The Horde (.+) was dropped by (.+)!',
            ['captured the Horde (.+)!']                                        = 'captured the Horde (.+)!',
            ['+ Alliance Flag']                                                 = '+ 联盟旗帜',
            ['+ Horde Flag']                                                    = '+ 部落旗帜',

            --  RAID --
            ['Mark as Tank']                                                    = '标记坦克',
            ['group']                                                           = '队伍',
            ['Click to show/hide Raid Frames']                                  = '点击显示/隐藏团队框架',
            ['You have joined a raid group']                                    = '你加入了一个团队。',

            --  STOPWATCH --
            ['Click to Toggle Stopwatch.']                                      = '点击切换秒表',


            --  TOOLTIP --
            ['You!']                                                            = '你!',
            ['Level (.+)']                                                      = '等级 (.+)',   -- capturing line 2 of the tooltip for player units
            ['(Player)']                                                        = '(玩家)',   --
            ['Level (.+) (.+) (.+)']                                            = '等级 (.+) (.+) (.+)',   --
            ['Level (.+) ((.+))']                                               = '等级 (.+) (.+)',   --
            ['Target']                                                          = '目标',


            --  UNITFRAME  --
            --      move.lua
            ['Shift + Drag to move']                                            = 'Shift + 拖动移动',
            --      shards.lua
            ['Soul Shard']                                                      = '灵魂碎片',
            ['Souls Shards stored.']                                            = '灵魂碎片储量',
            --      totems.lua
            ['You cast (.+) Totem.']                                            = '你施放了(.+)图腾。',
        }
    end

    --
