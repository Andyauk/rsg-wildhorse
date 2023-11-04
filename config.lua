Config = {}

-- settings
Config.Debug = false
Config.SellTime = 20000
Config.EnableCooldown = true
Config.Cooldown = 900 -- 15 mins cooldown by default
Config.Keybind = 'J'

Config.Blip =
{
    blipName = 'Sell Wild Horse',
    blipSprite = 'blip_shop_horse_fencing',
    blipScale = 0.2
}

Config.SellWildHorseLocations =
{
    {name = 'Valentine Horse Seller',      location = 'valentine-sellwildhorse',     coords = vector3(-382.54, 788.06, 115.91), showblip = true }, --valentine
    {name = 'St Denis Horse Seller',       location = 'stdenis-sellwildhorse',       coords = vector3(2839.5, -1305.68, 46.66), showblip = true }, --stdenis
    {name = 'West Elizabeth Horse Seller', location = 'westelizabeth-sellwildhorse', coords = vector3(-2543.44, 401.73, 148.28), showblip = true }, --westelizabeth
    {name = 'Armadillo Horse Seller',      location = 'armadillo-sellwildhorse',     coords = vector3(-3699.626, -2568.44, -13.65047), showblip = true }, --armadillo
    {name = 'Tumbleweed Horse Seller',     location = 'tumbleweed-sellwildhorse',    coords = vector3(-5527.8, -2948.04, -1.56), showblip = true }, --tumbleweed
    {name = 'Blackwater Horse Seller',     location = 'blackwater-sellwildhorse',    coords = vector3(-945.21, -1337.29, 50.65), showblip = true }, --blackwater
    {name = 'Rhodes Horse Seller',         location = 'rhodes-sellwildhorse',        coords = vector3(1434.89, -1291.61, 77.82), showblip = true }, --rhodes
    {name = 'Van Horn Horse Seller',       location = 'vanhorn-sellwildhorse',       coords = vector3(2932.95, 568.53, 44.99), showblip = true }, --van horn
}


Config.PaymentType = 'cash'
Config.SaleMultiplier = 1
Config.Xp = 0.05

Config.Horse =
{ -- reward item false or 'itemname'
    {
        name        = 'Donkey',
        model       = `A_C_Donkey_01`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Greyovero',
        model       = `A_C_Horse_AmericanPaint_Greyovero`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Overo',
        model       = `A_C_Horse_AmericanPaint_Overo`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SplashedWhite',
        model       = `A_C_Horse_AmericanPaint_SplashedWhite`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Tobiano',
        model       = `A_C_Horse_AmericanPaint_Tobiano`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'StandardbredBlack',
        model       = `A_C_Horse_AmericanStandardbred_Black`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'StandardbredBuckskin',
        model       = `A_C_Horse_AmericanStandardbred_Buckskin`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'StandardbredPalominoDapple',
        model       = `A_C_Horse_AmericanStandardbred_PalominoDapple`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'StandardbredSilverTailBuckskin',
        model       = `A_C_Horse_AmericanStandardbred_SilverTailBuckskin`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'AndalusianDarkBay',
        model       = `A_C_Horse_Andalusian_DarkBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Perlino',
        model       = `A_C_Horse_Andalusian_Perlino`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'RoseGray',
        model       = `A_C_Horse_Andalusian_RoseGray`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BlackSnowflake',
        model       = `A_C_Horse_Appaloosa_BlackSnowflake`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Blanket',
        model       = `A_C_Horse_Appaloosa_Blanket`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BrownLeopard',
        model       = `A_C_Horse_Appaloosa_BrownLeopard`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'FewSpottedPC',
        model       = `A_C_Horse_Appaloosa_FewSpotted_PC`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Leopard',
        model       = `A_C_Horse_Appaloosa_Leopard`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'LeopardBlanket',
        model       = `A_C_Horse_Appaloosa_LeopardBlanket`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ArabianBlack',
        model       = `A_C_Horse_Arabian_Black`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ArabianGrey',
        model       = `A_C_Horse_Arabian_Grey`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ArabianRedChestnut',
        model       = `A_C_Horse_Arabian_RedChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'RedChestnutPC',
        model       = `A_C_Horse_Arabian_RedChestnut_PC`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'RoseGreyBay',
        model       = `A_C_Horse_Arabian_RoseGreyBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'WarpedBrindlePC',
        model       = `A_C_Horse_Arabian_WarpedBrindle_PC`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ArabianWhite',
        model       = `A_C_Horse_Arabian_White`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ArdennesBayRoan',
        model       = `A_C_Horse_Ardennes_BayRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'IronGreyRoan',
        model       = `A_C_Horse_Ardennes_IronGreyRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'StrawberryRoan',
        model       = `A_C_Horse_Ardennes_StrawberryRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BlondChestnut',
        model       = `A_C_Horse_Belgian_BlondChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'MealyChestnut',
        model       = `A_C_Horse_Belgian_MealyChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'WarVets',
        model       = `A_C_Horse_Buell_WarVets`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ChocolateRoan',
        model       = `A_C_Horse_DutchWarmblood_ChocolateRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SealBrown',
        model       = `A_C_Horse_DutchWarmblood_SealBrown`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SootyBuckskin',
        model       = `A_C_Horse_DutchWarmblood_SootyBuckskin`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'EagleFlies',
        model       = `A_C_Horse_EagleFlies`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Bill',
        model       = `A_C_Horse_Gang_Bill`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Charles',
        model       = `A_C_Horse_Gang_Charles`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'CharlesEndlessSummer',
        model       = `A_C_Horse_Gang_Charles_EndlessSummer`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Dutch',
        model       = `A_C_Horse_Gang_Dutch`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Hosea',
        model       = `A_C_Horse_Gang_Hosea`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Javier',
        model       = `A_C_Horse_Gang_Javier`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'John',
        model       = `A_C_Horse_Gang_John`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Karen',
        model       = `A_C_Horse_Gang_Karen`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Kieran',
        model       = `A_C_Horse_Gang_Kieran`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Lenny',
        model       = `A_C_Horse_Gang_Lenny`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Micah',
        model       = `A_C_Horse_Gang_Micah`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Sadie',
        model       = `A_C_Horse_Gang_Sadie`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SadieEndlessSummer',
        model       = `A_C_Horse_Gang_Sadie_EndlessSummer`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Sean',
        model       = `A_C_Horse_Gang_Sean`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Trelawney',
        model       = `A_C_Horse_Gang_Trelawney`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Uncle',
        model       = `A_C_Horse_Gang_Uncle`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'UncleEndlessSummer',
        model       = `A_C_Horse_Gang_Uncle_EndlessSummer`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'DarkDappleGrey',
        model       = `A_C_Horse_HungarianHalfbred_DarkDappleGrey`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'LiverChestnut',
        model       = `A_C_Horse_HungarianHalfbred_LiverChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'HungarianHalfbredFlaxenChestnut',
        model       = `A_C_Horse_HungarianHalfbred_FlaxenChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'PiebaldTobiano',
        model       = `A_C_Horse_HungarianHalfbred_PiebaldTobiano`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'JohnEndlessSummer',
        model       = `A_C_Horse_John_EndlessSummer`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'KentuckySaddleBlack',
        model       = `A_C_Horse_KentuckySaddle_Black`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ButterMilkBuckskinPC',
        model       = `A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ChestnutPinto',
        model       = `A_C_Horse_KentuckySaddle_ChestnutPinto`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SaddleGrey',
        model       = `A_C_Horse_KentuckySaddle_Grey`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SilverBay',
        model       = `A_C_Horse_KentuckySaddle_SilverBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'AmberChampagne',
        model       = `A_C_Horse_MissouriFoxTrotter_AmberChampagne`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SableChampagne',
        model       = `A_C_Horse_MissouriFoxTrotter_SableChampagne`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SilverDapplePinto',
        model       = `A_C_Horse_MissouriFoxTrotter_SilverDapplePinto`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Bay',
        model       = `A_C_Horse_Morgan_Bay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'MorganBayRoan',
        model       = `A_C_Horse_Morgan_BayRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'MorganFlaxenChestnut',
        model       = `A_C_Horse_Morgan_FlaxenChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'LiverChestnutPC',
        model       = `A_C_Horse_Morgan_LiverChestnut_PC`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Palomino',
        model       = `A_C_Horse_Morgan_Palomino`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Mangy',
        model       = `A_C_Horse_MP_Mangy_Backup`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Mange',
        model       = `A_C_Horse_MurfreeBrood_Mange_01`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Mange2',
        model       = `A_C_Horse_MurfreeBrood_Mange_02`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Mange3',
        model       = `A_C_Horse_MurfreeBrood_Mange_03`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'GoldenDun',
        model       = `A_C_Horse_Mustang_GoldenDun`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'GrulloDun',
        model       = `A_C_Horse_Mustang_GrulloDun`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'TigerStripedBay',
        model       = `A_C_Horse_Mustang_TigerStripedBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'WildBay',
        model       = `A_C_Horse_Mustang_WildBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BlueRoan',
        model       = `A_C_Horse_Nokota_BlueRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ReverseDappleRoan',
        model       = `A_C_Horse_Nokota_ReverseDappleRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'WhiteRoan',
        model       = `A_C_Horse_Nokota_WhiteRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ShireDarkBay',
        model       = `A_C_Horse_Shire_DarkBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'LightGrey',
        model       = `A_C_Horse_Shire_LightGrey`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'RavenBlack',
        model       = `A_C_Horse_Shire_RavenBlack`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'SuffolkPunchRedChestnut',
        model       = `A_C_Horse_SuffolkPunch_RedChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'PunchSorrel',
        model       = `A_C_Horse_SuffolkPunch_Sorrel`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BlackRabicano',
        model       = `A_C_Horse_TennesseeWalker_BlackRabicano`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Chestnut',
        model       = `A_C_Horse_TennesseeWalker_Chestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'DappleBay',
        model       = `A_C_Horse_TennesseeWalker_DappleBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'FlaxenRoan',
        model       = `A_C_Horse_TennesseeWalker_FlaxenRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'GoldPalominoPC',
        model       = `A_C_Horse_TennesseeWalker_GoldPalomino_PC`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'MahoganyBay',
        model       = `A_C_Horse_TennesseeWalker_MahoganyBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'RedRoan',
        model       = `A_C_Horse_TennesseeWalker_RedRoan`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BlackChestnut',
        model       = `A_C_Horse_Thoroughbred_BlackChestnut`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'BloodBay',
        model       = `A_C_Horse_Thoroughbred_BloodBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Brindle',
        model       = `A_C_Horse_Thoroughbred_Brindle`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'DappleGrey',
        model       = `A_C_Horse_Thoroughbred_DappleGrey`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'ReverseDappleBlack',
        model       = `A_C_Horse_Thoroughbred_ReverseDappleBlack`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'TurkomanDarkBay',
        model       = `A_C_Horse_Turkoman_DarkBay`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Gold',
        model       = `A_C_Horse_Turkoman_Gold`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Silver',
        model       = `A_C_Horse_Turkoman_Silver`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Winter2',
        model       = `A_C_Horse_Winter02_01`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Mule',
        model       = `A_C_HorseMule_01`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'MulePainted',
        model       = `A_C_HorseMulePainted_01`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    },
    {
        name        = 'Horse',
        model       = `P_C_Horse_01`,
        rewardmoney = math.random(15, 30),
        rewarditem  = 'water'
    }
}

-- mapping of horse model hashes to their names
Config.HorseModels = {
    [-1261814606] = 'a_c_horse_nokota_whiteroan',
    [1772321403] = 'a_c_donkey_01',
    [-1963397600] = 'A_C_Horse_AmericanPaint_Greyovero',
    [-450053710] = 'A_C_Horse_AmericanPaint_Overo',
    [1792770814] = 'A_C_Horse_AmericanPaint_SplashedWhite',
    [-1679658797] = 'A_C_Horse_AmericanPaint_Tobiano',
    [-1250098797] = 'A_C_Horse_AmericanStandardbred_Black',
    [-318278790] = 'A_C_Horse_AmericanStandardbred_Buckskin',
    [55096099] = 'A_C_Horse_AmericanStandardbred_PalominoDapple',
    [-458397856] = 'A_C_Horse_AmericanStandardbred_SilverTailBuckskin',
    [-444610976] = 'A_C_Horse_Andalusian_DarkBay',
    [705691988] = 'A_C_Horse_Andalusian_Perlino',
    [746627200] = 'A_C_Horse_Andalusian_RoseGray',
    [-1028075925] = 'A_C_Horse_Appaloosa_BlackSnowflake',
    [2130094044] = 'A_C_Horse_Appaloosa_Blanket',
    [-1029277326] = 'A_C_Horse_Appaloosa_BrownLeopard',
    [604357666] = 'A_C_Horse_Appaloosa_FewSpotted_PC',
    [-1140650619] = 'A_C_Horse_Appaloosa_Leopard',
    [-1554827654] = 'A_C_Horse_Appaloosa_LeopardBlanket',
    [-1999198818] = 'A_C_Horse_Arabian_Black',
    [84224102] = 'A_C_Horse_Arabian_Grey',
    [1496579364] = 'A_C_Horse_Arabian_RedChestnut',
    [-1523757120] = 'A_C_Horse_Arabian_RedChestnut_PC',
    [-403470324] = 'A_C_Horse_Arabian_RoseGreyBay',
    [1576849913] = 'A_C_Horse_Arabian_WarpedBrindle_PC',
    [-925223936] = 'A_C_Horse_Arabian_White',
    [-1547438906] = 'A_C_Horse_Ardennes_BayRoan',
    [-2026265047] = 'A_C_Horse_Ardennes_IronGreyRoan',
    [-635239558] = 'A_C_Horse_Ardennes_StrawberryRoan',
    [-586898625] = 'A_C_Horse_Belgian_BlondChestnut',
    [937246805] = 'A_C_Horse_Belgian_MealyChestnut',
    [549900435] = 'A_C_Horse_Buell_WarVets',
    [687445866] = 'A_C_Horse_DutchWarmblood_ChocolateRoan',
    [861505058] = 'A_C_Horse_DutchWarmblood_SealBrown',
    [1593035738] = 'A_C_Horse_DutchWarmblood_SootyBuckskin',
    [-1760684159] = 'A_C_Horse_Gang_Bill',
    [-548014618] = 'A_C_Horse_Gang_Charles',
    [1800725969] = 'A_C_Horse_Gang_Charles_EndlessSummer',
    [-1391147923] = 'A_C_Horse_Gang_Dutch',
    [-646460384] = 'A_C_Horse_Gang_Hosea',
    [-1181161469] = 'A_C_Horse_Gang_Javier',
    [-1642485146] = 'A_C_Horse_Gang_John',
    [-1486704931] = 'A_C_Horse_Gang_Karen',
    [1139858530] = 'A_C_Horse_Gang_Kieran',
    [-1053639984] = 'A_C_Horse_Gang_Lenny',
    [-941733863] = 'A_C_Horse_Gang_Micah',
    [-1084397164] = 'A_C_Horse_Gang_Sadie',
    [-575759638] = 'A_C_Horse_Gang_Sadie_EndlessSummer',
    [-1718100160] = 'A_C_Horse_Gang_Sean',
    [979093383] = 'A_C_Horse_Gang_Trelawney',
    [1760888205] = 'A_C_Horse_Gang_Uncle',
    [291878635] = 'A_C_Horse_Gang_Uncle_EndlessSummer',
    [-819697512] = 'A_C_Horse_HungarianHalfbred_DarkDappleGrey',
    [-1896838685] = 'A_C_Horse_HungarianHalfbred_LiverChestnut',
    [1705182311] = 'A_C_Horse_HungarianHalfbred_FlaxenChestnut',
    [-78273782] = 'A_C_Horse_HungarianHalfbred_PiebaldTobiano',
    [-2063289686] = 'A_C_Horse_John_EndlessSummer',
    [-147265944] = 'A_C_Horse_KentuckySaddle_Black',
    [-1516219602] = 'A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC',
    [-1265030920] = 'A_C_Horse_KentuckySaddle_ChestnutPinto',
    [2024948086] = 'A_C_Horse_KentuckySaddle_Grey',
    [1696286663] = 'A_C_Horse_KentuckySaddle_SilverBay',
    [-1342159303] = 'A_C_Horse_MissouriFoxTrotter_AmberChampagne',
    [-420599285] = 'A_C_Horse_MissouriFoxTrotter_SableChampagne',
    [-1154406788] = 'A_C_Horse_MissouriFoxTrotter_SilverDapplePinto',
    [2030804811] = 'A_C_Horse_Morgan_Bay',
    [1230359523] = 'A_C_Horse_Morgan_BayRoan',
    [-1038436471] = 'A_C_Horse_Morgan_FlaxenChestnut',
    [-1063137731] = 'A_C_Horse_Morgan_LiverChestnut_PC',
    [96930969] = 'A_C_Horse_Morgan_Palomino',
    [808655744] = 'A_C_Horse_MP_Mangy_Backup',
    [917402668] = 'A_C_Horse_MurfreeBrood_Mange_01',
    [-914712122] = 'A_C_Horse_MurfreeBrood_Mange_02',
    [-598917269] = 'A_C_Horse_MurfreeBrood_Mange_03',
    [-2145697477] = 'A_C_Horse_Nokota_BlueRoan',
    [107013696] = 'A_C_Horse_Nokota_ReverseDappleRoan',
    [-1230516683] = 'A_C_HorseMule_01',
    [594040097] = 'A_C_HorseMulePainted_01',
    [-363708904] = 'P_C_horse_01',
    [1072019803] = 'A_C_Horse_tennesseewalker_blackrabicano',
    [1074477367] = 'a_c_horse_tennesseewalker_chestnut',
    [-85890205] = 'a_c_horse_tennesseewalker_dapplebay',
    [-1667789645] = 'a_c_horse_tennesseewalker_flaxenroan',
    [1048964673] = 'A_C_Horse_TennesseeWalker_GoldPalomino_PC',
    [446670976] = 'a_c_horse_tennesseewalker_mahoganybay',
    [-727455979] = 'a_c_horse_tennesseewalker_redroan',
    -- Add more mappings for other horse models here
}
