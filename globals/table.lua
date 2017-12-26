

    HEX_CLASS_COLORS = {
        ['DRUID']   = 'ff7d0a',
        ['HUNTER']  = 'abd473',
        ['MAGE']    = '69ccf0',
        ['PALADIN'] = 'f58cba',
        ['PRIEST']  = 'ffffff',
        ['ROGUE']   = 'fff569',
        ['SHAMAN']  = '0070de',
        ['WARLOCK'] = '9482c9',
        ['WARRIOR'] = 'c79c6e',
    }

    SPELL_SCHOOL_COLORS = {
        ['物理'] = {r =  1, g =  1, b =  0},
        ['神圣']     = {r =  1, g = .9, b = .5},
        ['火焰']     = {r =  1, g = .5, b =  0},
        ['自然']   = {r = .3, g =  1, b = .3},
        ['冰霜']    = {r = .5, g =  1, b =  1},
        ['暗影']   = {r = .5, g = .5, b =  1},
        ['奥术']   = {r =  1, g = .5, b =  1},
    }

    MODUI_SPELLCASTS_TO_TRACK = {
            -- MISC
        ['酸液喷射']					= {[[Interface\Icons\spell_nature_acid_01]], 3},
    	['炸弹']						= {[[Interface\Icons\spell_fire_selfdestruct]], 2},
    	['黑泥术']				= {[[Interface\Icons\spell_shadow_callofbone]], 3},
    	['投石']						= {[[Interface\Icons\inv_stone_10]], 2},
    	['闪电链']				= {[[Interface\Icons\spell_nature_chainlightning]], 1.8},
    	['冰链术'] 				= {[[Interface\Icons\spell_frost_chainsofice]], 1.5},
    	['克隆']						= {[[Interface\Icons\spell_shadow_blackplague]], 2.5},
    	['慢性毒菌'] 				= {[[Interface\Icons\spell_shadow_creepingplague]], 3},
    	['残废术'] 					= {[[Interface\Icons\spell_shadow_cripple]], 3},
    	['水晶闪耀']				= {[[Interface\Icons\spell_shadow_teleport]], 2},
    	['水晶凝视'] 				= {[[Interface\Icons\ability_golemthunderclap]], 2},
    	['水晶沉睡'] 		= {[[Interface\Icons\spell_nature_sleep]], 2},
    	['培植种子'] 	= {[[Interface\Icons\inv_misc_food_45]], 10},
    	['治疗诅咒']			= {[[Interface\Icons\spell_shadow_antishadow]], 1},
    	['死木诅咒']		= {[[Interface\Icons\spell_shadow_gathershadows]], 2},
    	['玛格拉姆灵魂诅咒'] 	= {[[Interface\Icons\spell_shadow_unholyfrenzy]], 2},
        ['黑暗污泥']					= {[[Interface\Icons\spell_shadow_creepingplague]], 5},
    	['恐怖低吼'] 					= {[[Interface\Icons\ability_racial_cannibalize]], 1},
    	['热疫疲倦'] 			= {[[Interface\Icons\spell_nature_nullifydisease]], 3},
    	['火焰之盾 II'] 				= {[[Interface\Icons\spell_fire_immolation]], 1},
    	['烈焰尖刺']					= {[[Interface\Icons\spell_fire_flamebolt]], 3},
    	['烈焰喷溅']					= {[[Interface\Icons\spell_fire_selfdestruct]], 3},
    	['冰霜凝固']				= {[[Interface\Icons\spell_frost_glacier]], 2.5},
    	['熊怪形态'] 				= {[[Interface\Icons\Inv_misc_monsterclaw_04]], 2},
    	['疾病软泥']				= {[[Interface\Icons\spell_shadow_creepingplague]], 2},
    	['分解']					= {[[Interface\Icons\Inv_Enchant_Disenchant]], 3},
    	['喝下初级药水']			= {[[Interface\Icons\Spell_holy_heal]], 3},
    	['炸药']					= {[[Interface\Icons\spell_fire_selfdestruct]], 1},
    	['陷地图腾']				= {[[Interface\Icons\spell_nature_naturetouchdecay]], .5},
    	['爆炸射击']				= {[[Interface\Icons\spell_fire_fireball02]], 1},
    	['冰柱']						= {[[Interface\Icons\spell_frost_frostbolt02]], 1.5},
    	['墨汁喷射']					= {[[Interface\Icons\spell_nature_sleep]], 1},
    	['治疗结界']				= {[[Interface\Icons\spell_holy_layonhands]], 2},
    	['圣光击']					= {[[Interface\Icons\Spell_holy_holysmite]], 2.5},
        ['闪电震爆']             = {[[Interface\Icons\spell_nature_lightning]], 3.2},
    	['蜥蜴之矢']					= {[[Interface\Icons\spell_nature_lightning]], 2},
    	['瘟疫之云'] 				= {[[Interface\Icons\spell_shadow_callofbone]], 2},
    	['瘟疫心灵']					= {[[Interface\Icons\spell_shadow_callofbone]], 4},
    	['毒性射击'] 				= {[[Interface\Icons\ability_poisons]], 2},
    	['快速烈焰防护结界'] 			= {[[Interface\Icons\spell_fire_sealoffire]], 1.5},
    	['缩小'] 						= {[[Interface\Icons\spell_shadow_antishadow]], 3},
    	['异种蝎群瘟疫'] 				= {[[Interface\Icons\spell_nature_nullifydisease]], 2},
    	['减速毒药'] 				= {[[Interface\Icons\spell_nature_slowpoison]], 1},
    	['毒性喷溅'] 					= {[[Interface\Icons\spell_nature_corrosivebreath]], 2.5},
        ['投掷火炬']                  = {[[Interface\Icons\spell_fire_fireball02]], 3},
    	['特雷莱恩冰触术'] 	= {[[Interface\Icons\spell_shadow_unsummonbuilding]], 3},
    	['游荡瘟疫']			= {[[Interface\Icons\spell_shadow_callofbone]], 2},
    	['凋零之触']				= {[[Interface\Icons\spell_nature_drowsy]], 2},
            -- AHN'QIRAJ
        ['爆炸']                   = {[[Interface\Icons\Spell_fire_selfdestruct]], 6},
            -- BLACKROCK SPIRE
        ['烈焰打击']              = {[[Interface\Icons\Spell_fire_selfdestruct]], 6},
            -- BLACKWING LAIR
        ['暗影烈焰']              = {[[Interface\Icons\Spell_fire_incinerate]], 2},
        ['龙翼打击']               = {[[Interface\Icons\Inv_misc_monsterscales_14]], 1},
        ['低沉咆哮']            = {[[Interface\Icons\Spell_fire_fire]], 1.75},
            -- MOLTEN CORE
        ['黑暗治疗']              = {[[Interface\Icons\Spell_shadow_chilltouch]], 2},
        ['统御意志']             = {[[Interface\Icons\Spell_shadow_shadowworddominate]], 2},
        ['元素火焰']            = {[[Interface\Icons\Spell_fire_fireball02]], .5},
        ['熔岩冲击']               = {[[Interface\Icons\Spell_fire_fireblast]], 1},
        ['召唤拉格纳罗斯']           = {[[Interface\Icons\Spell_fire_lavaspawn]], 10},
            -- ONYXIA
        ['吐息']                    = {[[Interface\Icons\Spell_fire_fire]], 8},
            -- DIRE MAIL
        ['奥术箭']               = {[[Interface\Icons\Spell_arcane_starfire]], 1},
            -- STRATHOLME
        ['女妖哀嚎']              = {[[Interface\Icons\Spell_shadow_shadowbolt]], 1.5},
        ['毒液喷吐']                = {[[Interface\Icons\Spell_nature_corrosivebreath]], 2.5},
            -- GLOBAL
        ['黑暗治疗']              = {[[Interface\Icons\Spell_shadow_chilltouch]], 2},
        ['炉石']               = {[[Interface\Icons\INV_Misc_Rune_01]], 10},
        ['魔尘']                = {[[Interface\Icons\Inv_misc_dust_02]], 1.5},
        ['无畏冲锋']           = {[[Interface\Icons\Spell_nature_astralrecal]], .1},
        ['催眠术']                     = {[[Interface\Icons\Spell_nature_sleep]], 1.5},
        ['战争践踏']                 = {[[Interface\Icons\Ability_warstomp]], .5},
            -- ENGINEERING
        ['劣质铜壳炸弹']         = {[[Interface\Icons\Inv_misc_bomb_09]], 1},
    	['大型铜壳炸弹']         = {[[Interface\Icons\Inv_misc_bomb_01]], 1},
    	['小型青铜炸弹']         = {[[Interface\Icons\Inv_misc_bomb_09]], 1},
    	['重磅青铜炸弹']           = {[[Interface\Icons\Inv_misc_bomb_05]], 1},
    	['铁皮手雷']              = {[[Interface\Icons\Inv_misc_bomb_08]], 1},
    	['重磅铁制炸弹']             = {[[Interface\Icons\Inv_misc_bomb_01]], 1},
    	['秘银破片炸弹']         = {[[Interface\Icons\Inv_misc_bomb_02]], 1},
    	['高爆炸弹']         = {[[Interface\Icons\Inv_misc_bomb_07]], 1},
    	['瑟银手榴弹']           = {[[Interface\Icons\Inv_misc_bomb_08]], 1},
    	['黑铁炸弹']            = {[[Interface\Icons\Inv_misc_bomb_05]], 1},
    	['奥术炸弹']               = {[[Interface\Icons\Spell_shadow_mindbomb]], 1},
            -- FIRST AID
    	['亚麻绷带']             = {[[Interface\Icons\Inv_misc_bandage_15]], 3},
    	['厚亚麻绷带']       = {[[Interface\Icons\Inv_misc_bandage_18]], 3},
    	['绒线绷带']              = {[[Interface\Icons\Inv_misc_bandage_14]], 3},
    	['厚绒线绷带']        = {[[Interface\Icons\Inv_misc_bandage_17]], 3},
    	['丝质绷带']              = {[[Interface\Icons\Inv_misc_bandage_01]], 3},
    	['厚丝质绷带']        = {[[Interface\Icons\Inv_misc_bandage_02]], 3},
    	['魔纹绷带']         = {[[Interface\Icons\Inv_misc_bandage_19]], 3},
    	['厚魔纹绷带']   = {[[Interface\Icons\Inv_misc_bandage_20]], 3},
    	['符文布绷带']         = {[[Interface\Icons\Inv_misc_bandage_11]], 3},
    	['厚符文布绷带']   = {[[Interface\Icons\Inv_misc_bandage_12]], 3},
            -- DRUID
        ['纠缠根须']          = {[[Interface\Icons\Spell_nature_stranglevines]], 1.5},
        ['治疗之触']             = {[[Interface\Icons\Spell_nature_healingtouch]], 3},
        ['休眠']                 = {[[Interface\Icons\Spell_nature_sleep]], 1.5},
        ['复生']                   = {[[Interface\Icons\Spell_nature_reincarnation]], 2},
        ['愈合']                  = {[[Interface\Icons\Spell_nature_resistnature]], 2},
        ['安抚动物']             = {[[Interface\Icons\Ability_hunter_beastsoothe]], 1.5},
        ['星火术']                  = {[[Interface\Icons\Spell_arcane_starfire]], 3},
        ['传送：月光林地']       = {[[Interface\Icons\Spell_arcane_teleportmoonglade]], 10},
        ['愤怒']                     = {[[Interface\Icons\Spell_nature_abolishmagic]], 1.5},
            -- HUNTER
        ['瞄准射击']                = {[[Interface\Icons\Inv_spear_07]], 2.5},
        ['解散野兽']               = {[[Interface\Icons\Spell_nature_spiritwolf]], 5},
        ['野兽之眼']         = {[[Interface\Icons\Ability_eyeoftheowl]], 2},
        ['复活宠物']                = {[[Interface\Icons\Ability_hunter_beastsoothe]], 10},
        ['恐吓野兽']               = {[[Interface\Icons\Ability_druid_cower]], 1.5},
            -- MAGE
        ['造食术']              = {[[Interface\Icons\Inv_misc_food_73cinnamonroll]], 3},
        ['造水术']             = {[[Interface\Icons\Inv_drink_18]], 3},
        ['制造魔法玛瑙']        = {[[Interface\Icons\Inv_misc_gem_emerald_01]], 3},
        ['制造魔法黄水晶']      = {[[Interface\Icons\Inv_misc_gem_opal_01]], 3},
        ['制造魔法翡翠']         = {[[Interface\Icons\Inv_misc_gem_emerald_02]], 3},
        ['制造魔法红宝石']         = {[[Interface\Icons\Inv_misc_gem_ruby_01]], 3},
        ['火球术']                  = {[[Interface\Icons\Spell_fire_flamebolt]], 3},
        ['寒冰箭']                 = {[[Interface\Icons\Spell_frost_frostbolt02]], 3},
        ['烈焰风暴']               = {[[Interface\Icons\Spell_fire_selfdestruct]], 3},
        ['变形术']                 = {[[Interface\Icons\Spell_nature_polymorph]], 1.5},
        ['变形术：猪']            = {[[Interface\Icons\Spell_magic_polymorphpig]], 1.5},
        ['变形术：龟']         = {[[Interface\Icons\Ability_hunter_pet_turtle]], 1.5},
        ['传送门：达纳苏斯']         = {[[Interface\Icons\Spell_arcane_portaldarnassus]], 10},
    	['传送门：雷霆崖']     = {[[Interface\Icons\Spell_arcane_portalthunderbluff]], 10},
    	['传送门：铁炉堡']         = {[[Interface\Icons\Spell_arcane_portalironforge]], 10},
    	['传送门：奥格瑞玛']         = {[[Interface\Icons\Spell_arcane_portalorgrimmar]], 10},
    	['传送门：暴风城']         = {[[Interface\Icons\Spell_arcane_portalstormwind]], 10},
    	['传送门：幽暗城']         = {[[Interface\Icons\Spell_arcane_portalundercity]], 10},
    	['传送：达纳苏斯']       = {[[Interface\Icons\Spell_arcane_teleportdarnassus]], 10},
    	['传送：雷霆崖']   = {[[Interface\Icons\Spell_arcane_teleportthunderbluff]], 10},
    	['传送：铁炉堡']       = {[[Interface\Icons\Spell_arcane_portalironforge]], 10},
    	['传送：奥格瑞玛']       = {[[Interface\Icons\Spell_arcane_teleportorgrimmar]], 10},
    	['传送：暴风城']       = {[[Interface\Icons\Spell_arcane_teleportstormwind]], 10},
    	['传送：幽暗城']       = {[[Interface\Icons\Spell_arcane_teleportundercity]], 10},
        ['炎爆术']                 = {[[Interface\Icons\Spell_fire_fireball02]], 6},
        ['灼烧']                    = {[[Interface\Icons\Spell_fire_soulburn]], 1.5},
            -- PALADIN
        ['愤怒之锤']           = {[[Interface\Icons\Ability_ThunderClap]], 1},
        ['圣光术']                = {[[Interface\Icons\Spell_holy_holybolt]], 2.5},
        ['神圣愤怒']                = {[[Interface\Icons\Spell_holy_weaponmastery]], 2},
        ['圣光闪现']            = {[[Interface\Icons\Spell_holy_flashheal]], 1.5},
        ['救赎']                = {[[Interface\Icons\Spell_holy_resurrection]], 10},
        ['召唤军马']           = {[[Interface\Icons\Spell_nature_swiftness]], 3},
        ['召唤战马']            = {[[Interface\Icons\Ability_mount_charger]], 3},
        ['超度亡灵']               = {[[Interface\Icons\Spell_holy_turnundead]], 1.5},
            -- PRIEST
        ['快速治疗']                = {[[Interface\Icons\Spell_holy_flashheal]], 1.5},
        ['强效治疗术']              = {[[Interface\Icons\Spell_holy_greaterheal]], 2.5},
        ['治疗术']                      = {[[Interface\Icons\Spell_holy_heal]], 2.5},
        ['神圣之火']                 = {[[Interface\Icons\Spell_holy_searinglight]], 3.5},
        ['法力燃烧']                 = {[[Interface\Icons\Spell_shadow_manaburn]], 3},
        ['心灵震爆']                = {[[Interface\Icons\Spell_shadow_unholyfrenzy]], 1.5},
        ['精神控制']              = {[[Interface\Icons\Spell_shadow_shadowworddominate]], 3},
        ['治疗祷言']         = {[[Interface\Icons\Spell_holy_prayerofhealing02]], 3},
        ['复活术']              = {[[Interface\Icons\Spell_holy_resurrection]], 10},
        ['束缚亡灵']            = {[[Interface\Icons\Spell_nature_slow]], 1.5},
        ['惩击']                     = {[[Interface\Icons\Spell_holy_holysmite]], 2.5},
            -- ROGUE
        ['解除陷阱']               = {[[Interface\Icons\Spell_shadow_grimward]], 5},
        ['麻痹药膏']       = {[[Interface\Icons\Spell_nature_nullifydisease]], 3},
        ['麻痹药膏 II']    = {[[Interface\Icons\Spell_nature_nullifydisease]], 3},
        ['麻痹药膏 III']   = {[[Interface\Icons\Spell_nature_nullifydisease]], 3},
        ['速效药膏']            = {[[Interface\Icons\Spell_nature_corrosivebreath]], 3},
        ['速效药膏 II']         = {[[Interface\Icons\Spell_nature_corrosivebreath]], 3},
        ['速效药膏 III']        = {[[Interface\Icons\Spell_nature_corrosivebreath]], 3},
        ['速效药膏 IV']         = {[[Interface\Icons\Spell_nature_corrosivebreath]], 3},
        ['速效药膏 V']          = {[[Interface\Icons\Spell_nature_corrosivebreath]], 3},
        ['速效药膏 VI']         = {[[Interface\Icons\Spell_nature_corrosivebreath]], 3},
        ['致命药膏']             = {[[Interface\Icons\Ability_rogue_dualweild]], 3},
        ['致命药膏 II']          = {[[Interface\Icons\Ability_rogue_dualweild]], 3},
        ['致命药膏 III']         = {[[Interface\Icons\Ability_rogue_dualweild]], 3},
        ['致命药膏 IV']          = {[[Interface\Icons\Ability_rogue_dualweild]], 3},
        ['致命药膏 V']           = {[[Interface\Icons\Ability_rogue_dualweild]], 3},
        ['致残毒药']          = {[[Interface\Icons\Ability_poisonsting]], 3},
        ['开锁']                 = {[[Interface\Icons\Spell_nature_moonkey]], 5},
            -- SHAMAN
        ['先祖之魂']          = {[[Interface\Icons\Spell_nature_regenerate]], 10},
        ['星界传送']             = {[[Interface\Icons\Spell_nature_astralrecal]], 10},
        ['治疗链']                = {[[Interface\Icons\Spell_nature_healingwavegreater]], 2.5},
        ['闪电链']           = {[[Interface\Icons\Spell_nature_chainlightning]], 1.5},
        ['视界术']                 = {[[Interface\Icons\Spell_nature_farsight]], 2},
        ['幽魂之狼']                = {[[Interface\Icons\Spell_nature_spiritwolf]], 3},
        ['治疗波']              = {[[Interface\Icons\Spell_nature_healingwavegreater]], 2.5},
        ['次级治疗波']       = {[[Interface\Icons\Spell_nature_healingwavelesser]], 1.5},
        ['闪电箭']            = {[[Interface\Icons\Spell_nature_lightning]], 3},
            -- WARLOCK
        ['放逐术']                    = {[[Interface\Icons\Spell_shadow_cripple]], 1.5},
        ['制造火焰石']          = {[[Interface\Icons\Inv_misc_gem_bloodstone_02]], 3},
        ['制造治疗石']        = {[[Interface\Icons\Inv_stone_04]], 3},
        ['制造法术石']         = {[[Interface\Icons\Inv_misc_gem_sapphire_01]], 5},
        ['制造灵魂石']          = {[[Interface\Icons\Spell_shadow_soulgem]], 3},
        ['奴役恶魔']             = {[[Interface\Icons\Spell_shadow_enslavedemon]], 3},
        ['恐惧术']                      = {[[Interface\Icons\Spell_shadow_possession]], 1.5},
        ['恐惧嚎叫']            = {[[Interface\Icons\Ability_warlock_howlofterror]], 2},
        ['献祭']                  = {[[Interface\Icons\Spell_fire_immolation]], 1.5},
        ['地狱火']                   = {[[Interface\Icons\Spell_fire_incinerate]], 2},
        ['末日仪式']            = {[[Interface\Icons\Spell_shadow_antimagicshell]], 10},
        ['火焰之雨']              = {[[Interface\Icons\Spell_shadow_rainoffire]], 6},
        ['召唤仪式']       = {[[Interface\Icons\Spell_shadow_twilight]], 5},
        ['灼热之痛']              = {[[Interface\Icons\Spell_fire_soulburn]], 1.5},
        ['诱惑']                 = {[[Interface\Icons\Spell_shadow_mindsteal]], 1.5},
        ['暗影箭']               = {[[Interface\Icons\Spell_shadow_shadowbolt]], 2.5},
        ['灵魂之火']                 = {[[Interface\Icons\Spell_fire_fireball02]], 4},
        ['召唤恐惧战马']         = {[[Interface\Icons\Ability_mount_dreadsteed]], 3},
        ['召唤地狱猎犬']          = {[[Interface\Icons\Spell_shadow_summonfelhunter]], 6},
        ['召唤地狱战马']           = {[[Interface\Icons\Spell_nature_swiftness]], 3},
        ['召唤小鬼']                = {[[Interface\Icons\Spell_shadow_summonimp]], 6},
        ['召唤魅魔']           = {[[Interface\Icons\Spell_shadow_summonsuccubus]], 6},
        ['召唤虚空行者']         = {[[Interface\Icons\Spell_shadow_summonvoidwalker]], 6},
    }

    MODUI_CHANNELED_HEALS_SPELLCASTS_TO_TRACK = {
            -- FIRST AID
        ['急救']   = {[[Interface\Icons\Spell_holy_heal]], 5.5, 1},
            -- DRUID
        ['宁静'] = {[[Interface\Icons\Spell_nature_tranquility]], 9.5, 2},
    }

    MODUI_CHANNELED_SPELLCASTS_TO_TRACK = {
            -- HUNTER
        ['鹰眼术']         = {[[Interface\Icons\Ability_hunter_eagleeye]], 60},
    	['野兽之眼'] = {[[Interface\Icons\Ability_eyeoftheowl]], 60},
        ['治疗宠物']          = {[[Interface\Icons\Ability_hunter_mendpet]], 10},
            -- MAGE
        ['奥术飞']    = {[[Interface\Icons\Spell_nature_starfall]], 2.25},
        ['奥术飞弹']   = {[[Interface\Icons\Spell_nature_starfall]], 4.25},
        ['暴风雪']          = {[[Interface\Icons\Spell_frost_icestorm]], 8},
        ['唤醒']         = {[[Interface\Icons\Spell_nature_purge]], 8},
            -- PRIEST
        ['精神鞭笞']         = {[[Interface\Icons\Spell_shadow_siphonmana]], 3},
        ['心灵视界']       = {[[Interface\Icons\Spell_holy_mindvision]], 60},
            -- WARLOCK
        ['吸取生命']        = {[[Interface\Icons\Spell_shadow_lifedrain02]], 5},
        ['吸取法力']        = {[[Interface\Icons\Spell_shadow_siphonmana]], 5},
        ['吸取灵魂']        = {[[Interface\Icons\Spell_shadow_haunting]], 4},
        ['地狱烈焰']          = {[[Interface\Icons\Spell_holy_heal]], 6},
        ['火焰之雨']      = {[[Interface\Icons\Spell_shadow_rainoffire]], 6},
    }

    MODUI_INSTANT_SPELLCASTS_TO_TRACK = {
            -- DRUID
		['月火术']         = true,
            -- MAGE
		['魔爆术'] = true,
		['冰锥术']     = true,
		['火焰冲击']       = true,
		['冰霜新星']       = true,
            -- PRIEST
		['神圣新星']        = true,
            -- SHAMAN
		['地震术']      = true,
		['烈焰震击']      = true,
		['冰霜震击']      = true,
            -- WARLOCK
		['暗影灼烧']       = true,
	}

    MODUI_TIME_MODIFIER_BUFFS_TO_TRACK = {
        ['树皮术']                    = {1.4, {'all'}},
        ['燃烧刺激']          = {0,   {'all'}},
        ['语言诅咒']            = {1.6, {'all'}},
        ['眼之诅咒']            = {1.2, {'all'}},
        ['水晶蜘蛛之牙']  = {1.1, {'all'}},
        ['恶魔支配']              = {.05,
            {
            '召唤地狱猎犬',
            '召唤小鬼',
            '召唤魅魔',
            '召唤虚空行者',}
        },
        ['麻痹毒药']         = {1.6, {'all'}},
        ['自然迅捷']         = {0,
            {   -- SHAMAN
            '治疗链',
            '视界术',
            '幽魂之狼',
            '治疗波',
            '次级治疗波', '闪电箭',
                -- DRUID
            '纠缠根须',
            '治疗之触',
            '休眠',
            '复生',
            '愈合',
            '安抚动物',
            '愤怒',}
        },
        ['急速射击']	              = {.6, {'瞄准射击'}},
        ['暗影冥思']             = {0, {'暗影箭'}},
        ['气定神闲']          = {0,
           {'造食术', '造水术', '制造魔法玛瑙', '制造魔法黄水晶', '制造魔法翡翠', '制造魔法红宝石',
            '火球术', '寒冰箭', '烈焰风暴',
            '变形术', '变形术：猪', '变形术：龟', '炎爆术',
            '灼烧',}
        },
        ['思维敏捷']          = {.66,
          {'造食术', '造水术', '制造魔法玛瑙', '制造魔法黄水晶', '制造魔法翡翠', '制造魔法红宝石',
            '火球术', '寒冰箭', '烈焰风暴',
            '变形术', '变形术：猪', '变形术：龟', '炎爆术',
            '灼烧',}
        },
    }

    MODUI_INTERRUPTS_TO_TRACK = {
        ['重击'] = true, ['熊形态'] = true, ['昏阙'] = true, ['致盲'] = true, ['闪现术'] = true,
        ['猎豹形态'] = true, ['冲锋击昏'] = true, ['偷袭'] = true, ['震荡猛击'] = true, ['法术反制 - 沉默'] = true,
        ['死亡缠绕'] = true, ['巨熊形态'] = true, ['神圣干涉'] = true, ['圣佑术'] = true, ['圣盾术'] = true,
        ['地震术'] = true, ['元素掌握'] =  true,
        ['恐惧术'] = true, ['野性冲锋效果'] = true, ['防护火焰结界'] = true, ['冰冻陷阱效果'] = true, ['霜甲术'] = true, ['防护冰霜结界'] = true,
        ['凿击'] = true, ['幽魂之狼'] = true,
        ['制裁之锤'] = true,
        ['冰甲术'] = true, ['寒冰护体'] = true, ['寒冰屏障'] = true, ['冲击'] = true, ['地狱火效果'] = true, ['心灵之火'] = true, ['拦截昏迷'] = true, ['破胆怒吼'] = true, ['胁迫'] = true, ['铁皮手雷'] = true,
        ['肾击'] = true, ['脚踢'] = true, ['脚踢 - 沉默'] = true,
        ['闪电之盾'] = true,
        ['锤击昏迷效果'] = true, ['魔甲术'] = true, ['法力护盾'] = true,
        ['自然迅捷'] =  true,
        ['变形术'] = true, ['变形术：猪'] = true, ['变形术：龟'] = true,['突袭'] = true, ['心灵尖啸'] = true, ['拳击'] = true,
        ['无畏冲锋'] = true, ['复仇昏迷'] = true,
        ['驱散射击'] = true, ['十字军圣印'] = true, ['正义圣印'] = true, ['防护暗影结界'] = true, ['盾击'] = true, ['盾击 - 沉默'] = true, ['沉默'] = true, ['法术封锁'] = true, ['星火昏迷'] = true, ['昏迷'] = true,
        ['瑟银手榴弹'] = true, ['潮汐咒符'] = true, ['旅行形态'] = true,
        ['翼龙钉刺'] = true,
    }

    --  TODO: DR/decay
    MODUI_BUFFS_TO_TRACK = {
            -- MISC
        ['无敌']        = {[[Interface\Icons\Spell_holy_divineintervention]], 6},
        ['眼之结界']        = {[[Interface\Icons\spell_totem_wardofdraining]], 6},
            -- RACIALS
        ['感知']             = {[[Interface\Icons\Spell_nature_sleep]], 20},
        ['石像形态']              = {[[Interface\Icons\Spell_shadow_unholystrength]], 8},
        ['亡灵意志']   = {[[Interface\Icons\Spell_shadow_raisedead]], 5},
            -- ALCHEMY
        ['自由行动药剂']            = {[[Interface\Icons\Inv_potion_04]], 30},
        ['有限无敌药水']        = {[[Interface\Icons\Inv_potion_04]], 6},
        ['活力自由行动']     = {[[Interface\Icons\Inv_potion_07]], 5},
            -- ENGINEERING
        ['闪光雷']             = {[[Interface\Icons\Spell_Shadow_Darksummoning]], 10},
        ['冰霜反射器']        = {[[Interface\Icons\Spell_frost_frostward]], 5},
        ['火焰反射器']         = {[[Interface\Icons\Spell_fire_sealoffire]], 5},
        ['暗影反射器']       = {[[Interface\Icons\Spell_shadow_antishadow]], 5},
            -- DRUID
    	['驱毒术']         = {[[Interface\Icons\Spell_nature_nullifypoison_02]], 8},
    	['自然之握']        = {[[Interface\Icons\Spell_nature_natureswrath]], 45},
        ['激活']              = {[[Interface\Icons\Spell_nature_lightning]], 20},
        --['Rejuvenation']           = {[[Interface\Icons\Spell_nature_rejuvenation]], 12},
            -- HUNTER
        ['假死']            = {[[Interface\Icons\Ability_rogue_feigndeath]], 360},
        ['强化震荡射击'] = {[[Interface\Icons\Spell_frost_stun]], 3},
            -- MAGE
    	['防护冰霜结界']             = {[[Interface\Icons\Spell_frost_frostward]], 30},
    	['防护火焰结界']              = {[[Interface\Icons\Spell_fire_firearmor]], 30},
    	['寒冰屏障']              = {[[Interface\Icons\Spell_frost_frost]], 10},
        --['Ice Barrier']            = {[[Interface\Icons\Spell_ice_lament]], 60},
            -- PALADIN
    	['保护祝福'] = {[[Interface\Icons\Spell_holy_sealofprotection]], 8},
    	['自由祝福']    = {[[Interface\Icons\Spell_holy_sealofvalor]], 10},
    	['圣佑术']      = {[[Interface\Icons\Spell_holy_restoration]], 8},
            -- PRIEST
        ['能量灌注']         = {[[Interface\Icons\Spell_holy_powerinfusion]], 20},
    	['真言术：盾']     = {[[Interface\Icons\Spell_holy_powerwordshield]], 30},
            -- ROGUE
        ['消失']                 = {[[Interface\Icons\Ability_vanish]], 10},
        ['凿击']                  = {[[Interface\Icons\Ability_gouge]], 5}
            -- WARLOCK
    	-- ['Shadow Trance'] = {'Interface\\Icons\\Spell_shadow_twilight', 10},
    }

    MODUI_DEBUFFS_TO_TRACK = {
            -- MISC
        ['逃跑']				     = {[[Interface\Icons\spell_magic_polymorphchicken]], 10},
        ['无畏冲锋']          = {[[Interface\Icons\Spell_nature_astralrecal]], 12},
        ['催眠术']                    = {[[Interface\Icons\Spell_nature_sleep]], 12},
        ['潮汐咒符']              = {[[Interface\Icons\Spell_frost_summonwaterelemental]], 3},
            -- BLACKWING LAIR
        ['燃烧刺激']       = {[[Interface\Icons\Spell_shadow_unholystrength]], 20, 'None'},
            -- MOLTEN CORE
        ['活化炸弹']              = {[[Interface\Icons\Inv_enchant_essenceastralsmall]], 8, 'None'},
            -- ENGINEERING
        ['铁皮手雷']             = {[[Interface\Icons\Spell_fire_selfdestruct]], 3, 'None'},
        ['撒网器']              = {[[Interface\Icons\ability_ensnare]], 10},
        ['瑟银手榴弹']          = {[[Interface\Icons\Spell_fire_selfdestruct]], 3, 'None'},
            -- DRUID
        ['休眠']                = {[[Interface\Icons\Spell_nature_sleep]], 40, '魔法'},
            -- HUNTER
        ['冰冻陷阱效果']            = {[[Interface\Icons\Spell_frost_chainsofice]], 20, '魔法'},
        ['恐吓野兽']              = {[[Interface\Icons\Ability_druid_cower]], 20, '魔法'},
            -- MAGE
        ['变形术']                = {[[Interface\Icons\Spell_nature_polymorph]], 50, '魔法'},
        ['变形术：猪']           = {[[Interface\Icons\Spell_magic_polymorphpig]], 50, '魔法'},
        ['变形术：龟']        = {[[Interface\Icons\Ability_hunter_pet_turtle]], 50, '魔法'},
            -- PALADIN
        ['制裁之锤']        = {[[Interface\Icons\Spell_holy_sealofmight]], 6, '魔法'},
        ['忏悔']               = {[[Interface\Icons\Spell_holy_prayerofhealing]], 6, '魔法'},
            -- PRIEST
        ['精神控制']             = {[[Interface\Icons\Spell_shadow_siphonmana]], 3, 'None'},
        ['心灵视界']              = {[[Interface\Icons\Spell_holy_mindvision]], 60, 'None'},
        ['心灵尖啸']           = {[[Interface\Icons\Spell_shadow_psychicscream]], 8, 'None'},
            -- ROGUE
        ['致盲']                    = {[[Interface\Icons\Spell_shadow_mindsteal]], 10, '毒药'},
        ['偷袭']               = {[[Interface\Icons\Ability_cheapshot]], 5, 'None'},
        ['凿击']                    = {[[Interface\Icons\Ability_gouge]], 4, 'None'},
        ['肾击']              = {[[Interface\Icons\Ability_rogue_kidneyshot]], 6, 'None'},
        ['闷棍']                      = {[[Interface\Icons\Ability_sap]], 11},
            -- WARLOCK
        ['疲劳诅咒']      = {[[Interface\Icons\Spell_shadow_grimward]], 12, '诅咒'},
        ['语言诅咒']         = {[[Interface\Icons\Spell_shadow_curseoftounges]], 30, '诅咒'},
        ['死亡缠绕']               = {[[Interface\Icons\Spell_shadow_deathcoil]], 3, '魔法'},
        ['吸取法力']               = {[[Interface\Icons\Spell_shadow_siphonmana]], 5, '魔法'},
        ['恐惧术']                     = {[[Interface\Icons\Spell_shadow_possession]], 20, '魔法'},
        ['恐惧嚎叫']           = {[[Interface\Icons\Spell_shadow_deathscream]], 15, '魔法'},
            -- WARRIOR
        ['冲锋击昏']              = {[[Interface\Icons\Spell_frost_stun]], 1, 'None'},
        ['拦截昏迷']           = {[[Interface\Icons\Spell_frost_stun]], 3, 'None'},
    }

    MODUI_TOTEMS = {
        ['根基图腾']         = {   icon = 'Spell_Nature_GroundingTotem',
                                    time = 45,
                                    type = 'Earth'
                                },
        ['地缚图腾']         = {   icon = 'Spell_Nature_StrengthOfEarthTotem02',
                                    time = 45,
                                    type = 'Earth'
                                },
        ['石爪图腾']         = {   icon = 'Spell_Nature_StoneClawTotem',
                                    time = 15,
                                    type = 'Earth',
                                    -- rank[index] equals hitpoints in this case
                                    rank = {206, 276, 316, 346, 426, 486},
                                },
        ['大地之力图腾'] = {   icon = 'Spell_nature_earthbindtotem',
                                    time = 120,
                                    type = 'Earth'
                                },
        ['石肤图腾']         = {   icon = 'Spell_Nature_StoneSkinTotem',
                                    time = 120,
                                    type = 'Earth'
                                    },
        ['战栗图腾']            = {   icon = 'Spell_Nature_TremorTotem',
                                    time = 120,
                                    type = 'Earth'
                                },
            --
        ['火焰新星图腾']         = {   icon = 'Spell_Fire_SealOfFire',
                                    time = 5,
                                    type = 'Fire'
                                },
        ['火舌图腾']       = {   icon = 'Spell_Nature_GuardianWard',
                                    time = 120,
                                    type = 'Fire'
                                },
        ['抗寒图腾']  = {   icon = 'Spell_FrostResistanceTotem_01',
                                    time = 120,
                                    type = 'Fire'
                                },
        ['熔岩图腾']             = {   icon = 'Spell_Fire_SelfDestruct',
                                    time = 20,
                                    type = 'Fire'
                                },
        ['灼热图腾']           = {   icon = 'Spell_Fire_SearingTotem',
                                    time = 55,
                                    type = 'Fire',
                                    -- rank[index] equals hitpoints in this case
                                    rank = {30, 35, 40, 45, 50, 55},
                                },
            --
        ['风之优雅图腾']      = {   icon = 'Spell_Nature_InvisibilityTotem',
                                    time = 120,
                                    type = 'Air'
                                },
        ['自然抗性图腾'] = {   icon = 'Spell_Nature_NatureResistanceTotem',
                                    time = 120,
                                    type = 'Air'
                                },
        ['岗哨图腾']            = {   icon = 'Spell_Nature_RemoveCurse',
                                    time = 300,
                                    type = 'Air'
                                },
        ['风之宁静图腾']      = {   icon = 'Spell_Nature_Brilliance',
                                    time = 120,
                                    type = 'Air'
                                },
        ['风怒图腾']          = {   icon = 'Spell_Nature_Windfury',
                                    time = 120,
                                    type = 'Air'
                                },
        ['风墙图腾']          = {   icon = 'Spell_Nature_EarthBind',
                                    time = 120,
                                    type = 'Air'
                                },
            --
        ['祛病图腾'] = {   icon = 'Spell_Nature_DiseaseCleansingTotem',
                                    time = 120,
                                    type = 'Water'
                                },
        ['抗火图腾']   = {   icon = 'Spell_FireResistanceTotem_01',
                                    time = 120,
                                    type = 'Water'
                                },
        ['治疗之泉图腾']    = {   icon = 'INV_Spear_04',
                                    time = 60,
                                    type = 'Water'
                                },
        ['法力之泉图腾']       = {   icon = 'Spell_Nature_ManaRegenTotem',
                                    time = 60,
                                    type = 'Water'
                                },
        ['法力之潮图腾']         = {   icon = 'Spell_Frost_SummonWaterElemental',
                                    time = 12,
                                    type = 'Water'
                                },
        ['清毒图腾']  = {   icon = 'Spell_Nature_PoisonCleansingTotem',
                                    time = 120,
                                    type = 'Water'
                                },
        ['上古法力之泉图腾'] = {
                                    icon = 'INV_Wand_01',
                                    time = 24,
                                    type = 'Water'
        }
    }

    --
