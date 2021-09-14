Config = Config or {}

Config.WomanPlayerModels = {
    'mp_f_freemode_01',
}
    
Config.ManPlayerModels = {
    'mp_m_freemode_01',
}

Config.LoadedManModels = {}
Config.LoadedWomanModels = {}
Config.Stores = {
    	[1] =   {shopType = "clothing", coords = vector3(1693.32, 4823.48,41.06 )},
	[2] =   {shopType = "clothing", coords = vector3(-712.215881, -155.352982, 37.4151268)},
	[3] =   {shopType = "clothing", coords = vector3(-1192.94495, -772.688965, 17.3255997)},
	[4] =   {shopType = "clothing", coords = vector3( 425.236, -806.008, 28.491)},
	[5] =   {shopType = "clothing", coords = vector3(-162.658, -303.397, 38.733)},
	[6] =   {shopType = "clothing", coords = vector3(75.950, -1392.891, 28.376)},
	[7] =   {shopType = "clothing", coords = vector3(-822.194, -1074.134, 10.328)},
	[8] =   {shopType = "clothing", coords = vector3(-1450.711, -236.83, 48.809)},
	[9] =   {shopType = "clothing", coords = vector3(4.254, 6512.813, 30.877)},
	[10] =  {shopType = "clothing", coords = vector3(615.180, 2762.933, 41.088)},
	[11] =  {shopType = "clothing", coords = vector3(1196.785, 2709.558, 37.222)},
	[12] =  {shopType = "clothing", coords = vector3(-3171.453, 1043.857, 19.863)},
	[13] =  {shopType = "clothing", coords = vector3(-1100.959, 2710.211, 18.107)},
	[14] =  {shopType = "clothing", coords = vector3(-1207.65, -1456.88, 4.3784737586975)},
    	[15] =  {shopType = "clothing", coords = vector3(121.76, -224.6, 53.56)},
	[16] =  {shopType = "barber",  coords = vector3(-814.3, -183.8, 36.6)},
	[17] =  {shopType = "barber",  coords = vector3(136.8, -1708.4, 28.3)},
	[18] =  {shopType = "barber",  coords = vector3(-1282.6, -1116.8, 6.0)},
	[19] =  {shopType = "barber",  coords = vector3(1931.5, 3729.7, 31.8)},
	[20] =  {shopType = "barber",  coords = vector3(1212.8, -472.9, 65.2)},
	[21] =  {shopType = "barber",  coords = vector3(-32.9, -152.3, 56.1)},
	[22] =  {shopType = "barber",  coords = vector3(-278.1, 6228.5, 30.7)}
}

Config.ClothingRooms = {
    [1] = {requiredJob = "police", coords = vector3(454.43, -988.85, 30.69), cameraLocation = vector4(454.42, -990.52, 30.69, 358.48)},
    [2] = {requiredJob = "ambulance", coords = vector3(1462.64, 693.23, 33.51), cameraLocation = vector4(1462.76,  695.59,  33.51, 175.01)},
    [3] = {requiredJob = "police", coords = vector3(314.76, 671.78, 14.73), cameraLocation = vector4(317.62,  671.86,  14.73,  91.53)},
    [4] = {requiredJob = "ambulance", coords = vector3(338.70, 659.61, 14.71), cameraLocation = vector4(339.27,  661.63,  14.71,  315.5)},    
    [5] = {requiredJob = "ambulance", coords = vector3(-1098.45, 1751.71, 23.35), cameraLocation = vector4(-1097.15, 1750.19,  23.35, 38.70)},    
    [6] = {requiredJob = "police", coords = vector3(-77.59, -129.17, 5.03), cameraLocation = vector4(-80.36,  -130.76,  5.03,  300.44)},
}

Config.Outfits = {
    ["police"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "short sleeve ",
                outfitData = {
                    ["pants"]       = { item = 95, texture = 0},  -- PANTS
                    ["arms"]        = { item = 0, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 27, texture = 0},  -- VEST
                    ["torso2"]      = { item = 247, texture = 0},  -- JACKET
                    ["shoes"]       = { item = 51, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 6, texture = 0},  -- Neck
                    ["bag"]         = { item = 73, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -1},  -- HAT
                    ["glass"]       = { item = 0, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = 0, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 141, texture = 0},  -- MASK
                },
            },
            [2] = {
                outfitLabel = "Long sleeve",
                outfitData = {
                    ["pants"]       = { item = 95, texture = 0},  -- Broek
                    ["arms"]        = { item = 1, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 55, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 27, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 243, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 51, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 73, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]         = { item = 141, texture = 0},  -- Masker
                },
            },
            [3] = {
                outfitLabel = "Trooper Tan",
                outfitData = {
                    ["pants"]       = { item = 95, texture = 0},  -- Broek
                    ["arms"]        = { item = 1, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 57, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 27, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 248, texture = 1},  -- Jas / Vesten
                    ["shoes"]       = { item = 51, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 6, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 73, texture = 0},  -- Tas
                    ["hat"]         = { item = 13, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]         = { item = 141, texture = 0},  -- Masker
                },
            },
            [4] = {
                outfitLabel = "Trooper Black",
                outfitData = {
                    ["pants"]       = { item = 95, texture = 0},  -- Broek
                    ["arms"]        = { item = 1, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 55, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 27, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 248, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 51, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 73, texture = 0},  -- Tas
                    ["hat"]         = { item = 13, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]         = { item = 141, texture = 0},  -- Masker
                },
            },
            [5] = {
                outfitLabel = "Jacket",
                outfitData = {
                    ["pants"]       = { item = 95, texture = 0},  -- Broek
                    ["arms"]        = { item = 1, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 107, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 244, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 51, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 9, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]         = { item = 127, texture = 0},  -- Masker
                },
            },
            [6] = {
                outfitLabel = "Swat",
                outfitData = {
                    ["pants"]       = { item = 31, texture = 2},  -- Broek
                    ["arms"]        = { item = 17, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 27, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 49, texture = 2},  -- Jas / Vesten
                    ["shoes"]       = { item = 24, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 1, texture = 0},  -- Nek / Das
            --      ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 39, texture = 2},  -- Pet
                    ["glass"]       = { item = 25, texture = 4},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]         = { item = 72, texture = 0},  -- Masker
                },
            },
            [7] = {
                outfitLabel = "Cadet",
                outfitData = {
                    ["pants"]       = { item = 95, texture = 1},  -- Broek
                    ["arms"]        = { item = 11, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 57, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 18, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 246, texture = 1},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 7, texture = 0},  -- Decals
                    ["accessory"]   = { item = 6, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 9, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]         = { item = 141, texture = 0},  -- Masker
                },
            },
        },
        ["female"] = {
            [1] = {
                outfitLabel = "Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 105, texture = 0},  -- Broek
                    ["arms"]        = { item = 14, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 34, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 266, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 55, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 8, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 32, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 141, texture = 0},  -- Masker
                },
            },
            [2] = {
                outfitLabel = "Trooper Tan",
                outfitData = {
                    ["pants"]       = { item = 105, texture = 0},  -- Broek
                    ["arms"]        = { item = 14, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 264, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 55, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 13, texture = 2},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 141, texture = 0},  -- Masker
                },
            },
            [3] = {
                outfitLabel = "Trooper Black",
                outfitData = {
                    ["pants"]       = { item = 105, texture = 0},  -- Broek
                    ["arms"]        = { item = 14, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 264, texture = 1},  -- Jas / Vesten
                    ["shoes"]       = { item = 55, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 8, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 13, texture = 2},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 141, texture = 0},  -- Masker
                },
            },
            [4] = {
                outfitLabel = "Swat",
                outfitData = {
                    ["pants"]       = { item = 30, texture = 2},  -- Broek
                    ["arms"]        = { item = 18, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 3, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 34, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 230, texture = 20},  -- Jas / Vesten
                    ["shoes"]       = { item = 24, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 59, texture = 9},  -- Pet
                    ["glass"]       = { item = 27, texture = 4},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 72, texture = 0},  -- Masker
                },
            },
            [5] = {
                outfitLabel = "Cadet",
                outfitData = {
                    ["pants"]       = { item = 105, texture = 1},  -- Broek
                    ["arms"]        = { item = 9, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 2, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 19, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 265, texture = 1},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 8, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 38, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
            --      ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 141, texture = 0},  -- Masker
                },
            },
        }
    },
    ["ambulance"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "T-Shirt",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 0},  -- Broek
                    ["arms"]        = { item = 85, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 88, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 32, texture = 6},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [2] = {
                outfitLabel = "Polo",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 0},  -- Broek
                    ["arms"]        = { item = 85, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 88, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 93, texture = 2},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
			[3] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 59,texture = 5},  -- Broek
                    ["arms"]        = { item = 86, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 135, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 151, texture = 4},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 79, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker	
				},
			},
			[4] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 0},  -- Broek
                    ["arms"]        = { item = 85, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 88, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 18, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 32, texture = 6},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [5] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 0},  -- Broek
                    ["arms"]        = { item = 85, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 88, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 18, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 93, texture = 2},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
        },
        ["female"] = {
            [1] = {
                outfitLabel = "short sleeve white polo ",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 237, texture = 1},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
                },
            },
            [2] = {
                outfitLabel = "short sleeve blue polo ",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 237, texture = 0},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
                },
            },
            [3] = {
                outfitLabel = "short sleeve white button up ",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 238, texture = 1},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
                },
            },
            [4] = {
                outfitLabel = "short sleeve blue button up ",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 238, texture = 0},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
                },
            },
        },
    },
    ["doctor"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 0},  -- Broek
                    ["arms"]        = { item = 86, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 88, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 118, texture = 7},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
				},
			},
			[2] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 0},  -- Broek
                    ["arms"]        = { item = 85, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 88, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 18, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 32, texture = 6},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
				},
			},			
			[3] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 49,texture = 4},  -- Broek
                    ["arms"]        = { item = 86, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 51, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 151, texture = 2},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker
				},
			},
			[4] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 59,texture = 5},  -- Broek
                    ["arms"]        = { item = 86, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 135, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 151, texture = 3},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 79, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker	
				},
			},
			[5] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 59,texture = 5},  -- Broek
                    ["arms"]        = { item = 86, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 135, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 151, texture = 5},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 79, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker	
				},
			},
			[6] = {
                outfitLabel = "Placeholder",
                outfitData = {
                    ["pants"]       = { item = 59,texture = 5},  -- Broek
                    ["arms"]        = { item = 86, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 135, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 151, texture = 4},  -- Jas / Vesten
                    ["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 0, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = 0, texture = 0},  -- Tas
                    ["hat"]         = { item = 79, texture = 0},  -- Pet
                    ["glass"]       = { item = 0, texture = 0},  -- Bril
                    ["ear"]         = { item = 0, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 121, texture = 0},  -- Masker	
				},
			},		
		},		
        ["female"] = {
            [1] = {
                outfitLabel = "Doctor",
                outfitData = {
                    ["pants"]       = { item = 52, texture = 2},  -- PANTS
                    ["arms"]        = { item = 101, texture = 1},  -- ArmS
                    ["t-shirt"]     = { item = 38, texture = 1},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 139, texture = 2},  -- JACKET
                    ["shoes"]       = { item = 62, texture = 20},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
				},
            },
            [2] = {
                outfitLabel = "short sleeve white polo",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 237, texture = 1},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
				},
            },
            [3] = {
                outfitLabel = "short sleeve blue polo",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 237, texture = 0},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
				},
            },
            [4] = {
                outfitLabel = "short sleeve white button up",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 238, texture = 1},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
				},
            },
            [5] = {
                outfitLabel = "short sleeve blue button up",
                outfitData = {
                    ["pants"]       = { item = 34, texture = 0},  -- PANTS
                    ["arms"]        = { item = 98, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 6, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 20, texture = 0},  -- VEST
                    ["torso2"]      = { item = 238, texture = 0},  -- JACKET
                    ["shoes"]       = { item = 52, texture = 0},  -- SHOES
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = 96, texture = 0},  -- Neck
                    ["bag"]         = { item = 0, texture = 0},  -- BAG
                    ["hat"]         = { item = -1, texture = -0},  -- HAT
            --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
            --      ["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    ["mask"]        = { item = 0, texture = 0},  -- MASK
				},
            },
        },
    },
}
