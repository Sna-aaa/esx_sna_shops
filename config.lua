Config = {}
Config.DrawDistance = 100
Config.MarkerSize = {x = 1.1, y = 1.1, z = 0.9}
Config.MarkerType =  21
Config.MarkerColor = {r = 102, g = 102, b = 204, a = 255}
Config.Locale = 'fr'

Config.Zones = {

	TwentyFourSeven = {
		Items = {
			{
				name = "bread",
				label = "Pain",
				price = 100,
				stockmax = 300
			},
			{
				name = "water",
				label = "Eau",
				price = 100,
				stockmax = 500
			}
		},
		Stores = {
			{	Uid = 100, Pos = vector3(373.8, 325.8, 102.5) },
			{	Uid = 101, Pos = vector3(2557.4, 382.2, 107.6) },
			{	Uid = 102, Pos = vector3(-3038.9, 585.9, 6.9) },
			{	Uid = 103, Pos = vector3(-3241.9, 1001.4, 11.8) },
			{	Uid = 104, Pos = vector3(547.4, 2671.7, 41.1) },
			{	Uid = 105, Pos = vector3(1961.4, 3740.6, 31.3) },
			{	Uid = 106, Pos = vector3(2678.9, 3280.6, 54.2) },
			{	Uid = 107, Pos = vector3(1729.2, 6414.1, 34.0) }
		},
		Size  = 1.0,
		Type  = 59,
		Color = 25,
		ShowBlip = true,
		ShowMarker = true
	},

	RobsLiquor = {
		Items = {
			{
				name = "bread",
				label = "Pain",
				price = 100,
				stockmax = 300
			},
			{
				name = "water",
				label = "Eau",
				price = 100,
				stockmax = 500
			}
		},
		Stores = {
			{	Uid = 110, Pos = vector3(1135.8, -982.2, 45.4) },
			{	Uid = 111, Pos = vector3(-1222.9, -906.9, 11.3) },
			{	Uid = 112, Pos = vector3(-1487.5, -379.1, 39.1) },
			{	Uid = 113, Pos = vector3(-2968.2, 390.9, 14.0) },
			{	Uid = 114, Pos = vector3(1166.0, 2708.9, 37.1) },
			{	Uid = 115, Pos = vector3(1392.5, 3604.6,  33.9) },
			{	Uid = 116, Pos = vector3(127.8,  -1284.7, 28.2) }, --StripClub
			{	Uid = 117, Pos = vector3(-1393.4, -606.6, 29.3) }, --Tequila la
			{	Uid = 118, Pos = vector3(-559.9, 287.0, 81.1) } --Bahamamas
		},
		Size  = 1.0,
		Type  = 59,
		Color = 25,
		ShowBlip = true,
		ShowMarker = true
	},

	LTDgasoline = {
		Items = {
			{
				name = "bread",
				label = "Pain",
				price = 100,
				stockmax = 300
			},
			{
				name = "water",
				label = "Eau",
				price = 100,
				stockmax = 500
			}
		},
		Stores = {
			{	Uid = 120, Pos = vector3(-48.5,  -1757.5, 28.4) },
			{	Uid = 121, Pos = vector3(1163.3, -323.8, 68.2) },
			{	Uid = 122, Pos = vector3(-707.5, -914.2, 18.2) },
			{	Uid = 123, Pos = vector3(-1820.5, 792.5, 137.1) },
			{	Uid = 124, Pos = vector3(1698.3, 4924.4, 41.0) }
		},
		Size  = 1.0,
		Type  = 59,
		Color = 25,
		ShowBlip = true,
		ShowMarker = true
	}
}
