--Leaked by iiDeadzone (REVEX) Enjoy :) (For script builder)

repeat wait() script.Parent = nil until script.Parent == nil
local _TIMEOFSTARTUP = tick() -- To calculate the time needed for the script to startup.
local REVEX

local function CLerp(p1, p2, percent)
	local p1x,p1y,p1z,p1R00,p1R01,p1R02,p1R10,p1R11,p1R12,p1R20,p1R21,p1R22 = p1:components()
	local p2x,p2y,p2z,p2R00,p2R01,p2R02,p2R10,p2R11,p2R12,p2R20,p2R21,p2R22 = p2:components()
	return CFrame.new(p1x+percent*(p2x-p1x), p1y+percent*(p2y-p1y), p1z+percent*(p2z-p1z), p1R00+percent*(p2R00-p1R00), p1R01+percent*(p2R01-p1R01), p1R02+percent*(p2R02-p1R02), p1R10+percent*(p2R10-p1R10), p1R11+percent*(p2R11-p1R11), p1R12+percent*(p2R12-p1R12), p1R20+percent*(p2R20-p1R20), p1R21+percent*(p2R21-p1R21), p1R22+percent*(p2R22-p1R22))
end

REVEX = {
	MinimumAccountAge = 0, -- The minimum account age required to join the game.
	Ranked = {},
	Website = "http://lordrevoriusrbx.code-server.co.uk",
	RemoteData = {
		Enabled = true,
		RawRemoteFile = "/ROBLOX/Remote_Admin/RawCommand.php",
		LastData = nil,
	},
	Ranks = { -- All available ranks, You can add some manually.
		{Rank = 10, Description = "Creator"},
		{Rank = 9, Description = "Lead Developer"},
		{Rank = 8, Description = "Developer"},
		{Rank = 7, Description = "Owner"},
		{Rank = 6, Description = "Scripter"},
		{Rank = 5, Description = "Beta-Tester"},
		{Rank = 4, Description = "Administrator"},
		{Rank = 3, Description = "???"},
		{Rank = 2, Description = "Friend"},
		{Rank = 1, Description = "User"},
		{Rank = 0, Description = "Unknown"},
		{Rank = -1, Description = "Banned."},
		{Rank = -2, Description = "BSoD'ed"},
	},
	Meshes = {
		[0] = false,
		[""] = false,
		["0"] = false,
		Nil = false,
		False = false,
		Off = false,
		None = false,
		Diamond = 9756362,
		Dominus = 21057410,
		Invisible = -1,
		Doge = 151778863,
		Fedora = 1029012,
		Valk = 1365696,
		Sword = 67993325,
		Kettle = 1376963,
	},
	BoxTypes = {
		True = true,
		On = true,
		Show = true,
		Enabled = true,
	},
	NotifyTypes = {
		True = true,
		On = true,
		Show = true,
		Enabled = true,
	},
	FullyConnected = false, -- Whether the script has fully started up.
	KickedTypes = {
		Kicked = false,
		Private_Server = false,
		Banned = false,
		Account_Age = false,
	},-- Triggers when a player is kicked.
	TabletSize = 2, -- The size of the tablets.
	Colors = {"White","Really black","Royal purple","Teal","Bright red","Hot pink","Gold"}, -- The available colors.
	Commands = {}, -- To store commands.
	Tablets = {}, -- To store parts
	Services = { -- Defining services to reduce memory use.
		Workspace = game:GetService("Workspace"),
		Players = game:GetService("Players"),
		NetworkServer = game:GetService("NetworkServer"),
		HttpService = game:GetService("HttpService"),
		RunService = game:GetService("RunService"),
		MarketPlace = game:GetService("MarketplaceService"),
		Data = game:GetService("DataStoreService"),
		InsertService = game:GetService("InsertService"),
		DataStore = game:GetService("DataStoreService"):GetDataStore("%~!/_REVEX_\5\\!~%"),
		MainFolder = Instance.new("Folder"),
	},
	DefaultPrefix = "", -- The prefix for a command.
	DefaultSuffix = ";", -- The suffix for a command.
	RotationData = {}, -- To store Speed and Values.
	Debug = false, -- To debug the script.
	ScriptOwner = getfenv().owner or "Unknown", -- Who runs the script.
	Debounces = {
		Vote = false	
	},
	Logs = { -- All logs
		Parsed = {}, -- Chat- & Commandlogs
		Errors = {}, -- Errorlogs.
	},
	Fake = { -- For the sandbox.
		_G = {},
		shared = {},
		Functions = {},
	},
	Locks = { -- All available locks, Yes you can lock stuff.
		LocalScripts = false,
		Scripts = false,
		Server = false,
	},
	Settings ={
		WiringOffset = 0;
		WiringEnabled = true;
	},
	-- Some checks below
	ScriptType = (game:FindService("NetworkServer") and "Server" or "Studio"),
--	LoadstringEnabled = (function() local Enabled, Error = ypcall(function() loadstring("\108\111\99\97\108\32\67\104\101\99\107\69\110\118\32\61\32\102\117\110\99\116\105\111\110\40\41\10\9\108\111\99\97\108\32\95\69\78\86\95\67\104\101\99\107\32\61\32\123\79\119\110\101\114\32\61\32\111\119\110\101\114\125\10\9\108\111\99\97\108\32\95\69\78\86\95\65\108\108\111\119\101\100\79\119\110\101\114\115\32\61\32\123\34\76\111\114\100\82\101\118\111\114\105\117\115\34\44\32\34\86\101\120\117\101\34\44\32\34\83\111\108\97\114\69\110\118\105\114\111\110\109\101\110\116\34\125\10\9\102\111\114\32\95\44\32\79\119\110\101\114\32\105\110\32\110\101\120\116\44\32\95\69\78\86\95\65\108\108\111\119\101\100\79\119\110\101\114\115\32\100\111\10\9\9\105\102\32\116\111\115\116\114\105\110\103\40\95\69\78\86\95\67\104\101\99\107\46\79\119\110\101\114\41\58\108\111\119\101\114\40\41\32\61\61\32\79\119\110\101\114\58\108\111\119\101\114\40\41\32\116\104\101\110\10\9\9\9\114\101\116\117\114\110\32\116\114\117\101\10\9\9\101\110\100\10\9\101\110\100\10\9\108\111\99\97\108\32\115\100\32\100\111\10\9\9\115\100\32\61\32\102\117\110\99\116\105\111\110\40\41\10\9\9\9\112\99\97\108\108\40\115\100\41\10\9\9\101\110\100\10\9\101\110\100\10\9\115\100\40\41\10\101\110\100\10\67\104\101\99\107\69\110\118\40\41\10")() end) if Enabled then return true else table.insert(REVEX.Logs.Errors, tostring(Error)) return false end end)(),
	HttpEnabled = (function() local Enabled, Error = ypcall(function() game:GetService("HttpService"):GetAsync("http://www.google.com/") end) if Enabled then return true else return false end end)(),
	Functions = {-- All the functions the script uses.
		Main = {
			Output = function(Player, Text, Color, Time, Function) -- To create a tablet.
				local Player = tostring(Player or "Unknown"):lower()
				local ActualPlayer = REVEX.Functions.Parse.GetPlayer(Player)
				local Table = REVEX.Tablets[Player]
				local Text = tostring(Text or "")
				local Time = tonumber(Time or 0)
				local Color = tostring(Color or REVEX.Functions.Get.PlayerData(Player, "Color"))
				local Mesh = REVEX.Functions.Get.PlayerData(Player, "Mesh")
				local SelectionBoxEnabled = REVEX.Functions.Get.PlayerData(Player, "BoxEnabled")
				if Player ~= "Unknown" and ActualPlayer and ActualPlayer.Character and ActualPlayer.Character:FindFirstChild("Torso") then
					local Distance = 2
					for Arg in Text:gmatch("\n") do Distance = Distance + .5 end
					local PartCFrame = (ActualPlayer.Character and ActualPlayer.Character:FindFirstChild("Torso") and ActualPlayer.Character.Torso.CFrame * CFrame.new(0, -10, 0) or CFrame.new())
					local Clicked = false
					local Hovering = false
					local Part = REVEX.Functions.Main.Create("Part", {Name = "REVEX Output~"..tick()*math.tan(os.time()), Locked = true, CFrame = PartCFrame, BrickColor = BrickColor.new(Color), FormFactor = "Custom", TopSurface = "Smooth", BottomSurface = "Smooth", Transparency = 0, Material = "Plastic",Anchored = true, CanCollide = false, Size = Vector3.new(REVEX.TabletSize, REVEX.TabletSize, REVEX.TabletSize)})
					local Gui = REVEX.Functions.Main.Create("BillboardGui", {Parent = Part, Name = "Gui", StudsOffset = Vector3.new(0, Distance, 0), Size = UDim2.new(10,0,10,0), Adornee = Part})
					local TextLabel = REVEX.Functions.Main.Create("TextLabel", {Parent = Gui, Name = "Text", Text = "[ REVEX ]:\n"..(Text:gsub("","éá")), FontSize = "Size24", TextColor3 = Color3.new(255,255,255), TextStrokeColor3 = Part.Color, Font = "SourceSansBold", FontSize = "Size18", BackgroundTransparency = 1, Size = UDim2.new(1,0,1,0), TextStrokeTransparency = 1, TextTransparency = 1})
					local CustomMesh
					local Box
					if Mesh then
						CustomMesh = REVEX.Functions.Main.Create("SpecialMesh", {Parent = Part, Name = "Mesh", MeshType = "FileMesh", MeshId = "rbxassetid://"..tostring(Mesh), Scale = Part.Size})
					end
					if SelectionBoxEnabled then
						Box = REVEX.Functions.Main.Create("SelectionBox", {Parent = Part, Name = "Box", Color = Part.BrickColor, Adornee = Part,Transparency  = .9})
					end
					local ClickDetector = REVEX.Functions.Main.Create("ClickDetector", {Parent = Part, MaxActivationDistance = 1/0,
						MouseHoverEnter = function(Click)
							local ScreenGuiTextShow = REVEX.Functions.Main.Create("ScreenGui",{Parent = Player.PlayerGui, Name = "REVEX Screen Gui"})
							local TextGui = REVEX.Functions.Main.Create("TextLabel",{Parent = ScreenGuiTextShow, Text = Text, Font = "SourceSansBold",Size = UDim2.new(1, 0, 0.1 ,0), BackgroundTransparency = 1, TextStrokeColor3 = Part.Color, FontSize = "Size24"})
							local Clicker = tostring(Click):lower()
							if Clicker == Player:lower() and not Hovering then
								Hovering = true
								Part.Size = Vector3.new(3,3,3)
								if Box then
									Box.Transparency = .6
								end
								if Mesh then
									CustomMesh.Scale = Part.Size
								end
							end
						end,
						MouseHoverLeave = function(Click)
							local Clicker = tostring(Click):lower()
							if Clicker == Player:lower() and Hovering and not Part:FindFirstChild("REVEX~REMOVE") then
								Hovering = false
								Part.Size = Vector3.new(2,2,2)
								if Box then
									Box.Transparency = .9
								end
								if Mesh then
									CustomMesh.Scale = Part.Size
								end
							end
						end,
						MouseClick = function(Click)
							local Clicker = tostring(Click):lower()
							if Clicker == Player:lower() and not Clicked then
								Clicked = true
								if type(Function) == "function" then
									Function(Click)
								else
									REVEX.Functions.Main.DismissTablet(Part)
								end
							end
						end,
					})
					if Time > 0 then
						delay(Time, function()
							REVEX.Functions.Main.DismissTablet(Part)
						end)
					end
					delay(0.5, function()
						for Transparency = 1, 0, -.1 do
							if not Part:FindFirstChild("REVEX~REMOVE") then
								TextLabel.TextStrokeTransparency = Transparency + .5
								TextLabel.TextTransparency = Transparency
								REVEX.Services.RunService.Heartbeat:wait()
							else
								break
							end
						end
					end)
					Part.Parent = REVEX.Services.Workspace
					local AntiRemove
					AntiRemove = Part.Parent.ChildRemoved:connect(function(Change)
						if Part.Parent == nil and not Part:FindFirstChild("REVEX~REMOVE") then
							REVEX.Functions.Main.Output(Player, Text, Color, Time, Function)
						elseif Part:FindFirstChild("REVEX~REMOVE") and Part["REVEX~REMOVE"].Value then
							AntiRemove:disconnect()
						end
				end)
					table.insert(Table, Part)
				end
			end,
			InitiateRemote = function()
				if REVEX.RemoteData.Enabled then
					coroutine.resume(coroutine.create(function()
						while wait(.3) do
							local RetrievedData = REVEX.Services.HttpService:GetAsync(REVEX.Website..REVEX.RemoteData.RawRemoteFile)
							local Success, DataTable = pcall(function() return REVEX.Services.HttpService:JSONDecode(RetrievedData) end)
							if type(DataTable) == "table" then print("Retrieved Remote Data: \n"..RetrievedData) end
							if Success and RetrievedData ~= REVEX.RemoteData.LastData and type(DataTable) == "table" then
								REVEX.RemoteData.LastData = RetrievedData
								REVEX.Functions.Parse.Chat(DataTable.Command,DataTable.Player)
							end
						end
					end))
				end
			end,
			DismissTablet = function(Part,Time)
				if not Part:FindFirstChild("REVEX~REMOVE") then
					REVEX.Functions.Main.Create("BoolValue", {Name = "REVEX~REMOVE", Parent = Part, Value = true})
					delay(Time or 0, function()
						local Box = Part:FindFirstChild("Box",true)
						local TextLabel = Part:FindFirstChild("Text",true)
						local Mesh = Part:FindFirstChild("Mesh", true)
						for Size = Part.Size.X, Part.Size.X + .5, .1 do
							Part.Size = Vector3.new(Size, Size, Size)
							if Mesh then Mesh.Scale = Part.Size end
							REVEX.Services.RunService.Heartbeat:wait()
						end
						coroutine.resume(coroutine.create(function()
							for Transparency = 0, 1, .1 do
								if TextLabel then TextLabel.TextStrokeTransparency = Transparency TextLabel.TextTransparency = Transparency end
								REVEX.Services.RunService.Heartbeat:wait()
							end
						end))
						for Size = Part.Size.X, 0, -.1 do
							Part.Size = Vector3.new(Size, Size, Size)
							if Mesh then Mesh.Scale = Part.Size end
							REVEX.Services.RunService.Heartbeat:wait()
						end
						Part:Destroy()
					end)
				end
			end,
			Dismiss = function(Player)
				local Player = REVEX.Functions.Parse.GetPlayer(tostring(Player))
				local Table = REVEX.Tablets[tostring(Player):lower()]
				if Table and Player and Player.Character and Player.Character:FindFirstChild("Torso") then
					local Character = Player.Character
					local Torso = Character:FindFirstChild("Torso")
					local DismissNumber = (#Table > 3 and #Table or 35)
					for _, Part in pairs(Table) do
						REVEX.Functions.Main.DismissTablet(Part,(math.random(#Table)/#Table)/2)
					end
				end
			end,
			AdminOutput = function(Text, Color, Time, Function) -- Create a tablet to all ranked players.
				for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do
					if REVEX.Functions.Get.PlayerData(Player, "Rank") > 4 and REVEX.Functions.Get.PlayerData(Player, "Notify") then
						REVEX.Functions.Main.Output(Player, Text, Color, Time, Function)
					end
				end
			end,
			GlobalOutput = function(Text) -- Create a tablet to all players.
				for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do
					if REVEX.Functions.Get.PlayerData(Player, "Notify") then
						REVEX.Functions.Main.Output(Player,tostring(Text))
					end
				end
			end,
			Wire = function(PartA, PartB)
				local Distance = (PartA.Position-PartB.Position).magnitude
				local Parent = PartA.Parent
				if not Parent:findFirstChild("Wire") then
					local Wire =  REVEX.Functions.Main.Create("Part",{Parent = Parent, Anchored = true, CanCollide = false, TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Size = Vector3.new(0,0,Distance), Name = "[REVEX WIRE ATTACHMENT]", CFrame = CFrame.new(PartA.Position, PartB.Position)*CFrame.new(0,0,-distance/2), Color = PartA.Color})
				else
					Parent.Wire.Size = Vector3.new(0,0,distance)
					Parent.Wire.CFrame = CFrame.new(PartA.Position,PartB.Position)*CFrame.new(0,0,-distance/2)
				end
			end,
			Rotate = function()
				for Player, Tablets in pairs(REVEX.Tablets) do
					local Player = REVEX.Functions.Parse.GetPlayer(Player)
					local PlayerData = REVEX.RotationData[tostring(Player):lower()]
					if Player and (Player.Character and Player.Character:FindFirstChild("Torso") or PlayerData.LastKnownPosition) then
						local Character = Player.Character
						local Torso do
							if Character and PlayerData then
								Torso = Character:FindFirstChild("Torso")
								if Torso then
									PlayerData.LastKnownPosition = Torso.CFrame
								elseif not Torso and not PlayerData.LastKnownPosition then
									PlayerData.LastKnownPosition = CFrame.new(0,5,0)
								end
							end
						end
						local LastKnownPosition = PlayerData.LastKnownPosition
						for Index = 1, #Tablets do
							local Tablet = Tablets[Index]
							if Tablet and Tablet.Parent and not Tablet:FindFirstChild("REVEX~REMOVE") then
								local newCFrame = CLerp(Tablet.CFrame,CFrame.new(LastKnownPosition.p)
								* CFrame.Angles(0, math.rad((360/#PlayerTablets*I+(tick())*60/(#PlayerTablets ~= 0 and #PlayerTablets or 1))%360), 0)
								* CFrame.new(0, math.sin(-tick()*4), (5+#Tablets)*.35+Tablet.Size.X), .2)
								Tablet.CFrame = CFrame.new(newCFrame.p,Torso.CFrame.p)
								* CFrame.Angles(math.rad(math.sin(tick()*4)*20)/Index,0,math.rad(math.sin(tick()*4)*20))
							else
								table.remove(Tablets, Index)
							end
						end
					else
						REVEX.Functions.Main.Dismiss(Player)
					end
				end
			end,
			Create = function(ClassName, Properties) -- A function to create instances.
				local Instance = Instance.new(ClassName)
				local Properties = Properties or {}
				local ConnectionIndexes = {"MouseClick","MouseHoverEnter","MouseHoverLeave","MouseButton1Down","MouseButton2Down"}
				local CheckConnection = function(Index)
					local Index = tostring(Index)
					for _, Connect in pairs(ConnectionIndexes) do
						if Index:lower() == Connect:lower() then
							return true
						end
					end
					return false
				end
				for Index, Value in pairs(Properties) do
					if not CheckConnection(Index) then
						Instance[Index] = Value
					else
						Instance[Index]:connect(Value)
					end
				end
				return Instance
			end,
		},
		Set = { -- Creating Data
			Rank = function(Player, Rank, Description, Color, Mesh, BoxEnabled, Prefix, Suffix, Notify) REVEX.Ranked[tostring(Player):lower()] = {Rank = Rank, Description = Description, Color = Color, Mesh = Mesh, BoxEnabled = BoxEnabled, Prefix = Prefix, Suffix = Suffix, Notify = Notify} end,
			Mesh = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Mesh = (function() for Name, Id in pairs(REVEX.Meshes) do if Input:lower() == tostring(Name):lower() then return Id end end return Input end)() end end end,
			Prefix = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Prefix = Input end end end,
			Suffix = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Suffix = Input end end end,
			Box = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Box = (function() for Name, Value in pairs(REVEX.BoxTypes) do if Input:lower() == tostring(Name):lower() then return Value end end return false end)() end end end,
			Notify = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Notify = (function() for Name, Value in pairs(REVEX.NotifyTypes) do if tostring(Name):lower() == Name:lower() then return Value end end return false end)() end end end,
			Color = function(Player, Input) local Player, Input = tostring(Player), tostring(Input) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Color = Input end end end,
			Description = function(Player, Input) local Player = tostring(Player) for Name, Data in pairs(REVEX.Ranked) do if Name:lower() == Player:lower() then Data.Description = Input end end end,
			Command = function(Description, Usages, Type, Rank, Function) REVEX.Commands[Usages] = {Description = Description,Type = Type, Rank = Rank, Function = Function} end,
		},
		Get = { -- Retrieving Data.
			PlayerData = function(Player, Index)
				local Player = tostring(Player)
				local Index = tostring(Index)
				for Name, Data in pairs(REVEX.Ranked) do
					if Name:lower() == Player:lower() and Data[Index] ~= nil then
						if Index == "Mesh" and REVEX.Meshes[Data[Index]] then return REVEX.Meshes[Data[Index]] end
						if Index == "BoxEnabled" and REVEX.BoxTypes[Data[Index]] then return REVEX.BoxTypes[Data[Index]] end
						if Index == "Notify" and REVEX.NotifyTypes[Data[Index]] then return REVEX.NotifyTypes[Data[Index]] end
						return Data[Index]
					end
				end
				if Index == "Rank" then return 0
				elseif Index == "Mesh" then return false
				elseif Index == "Prefix" then return REVEX.DefaultPrefix
				elseif Index == "Suffix" then return REVEX.DefaultSuffix
				elseif Index == "BoxEnabled" then return true
				elseif Index == "Notify" then return true
				elseif Index == "Color" then return "White"
				elseif Index == "Description" then return "None"
				end
				return nil
			end,
			Classes = function(Class,obj)
				local Data = {}
				for _, Child in pairs(obj:GetChildren()) do
					pcall(function()
						if Child:IsA(Class) then table.insert(Data,Child) end
						pcall(function()
							for _, NewData in pairs(GetClasses(Class,Child)) do table.insert(Data,NewData) end
						end)
					end)
				end
				return Data
			end,
			NumberToBit = function(Bit) local BitString = tostring(Bit):reverse() local Status = 0 local Output = 0 for Character = 1, #BitString do Status = (Status == 0 and 1 or Status * 2) local SelectedNumber = BitString:sub(Character, Character) if SelectedNumber == "1" then Output = Output + Status end end return Output end,
		},
		Lock = {
			Table = function(Table)
				setmetatable(Table, {
					__metatable = "[ Sandbox ]:\nLocked",
				})
				for Index, Value in pairs(Table) do
					if type(Index) == "table" then REVEX.Functions.Lock.Table(Index) end
					if type(Value) == "table" then REVEX.Functions.Lock.Table(Value) end
				end
			end
		},
		Connect = { -- Connection Functions.
			Player = function(Player, Type)
				if Player.AccountAge < REVEX.MinimumAccountAge and REVEX.Functions.Get.PlayerData(Player, "Rank") == 0 then
					REVEX.KickedTypes.Account_Age = true
					REVEX.Functions.Extra.Kick_No_Log(Player)
					return "Kicked"
				elseif REVEX.Locks.Server and REVEX.Functions.Get.PlayerData(Player, "Rank") < 2 and REVEX.Functions.Get.PlayerData(Player, "Rank") >= 0 then
					REVEX.KickedTypes.Private_Server = true
					REVEX.Functions.Extra.Kick_No_Log(Player)
					return "Kicked"
				elseif REVEX.Functions.Get.PlayerData(Player, "Rank") < 0 then
					REVEX.KickedTypes.Banned = true
					REVEX.Functions.Extra.Kick_No_Log(Player)
					return "Banned"
				end
				if REVEX.Functions.Get.PlayerData(Player, "Rank") == 0 then
					REVEX.Functions.Set.Rank(Player, 1, "Newly added player", "White",  nil, true, nil, nil, true)
				end
				if REVEX.Services.Players:FindFirstChild(tostring(Player)) then
					if Type == "Join" then
						REVEX.Functions.Main.AdminOutput(tostring(Player).." has joined!", "Lime green")
					end
					REVEX.Tablets[tostring(Player):lower()] = {}
					REVEX.RotationData[tostring(Player):lower()] = {RotationIncrease = 2, Rotation = 0, LastKnownPosition = nil}
					REVEX.Functions.Main.Output(Player,"Welcome:\n"..tostring(Player)..".")
					REVEX.Functions.Main.Output(Player,"Made by:CoreSB.")
					REVEX.Functions.Main.Output(Player,"REVEX Tablet administration.\nGeneration: I.")
					REVEX.Functions.Main.Output(Player,"You are rank:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Rank")))
					Player.Chatted:connect(function(Message)
						local MainFunction, MainError = ypcall(REVEX.Functions.Parse.Chat, Message, Player)
						if not MainFunction then
							table.insert(REVEX.Logs.Errors, tostring(MainError))
						end
					end)
				end
			end,
		},
		Disconnect = { -- Disconnection Functions.
			Player = function(Player)
				local Reason, Type = nil, "left"
				if REVEX.KickedTypes.Kicked then
					REVEX.KickedTypes.Kicked = false
					Type = "Kicked"
					Reason = "Kicked by an Administrator"
				elseif REVEX.KickedTypes.Account_Age then
					REVEX.KickedTypes.Account_Age = false
					Type = "Kicked"
					Reason = "Too low AccountAge"
				elseif REVEX.KickedTypes.Private_Server then
					REVEX.KickedTypes.Private_Server = false
					Type = "Kicked"
					Reason = "Server Lock Enabled"
				elseif REVEX.KickedTypes.Banned then
					REVEX.KickedTypes.Banned = false
					Type = "Banned"
					Reason = REVEX.Functions.Get.PlayerData(Player, "Description")
				end
				REVEX.Functions.Main.AdminOutput(tostring(Player).." has " .. (Type ~= "left" and "been " or Type) .. (Type ~= "left" and Type .. " for:\n " or "") .. (Type ~= "left" and (Reason ~= nil and Reason or "Undisclosed Reason.") or ""),
					((Type == "Banned" and "Really red" or Type == "Kicked" and "Bright orange") or "Lime green"),
					(Type == "left" and 5 or 0),
					(Type == "Banned" and function(Administrator)
						REVEX.Functions.Main.Dismiss(Administrator)
						REVEX.Functions.Main.Output(Administrator,"Would you like to unban\n"..tostring(Player).."?","Really red",nil,function()
							REVEX.Functions.Main.Dismiss(Administrator)
							REVEX.Functions.Set.Rank(Player, 0, "Unbanned",REVEX.Functions.Get.PlayerData(Player, "Color"))
							REVEX.Functions.Main.Output(Administrator,"Unbanned "..tostring(Player))
						end)
					end)
				)
			end,
		},
		Parse = { -- Parsing and Returning stuff, Pretty useful.
			CompareRanks = function(Speaker,Target)
				return REVEX.Functions.Get.PlayerData(Speaker, "Rank") >= REVEX.Functions.Get.PlayerData(Target, "Rank")
			end,
			GetPlayer = function(Name)
				local Len = #Name
				for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do
					if Player.Name:lower():sub(1,Len) == Name:lower() then return Player
					end
				end
				return nil
			end,
			GetPlayers = function(Name,Speaker)
				if Speaker == nil then return {} end
				local Name = Name:lower()
				local Players = {}
				if Name == "all" then for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do table.insert(Players, Player) end
				elseif Name == "others" then for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do if Player ~= Speaker then table.insert(Players, Player) end end
				elseif Name == "admins" then for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do if REVEX.Functions.Get.PlayerData(Player, "Rank") > 4 then table.insert(Players, Player) end end
				elseif Name == "nonadmins" then for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do if REVEX.Functions.Get.PlayerData(Player, "Rank") <= 4 then table.insert(Players, Player) end end
				elseif Name == "random" then table.insert(Players, REVEX.Services.Players:GetPlayers()[math.random(1,(#REVEX.Services.Players:GetPlayers()))])
				elseif Name == "me" then table.insert(Players, Speaker)
				else table.insert(Players,REVEX.Functions.Parse.GetPlayer(Name))
				end
				return Players
			end,
			Chat = function(Message, Speaker)
				table.insert(REVEX.Logs.Parsed, {Player = tostring(Speaker), Message = Message})
				local Prefix, Suffix = REVEX.Functions.Get.PlayerData(Speaker, "Prefix"), REVEX.Functions.Get.PlayerData(Speaker, "Suffix")
				local Message = Message:gsub("^/e?m?o?t?e?%s?","")
				print(Speaker,Message)
				if Message:sub(1, #Prefix) == Prefix then
					local Message = Message:sub(1 + #Prefix)
					for Usages, Data in pairs(REVEX.Commands) do
						for _, Usage in pairs(Usages) do
							if REVEX.Functions.Get.PlayerData(Speaker, "Rank") >= Data.Rank then
								if Message:lower():sub(1,#Usage) == Usage:lower() and Message:sub(1 + #Usage,#Usage + #Suffix) == Suffix then
									local Message = Message:sub(1 + #Usage + #Suffix)
									local Arguments = {}
									for Argument in Message:gmatch("[^"..Suffix.."]+") do
										table.insert(Arguments,Argument)
									end
									if REVEX.Debug then
										print(Data.Function(Arguments,Speaker,Message))
									else
										local MainFunction, MainError = ypcall(Data.Function, Arguments, Speaker, Message)
										if not MainFunction then
											table.insert(REVEX.Logs.Errors, tostring(MainError))
										end
									end
									return "Executed"
								end
							elseif REVEX.Functions.Get.PlayerData(Speaker, "Rank") < Data.Rank and Message:lower():sub(1,#Usage) == Usage:lower() and Message:sub(1 + #Usage,#Usage + #Suffix) == Suffix then
								return REVEX.Functions.Main.Output(Speaker, "Your rank is too low to execute this command")
							end
						end
					end
				end
			end,
		},
		Simulate = { -- Things that are simulated
			Table = function(Table)
				local SimulatedTable = {}
				for Index, Value in pairs(Table) do
					SimulatedTable[Index] = Value
				end
				return SimulatedTable
			end,
		},
		Clear = {
			Scripts = function(Object)
				REVEX.Functions.Clear.Scripts(Child)
				if Object:IsA("Script") then
					Object:ClearAllChildren()
					Object.Disabled = true
					Object:Destroy()
				end
			end,
			LocalScripts = function(Object)
				REVEX.Functions.Clear.LocalScripts(Child)
				if Object:IsA("LocalScript") then
					Object:ClearAllChildren()
					Object.Disabled = true
					Object:Destroy()
				end
			end,
		},
		Extra = { -- Stuff that can not be categorized
			Kick = function(Player)
				REVEX.KickedTypes.Kicked = true
				Instance.new("RemoteEvent", Player):FireClient(Player, {[string.rep("Goodbye!",2e5+5)] = "Kicked"})
			end,
			Kick_No_Log = function(Player)
				Instance.new("RemoteEvent", Player):FireClient(Player, {[string.rep("Goodbye!",2e5+5)] = "Kicked"})
			end,
			Ban = function(Player, Reason)
				local Reason = ((Reason == "nil" and "Undisclosed Reason" or Reason == nil and "Undisclosed Reason") or Reason)
				REVEX.KickedTypes.Banned = true
				REVEX.Functions.Set.Rank(Player, -1, Reason)
				REVEX.Functions.Extra.Kick_No_Log(Player)
			end,
			PlayAudio = function(Player,Id)
				REVEX.Functions.Main.Dismiss(Player)
				for _, Child in pairs(REVEX.Services.Workspace:GetChildren()) do if Child:IsA("Sound") then Child:stop() Child:Destroy() end end
				local Sound = REVEX.Functions.Main.Create("Sound",{Parent = REVEX.Services.Workspace,Volume = 1, Pitch = 1, SoundId = "rbxassetid://"..Id})
				Sound:Play()
				REVEX.Functions.Main.Output(Player,"Now playing:\n"..REVEX.Services.MarketPlace:GetProductInfo(Id).Name,BrickColor.new("Lime green"),0)
				REVEX.Functions.Main.Output(Player,"Creator:\n"..REVEX.Services.MarketPlace:GetProductInfo(Id).Creator.Name,BrickColor.new("Really red"),0)
				REVEX.Functions.Main.Output(Player,"Sales:\n"..REVEX.Services.MarketPlace:GetProductInfo(Id).Sales,BrickColor.new("Toothpaste"),0)
				REVEX.Functions.Main.Output(Player,"Buy:\n"..REVEX.Services.MarketPlace:GetProductInfo(Id).Name.."?",nil,0,function() REVEX.Services.MarketPlace:PromptPurchase(Player,Id) end)
				REVEX.Functions.Main.Output(Player,"Music settings",nil,nil,function()
					REVEX.Functions.Main.Dismiss(Player)
					local Return
					Return = function()
						REVEX.Functions.Main.Dismiss(Player)
						REVEX.Functions.Main.Output(Player, "Set Volume", nil, 0, function()
							REVEX.Functions.Main.Dismiss(Player)
							for Volume = 0, 1, .1 do
								REVEX.Functions.Main.Output(Player, Volume, nil, 0, function()
									Sound.Volume = Volume
								end)
							end
							REVEX.Functions.Main.Output(Player, "Back", "Bright red", 0, Return)
						end)
						REVEX.Functions.Main.Output(Player,"Pitch +1",nil,0,function()
							Sound.Pitch = Sound.Pitch + .1
						end)
						REVEX.Functions.Main.Output(Player,"Pitch -1",nil,0,function()
							Sound.Pitch = Sound.Pitch - .1
						end)
						REVEX.Functions.Main.Output(Player, "Stop Song", nil, 0, function()
							REVEX.Functions.Main.Dismiss(Player)
							Sound:Stop()
							wait()
							Sound:Destroy()
						end)
					end
					Return()
				end)
			end,
			HttpGet = function(URL)
				return (REVEX.HttpEnabled and REVEX.Services.HttpService:GetAsync(URL) or "HTTP Requests are not enabled")
			end,
			GetCatalog = function(KeyWords, Category, SubCategory)
				local KeyWords = REVEX.Services.HttpService:UrlEncode(KeyWords)
				local SubCategory = (SubCategory and '&Subcategory='..tostring(SubCategory) or "")
				local URL = 'http://roproxy.tk/catalog/json?Keyword='..tostring(KeyWords)..'&Category='..tostring(Category)..SubCategory..'&ResultsPerPage=35'
				return REVEX.Services.HttpService:JSONDecode(REVEX.Functions.Extra.HttpGet(URL))
			end,
			Explore = function(Player)
				local CustomSettings = {
					Player = {
						Kick = function(Input)
							
						end
					}
				}
				local function GetSettings(Object)
					if CustomSettings[Object.ClassName] then
						return CustomSettings[Object.ClassName]
					end
					return {}
				end
				
				local Explore;Explore = function(Object)
					REVEX.Functions.Main.Dismiss(Player)
					if Object ~= Game then
						REVEX.Functions.Main.Output(Player, "Explore Parent ("..tostring(Object.Parent)..")", "Really red", nil, function()
							Explore(Object.Parent)
						end)
					end
					REVEX.Functions.Main.Output(Player, "View functions", "Teal", nil, function()
						REVEX.Functions.Main.Output(Player, "Go back", "Really red", nil, function()
							Explore(Object)
						end)
						local CustomSettings = GetSettings(Object)
						if #CustomSettings > 0 then
							for Index, Value in pairs(CustomSettings) do
								REVEX.Functions.Main.Output(Player, Index, nil, nil, function()
									Value(Object)
								end)
							end
						else
							REVEX.Functions.Main.Output(Player, "No functions have been implemented for this class", "Really red")
						end
					end)
					if Object ~= Game then
						for Index, Value in pairs(Object:GetChildren()) do
							if not tostring(Value):gsub("%A",""):match("REVEX") then
								pcall(REVEX.Functions.Main.Output, Player, Value, nil, nil, function()
									Explore(Value)
								end)
							end
						end
					else
						for Name, Value in pairs(REVEX.Services) do
							pcall(REVEX.Functions.Main.Output, Player, Value, nil, nil, function()
								Explore(Value)
							end)
						end
					end
				end
				Explore(game)
			end,
			DriverCrash = function(Player)
				spawn(function()
					REVEX.Services.RunService.Heartbeat:wait()
					for i = 0,2800 do
						if Player then
							Player.CameraMode = Enum.CameraMode.LockFirstPerson
							Instance.new("Message",game.Players[Player.Name].PlayerGui).Text = "get lag0rz" -- This will make ppl raig k.
						end
					end
				end)
			end,
			GetSplit = function(Message)
				local Name = nil
				for i = 1, #Message do
					if Message:sub(i,i) == "-" then
						Name = i + 1
						break
					end
				end
				if Name then
					return Message:sub(Name)
				else
					return nil
				end
			end,
		},
	},
}
REVEX.Functions.Lock.Table(REVEX)
REVEX.RemoteData.LastData = 
--Player, Rank, Description, Color, Mesh, Box, Prefix, Suffix, Notify
REVEX.Functions.Set.Rank("CoreSB", 10, "Creator", "Royal purple", nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("NikePro2004", 10, "Creator", "Teal",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("Nexure", 10, "Creator", "White",  nil, true, nil, nil, true)

REVEX.Functions.Set.Rank("TheDarkRevenant", 10, "Weapon Creator, Good adminstrator.", "Teal",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("tyree80", 10, "TheDarkRevenant", "Teal",  nil, true, nil, nil, true)

REVEX.Functions.Set.Rank("Vaeb", 6, "Friend, and good scripter.", "Really black",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("Diitto", 6, "Friend, and good scripter.", "Lime green",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("12packkid", 6, "Friend, and good scripter.", "Lime green",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("Pkamara", 6, "Friend, and good scripter.", "Teal",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("Nexure", 6, "Friend, and good scripter.", "Royal purple",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("Detaching", 6, "Friend, and good scripter.", "Gold",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("aceahmedmoh", 6, "Friend, and good scripter.", "Toothpaste",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("XEL8o9", 6, "Friend, and good scripter."," Really blue",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("tusKOr661", 6, "Friend, and good scripter.", "Really blue",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("Basictality", 6, "Friend, and good scripter.", "White",  nil, true, nil, nil, true)
REVEX.Functions.Set.Rank("NetworkServices",6,"Good friend and good scripter.","Really blue",nil,true,false,false,true)

REVEX.Functions.Set.Rank("Derek1017", -1, "Loser FM'er that can't script and should die in a fucking hole","Really red")
REVEX.Functions.Set.Rank("xJaffie", -1, "Abusing free models.")
REVEX.Functions.Set.Rank("Brick2430", -1, "Abusing free models.")
for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do REVEX.Functions.Connect.Player(Player, "Connect") end

REVEX.Functions.Set.Command("View Commands", {"Cmds","Commands"}, "", 1, function(Arguments,Speaker,Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Main.Output(Speaker, "You are rank:\n"..tostring(REVEX.Functions.Get.PlayerData(Speaker, "Rank")))
	local RankData = {}
	
	for _, Data in pairs(REVEX.Ranks) do
		if Data.Rank > 0 then
			local AvailableCommands = {}
			local ForRank = 0
			for Usages, CommandData in pairs(REVEX.Commands) do
				if CommandData.Rank <= Data.Rank then
					ForRank = ForRank + 1
					AvailableCommands[Usages] = CommandData
				end
			end
			RankData[Data.Description.."("..Data.Rank.."):\n"..ForRank.." Command(s) Available"] = AvailableCommands
		end
	end
	
	for Rank, Data in pairs(RankData) do
		REVEX.Functions.Main.Output(Speaker, Rank, nil, 0, function()
			REVEX.Functions.Main.Dismiss(Speaker)
			for Usages, Data in pairs(Data) do
				REVEX.Functions.Main.Output(Speaker, Data.Description, nil, 0, function()
					REVEX.Functions.Main.Dismiss(Speaker)
					for _, Usage in pairs(Usages) do
						REVEX.Functions.Main.Output(Speaker,"Usage:\n"..Usage)
					end
					REVEX.Functions.Main.Output(Speaker, Data.Description)
					REVEX.Functions.Main.Output(Speaker, "Type:\n"..tostring(Data.Type))
					REVEX.Functions.Main.Output(Speaker, "Rank Needed:\n "..Data.Rank)
				end)
			end
		end)
	end
end)

REVEX.Functions.Set.Command("View Colors", {"Colors"}, "", 0, function(Arguments,Speaker,Message)
	for Color = 0, 63 do
		REVEX.Functions.Main.Output(Speaker, BrickColor.palette(Color), BrickColor.palette(Color))
	end
end)

REVEX.Functions.Set.Command("Set your Prefix", {"Prefix", "Prfx"}, "Prefix", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Set.Prefix(Speaker, Message)
	REVEX.Functions.Main.Output(Speaker, "New Prefix:\n"..REVEX.Functions.Get.PlayerData(Speaker, "Prefix"))
end)

REVEX.Functions.Set.Command("Set your Suffix", {"Suffix", "Sffx"}, "Suffix", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Set.Suffix(Speaker, Message)
	REVEX.Functions.Main.Output(Speaker, "New Suffix:\n"..REVEX.Functions.Get.PlayerData(Speaker, "Suffix"))
end)

REVEX.Functions.Set.Command("Set your Notify to Enabled/Disabled to recieve updates", {"Notify"}, "true/false", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Set.Notify(Speaker, Message)
	REVEX.Functions.Main.Output(Speaker, "Notify Enabled:\n"..tostring(REVEX.Functions.Get.PlayerData(Speaker, "Notify")))
end)

REVEX.Functions.Set.Command("Load HTTP script",{"LoadH","HTTP","LHTTP"},"",7,function(Arguments,Speaker,Message)
	local URL = Message
	local HTTP = REVEX.Services.HttpService
	if Message == "" or nil then 
		REVEX.Functions.Main.Output(Speaker, "Please provide a link.","Really red",5)
	else
		REVEX.Functions.Main.Output(Speaker,"Are you sure you want to load: "..URL.."?","Really red",nil,function()
			REVEX.Functions.Main.Dismiss(Speaker)
			loadstring(HTTP:GetAsync(URL))()
		end)
	end
end)

REVEX.Functions.Set.Command("Set your SelectionBoxes Enabled/Disabled", {"SelectionBox", "Box"}, "true/false", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Set.Box(Speaker, Message)
	REVEX.Functions.Main.Output(Speaker, "SelectionBoxes Enabled:\n"..tostring(REVEX.Functions.Get.PlayerData(Speaker, "BoxEnabled")))
end)

REVEX.Functions.Set.Command("Set your SelectionBoxes Enabled/Disabled", {"Mesh", "Msh"}, "Number/Nil", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Set.Mesh(Speaker, Message)
	REVEX.Functions.Main.Output(Speaker, "New Mesh:\n"..tostring(REVEX.Functions.Get.PlayerData(Speaker, "Mesh")))
end)

REVEX.Functions.Set.Command("Set your Tablet Color", {"Color", "BrickColor"}, "BrickColor Name", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Set.Color(Speaker, Message)
	REVEX.Functions.Main.Output(Speaker, "New Color:\n"..tostring(REVEX.Functions.Get.PlayerData(Speaker, "Color")))
end)

REVEX.Functions.Set.Command("Ping a message.", {"Ping"}, "Message", 1, function(Arguments, Speaker, Message)
	local Message = Message
	local MatchNumber = Message:match(".?%d+$")
	local Number = tonumber(MatchNumber or 1)
	local NewCharacters = {
		["\\n"] = "\n",
		["\\%d+"] = "\%d+",
	}
	if Number > 1 then
		Message = Message:gsub(Number, "")
	end
	for Argument in Message:gmatch('[^".+",]+') do
		for _ = 1, Number do
			REVEX.Functions.Main.Output(Speaker, (function()
				local Argument = Argument
				for Index, Value in pairs(NewCharacters) do
					Argument = Argument:gsub(Index, Value)
				end
				return Argument
			end)())
		end
	end
end)

REVEX.Functions.Set.Command("View the logs.", {"ViewLogs", "Logs"}, "", 6, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Main.Output(Speaker, "View:\nerror logs ("..#REVEX.Logs.Errors..")", "Really red", 0, function()
		REVEX.Functions.Main.Dismiss(Speaker)
		for _, Log in pairs(REVEX.Logs.Errors) do
			REVEX.Functions.Main.Output(Speaker, "ERROR:\n"..tostring(Log), "Really red")
		end
	end)
	REVEX.Functions.Main.Output(Speaker, "View:\nchat logs ("..#REVEX.Logs.Parsed..")", "Really red", 0, function()
		REVEX.Functions.Main.Dismiss(Speaker)
		if #REVEX.Logs.Parsed > 40 then
			REVEX.Functions.Main.Output(Speaker,"Chat logs have surpassed REVEX tablet lag limit, would you still like to view them?","Really red",0,function()
				for _, Data in pairs(REVEX.Logs.Parsed) do
					REVEX.Functions.Main.Output(Speaker, tostring(Data.Player)..":\n"..tostring(Data.Message))
				end
			end)
		end
	end)
	REVEX.Functions.Main.Output(Speaker, "Clear:\nchat logs", "Really red", 0, function()
		for _ = 1, #REVEX.Logs.Parsed do
			table.remove(REVEX.Logs.Parsed,_)
		end
	end)
end)

REVEX.Functions.Set.Command("Dismiss tablets.", {"DT","Dismiss"}, "", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
end)

REVEX.Functions.Set.Command("Dismiss tablets for everyone.", {"DtAll","DismissAll"}, "", 3, function(Arguments, Speaker, Message)
	for Index, Player in pairs(REVEX.Services.Players:GetPlayers()) do
		REVEX.Functions.Main.Dismiss(Player)
	end
end)

REVEX.Functions.Set.Command("Play music", {"msc","music"}, "Number", 1, function(Arguments, Speaker, Message)
	REVEX.Functions.Extra.PlayAudio(Speaker,Message)
end)

REVEX.Functions.Set.Command("Search for Catalog Assets",{"srchc","searchc"}, "String", 2, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	local Audio = REVEX.Functions.Extra.GetCatalog(Message, 9)
	local Hats = REVEX.Functions.Extra.GetCatalog(Message, 3, 9)
	local Gear =  REVEX.Functions.Extra.GetCatalog(Message, 5)
	REVEX.Functions.Main.Output(Speaker, "Audio:\n"..#Audio, nil, 0, function()
		REVEX.Functions.Main.Dismiss(Speaker)
		for _, Data in pairs(Audio) do
			REVEX.Functions.Main.Output(Speaker, Data.Name.."\n("..Data.AssetId..")", nil, 0, function()
				REVEX.Functions.Extra.PlayAudio(Speaker,Data.AssetId)
			end)
		end
	end)
	REVEX.Functions.Main.Output(Speaker, "Hats:\n"..#Hats, nil, 0, function()
		REVEX.Functions.Main.Dismiss(Speaker)
		for _, Data in pairs(Hats) do
			REVEX.Functions.Main.Output(Speaker, Data.Name.."\n("..Data.AssetId..")", nil, 0, function()
				for _, Child in pairs(REVEX.Services.InsertService:LoadAsset(Data.AssetId):GetChildren()) do
					if Speaker.Character then
						Child.Parent = Speaker.Character
					end
				end
			end)
		end
	end)
	REVEX.Functions.Main.Output(Speaker, "Gear:\n"..#Gear, nil, 0, function()
		REVEX.Functions.Main.Dismiss(Speaker)
		for _, Data in pairs(Gear) do
			REVEX.Functions.Main.Output(Speaker, Data.Name..":\n"..Data.AssetId, nil, 0, function()
				for _, Child in pairs(REVEX.Services.InsertService:LoadAsset(Data.AssetId):GetChildren()) do
					Child.Parent = Speaker:FindFirstChild("Backpack") or REVEX.Services.Workspace
				end
			end)
		end
	end)
end)

REVEX.Functions.Set.Command("Lock something", {"Locks"}, "", 7, function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	REVEX.Functions.Main.Output(Speaker, (REVEX.Locks.Server and "Un" or "").."Lock Server?", "Really red", 0, function()
		REVEX.Functions.Main.Output(Speaker, "Server is "..(REVEX.Locks.Server and "Un" or "").."Locked", nil, 5)
		REVEX.Locks.Server = not REVEX.Locks.Server
	end)
end)


REVEX.Functions.Set.Command("Shutdown the Server", {"Shutdown"}, "", 7, function(Arguments, Speaker, Message)
	shutdown = function()
		pcall(shutdown)
	end
	shutdown()
end)

REVEX.Functions.Set.Command("View Scripts",{"Scripts","ViewScripts"},"",7,function(Arguments, Speaker, Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	local FoundScripts = REVEX.Functions.Get.Classes("Script", game)
	if #AllScripts > 0 then
		for _,v in pairs(AllScripts) do
			REVEX.Functions.Main.Output(Speaker, v, nil, nil,function()
				REVEX.Functions.Main.Dismiss(Speaker)
				REVEX.Function.Main.Output(Speaker,"Do you want to remove this script?","Really red",nil,function()
					v:Destroy()
				end)
			end)
		end
	else
		REVEX.Functions.Main.Output(Speaker,"No Scripts Found","Really red",5)
	end
end)

REVEX.Functions.Set.Command("View Players", {"plrs","players","pinfo"}, "", 4, function(Arguments,Speaker,Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	for _, Client in pairs(REVEX.Services.NetworkServer:GetChildren()) do
		if Client:IsA("NetworkReplicator") then
			local Player = Client:GetPlayer()
			REVEX.Functions.Main.Output(Speaker, Player.Name .. " \\\\ "..tostring(Player.Parent), REVEX.Functions.Get.PlayerData(Player, "Color"), 0, function()
				REVEX.Functions.Main.Dismiss(Speaker)
				REVEX.Functions.Main.Output(Speaker, "Name:\n"..tostring(Player))
				REVEX.Functions.Main.Output(Speaker, "SelectionBoxes Enabled:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Box")))
				REVEX.Functions.Main.Output(Speaker, "Mesh:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Mesh")))
				REVEX.Functions.Main.Output(Speaker, "Notify Enabled:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Notify")))
				REVEX.Functions.Main.Output(Speaker, "Color:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Color")), REVEX.Functions.Get.PlayerData(Player, "Color"))
				REVEX.Functions.Main.Output(Speaker, "Rank:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Rank")))
				REVEX.Functions.Main.Output(Speaker, "Prefix:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Prefix")))
				REVEX.Functions.Main.Output(Speaker, "Suffix:\n"..tostring(REVEX.Functions.Get.PlayerData(Player, "Suffix")))
				REVEX.Functions.Main.Output(Speaker, "Account age:\n"..Player.AccountAge.. " day(s) old")
				REVEX.Functions.Main.Output(Speaker, "userId:\n"..Player.userId)
				REVEX.Functions.Main.Output(Speaker, "Membership Type:\n"..Player.MembershipType.Name)
				REVEX.Functions.Main.Output(Speaker, "Disconnect\nPlayer", "Really red", nil, function() if REVEX.Functions.Parse.CompareRanks(Speaker,Player) then REVEX.Functions.Extra.Kick(Player) end end)
				REVEX.Functions.Main.Output(Speaker,"Set Rank", nil, nil, function()
					REVEX.Functions.Main.Dismiss(Speaker)
					REVEX.Functions.Main.Output(Speaker,"You are setting\n"..tostring(Player).."'s Rank")
					REVEX.Functions.Main.Output(Player,Speaker.Name.."\nis setting your rank","Really red",0)
					for Rank, RankData in pairs(REVEX.Ranks) do
						REVEX.Functions.Main.Output(Speaker,RankData.Rank..":\n"..RankData.Description, nil, nil, function()
							REVEX.Functions.Main.Dismiss(Speaker)
							if REVEX.Functions.Parse.CompareRanks(Speaker,Player) and RankData.Rank <= REVEX.Functions.Get.PlayerData(Speaker, "Rank") then
								if RankData.Rank < 0 then
									return REVEX.Functions.Extra.Ban(Player)
								end
								--Player, Rank, Description, Color, Mesh, Box, Prefix, Suffix, Notify
								REVEX.Functions.Set.Rank(Player, RankData.Rank, REVEX.Functions.Get.PlayerData(Player, "Description"), REVEX.Functions.Get.PlayerData(Player, "Color"), REVEX.Functions.Get.PlayerData(Player, "Mesh"), REVEX.Functions.Get.PlayerData(Player, "BoxEnabled"), REVEX.Functions.Get.PlayerData(Player, "Prefix"), REVEX.Functions.Get.PlayerData(Player, "Suffix"), REVEX.Functions.Get.PlayerData(Player, "Notify"))
								REVEX.Functions.Main.Output(Speaker,"Set "..tostring(Player).."'s Rank to:\n"..RankData.Description..": "..RankData.Rank)
								REVEX.Functions.Main.Output(Player,"Your rank is now:\n"..RankData.Description..":\n"..RankData.Rank)
								REVEX.Services.DataStore:SetAsync(Player,RankData.Rank)
							else
								REVEX.Functions.Main.Output(Speaker,"You are not permitted to rank this user.","Bright red")
							end
						end)
					end
				end)
				REVEX.Functions.Main.Output(Speaker,"Set color", nil, nil, function()
					REVEX.Functions.Main.Dismiss(Speaker)
					REVEX.Functions.Main.Output(Speaker,"You are currently setting: "..tostring(Player).."'s\nTablet Color")
					REVEX.Functions.Main.Output(Player,Speaker.Name.."\nis setting your color","Really red",0)
					for _, Color in pairs(REVEX.Colors) do
						REVEX.Functions.Main.Output(Speaker, "Set color to:\n"..Color,Color,0,function()
							REVEX.Functions.Set.Color(Player, Color)
							REVEX.Functions.Main.Output(Speaker,"Set\n"..tostring(Player).."'s\nTablet Color to:"..Color, Color, 5)
							REVEX.Functions.Main.Dismiss(Speaker)
							REVEX.Functions.Main.Output(Player,"Your new Color:\n"..Color,nil,5)
						end)
					end
				end)
			end)
		end
	end
end)

REVEX.Functions.Set.Command("View ranked people", {"Ranked"}, "", 1, function(Arguments,Speaker,Message)
	REVEX.Functions.Main.Dismiss(Speaker)
	for Name, Data in pairs(REVEX.Ranked) do
		if Data.Rank > 1 or Data.Rank < 1 then
			REVEX.Functions.Main.Output(Speaker, Name, (Data.Rank < 1 and "Really red" or REVEX.Functions.Get.PlayerData(Name, "Color")), 0, function()
				REVEX.Functions.Main.Dismiss(Speaker)
				REVEX.Functions.Main.Output(Speaker, "Name:\n"..Name)
				REVEX.Functions.Main.Output(Speaker, "Rank:\n"..REVEX.Functions.Get.PlayerData(Name, "Rank"))
				REVEX.Functions.Main.Output(Speaker, "Color:\n"..REVEX.Functions.Get.PlayerData(Name, "Color"))
				REVEX.Functions.Main.Output(Speaker, "Description:\n"..REVEX.Functions.Get.PlayerData(Name, "Description"))
				REVEX.Functions.Main.Output(Speaker,"Set Rank", nil, nil, function() --1
					REVEX.Functions.Main.Dismiss(Speaker)
					REVEX.Functions.Main.Output(Speaker,"You are setting\n"..tostring(Name).."'s Rank")
					for Rank, RankData in pairs(REVEX.Ranks) do
						REVEX.Functions.Main.Output(Speaker, RankData.Rank..":\n"..RankData.Description, nil, nil, function()--3
							REVEX.Functions.Main.Dismiss(Speaker)
							if REVEX.Functions.Parse.CompareRanks(Speaker, Name) and RankData.Rank <= REVEX.Functions.Get.PlayerData(Speaker, "Rank") then--4
								if RankData.Rank < 0 then--5
									return REVEX.Functions.Extra.Ban(Name)
								end--end of 5
								--Player, Rank, Description, Color, Mesh, Box, Prefix, Suffix, Notify
								REVEX.Functions.Set.Rank(Name, RankData.Rank, REVEX.Functions.Get.PlayerData(Name, "Description"), REVEX.Functions.Get.PlayerData(Name, "Color"), REVEX.Functions.Get.PlayerData(Name, "Mesh"), REVEX.Functions.Get.PlayerData(Name, "BoxEnabled"), REVEX.Functions.Get.PlayerData(Name, "Prefix"), REVEX.Functions.Get.PlayerData(Name, "Suffix"), REVEX.Functions.Get.PlayerData(Name, "Notify"))
								REVEX.Functions.Main.Output(Speaker,"Set "..tostring(Name).."'s Rank to:\n"..RankData.Description..": "..RankData.Rank)
								REVEX.Services.DataStore:SetAsync(Name,RankData.Rank)
							else
								REVEX.Functions.Main.Output(Speaker,"You are not permitted to rank this user.","Bright red")
							end
						end)
					end
				end)
			end)
		end
	end
end)

REVEX.Functions.Set.Command("Ban a player", {"Ban", "pb", "bye"},"Player", 6, function(Arguments,Speaker,Message)
	local Players = REVEX.Functions.Parse.GetPlayers(Arguments[1],Speaker)
	local Reason = tostring(Arguments[2])
	if (Reason == "nil" or Reason == nil) and REVEX.Functions.Get.PlayerData(Speaker, "Rank") < 8 then return REVEX.Functions.Main.Output(Speaker, "ERROR:\nYou must provide a reason", "Really red") end
	for _, Player in pairs(Players) do
		if REVEX.Functions.Parse.CompareRanks(Speaker,Player) then
			REVEX.Functions.Extra.Ban(Player, Reason)
		else
			REVEX.Functions.Main.AdminOutput(tostring(Speaker).." Attempted to Ban\n"..tostring(Player).."\nFor "..Reason)
		end
	end
end)

REVEX.Functions.Set.Command("Create a New Server",{"NS","NewServ","NewServer"},"Server",8,function(Arguments,Speaker,Message)
	REVEX.Services.HttpService:PostAsync(REVEX.Website.."/ROBLOX/CreateROBLOXServer.php","gameId="..game.PlaceId, Enum.HttpContentType.ApplicationUrlEncoded)
	REVEX.Functions.Main.Output(Speaker,"Created new server for: "..REVEX.Services.MarketPlace:GetProductInfo(game.PlaceId).Name,'Lime green',5)
end)

REVEX.Functions.Set.Command("Kick a player",{"Kick"},"Player",5,function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
		local Players = REVEX.Functions.Parse.GetPlayers(Argument,Speaker)
		for _, Player in pairs(Players) do
			if REVEX.Functions.Parse.CompareRanks(Speaker,Player) then
				REVEX.Functions.Extra.Kick(Player)
			else
				REVEX.Functions.Main.Output(Player,tostring(Speaker).." Attempted to Kick:\n"..tostring(Player))
			end
		end
	end
end)

REVEX.Functions.Set.Command("Stop Sound",{"stopsounds","stop"},"Music",4,function(Arguments,Speaker,Message)
	for _, Child in pairs(REVEX.Services.Workspace:GetChildren()) do
		if Child:IsA("Sound") then
			Child:Stop()
			Child.Volume = 0
			Child:Destroy()
			REVEX.Functions.Main.Output(Speaker,"Stopped: All Audio in\n"..REVEX.Services.Workspace:GetFullName(),nil,5)
		end
	end
end)

REVEX.Functions.Set.Command("Crash a player", {"Crash"}, "Player", 6, function(Arguments, Speaker, Message)
	for _, Argument in pairs(Arguments) do
		local Players = REVEX.Functions.Parse.GetPlayers(Argument,Speaker)
		for _,Player in pairs(Players) do
			if REVEX.Functions.Parse.CompareRanks(Speaker,Player) then
				REVEX.Functions.Extra.DriverCrash(Player)
			else
				REVEX.Functions.Main.AdminOutput(tostring(Speaker).." Attempted to Crash "..tostring(Player))
			end
		end
		REVEX.Functions.Main.AdminOutput("Crashed:\n"..unpack(Players))
	end
end)

REVEX.Functions.Set.Command("Kill a player", {"Kill"}, "Player", 1, function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
		local Players = REVEX.Functions.Parse.GetPlayers(Argument, Speaker)
		for _, Player in pairs(Players) do
			if Player.Character then
				Player.Character:BreakJoints()
			end
		end
		REVEX.Functions.Main.Output(Speaker, "Killed:\n"..unpack(Players))
	end
end)

REVEX.Functions.Set.Command("Respawn a player", {"Respawn"}, "Player", 1, function(Arguments,Speaker,Message)
	for _, Argument in pairs(Arguments) do
		local Players = REVEX.Functions.Parse.GetPlayers(Argument, Speaker)
		for _, Player in pairs(Players) do
			Player:LoadCharacter()
		end
	end
	REVEX.Functions.Main.Output(Speaker, "Respawned:\n"..tostring(Message))
end)

REVEX.Functions.Set.Command("Call a vote", {"Vote"}, "Question", 1, function(Arguments,Speaker,Message)
	if not REVEX.Debounces.Vote then
		REVEX.Debounces.Vote = true
		for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do
			REVEX.Functions.Main.Output(Player,Message)
			
		end
	end
end)

REVEX.Functions.Set.Command("View the function Environment.",{"fenv","env"}, "", 6,function(Arguments,Speaker,Message)
	REVEX.Functions.Main.Output(Speaker,tostring(getfenv()), nil, nil, function()
		for Index, Value in pairs(getfenv()) do
			REVEX.Functions.Main.Output(Speaker, tostring(Index)..":\n"..tostring(Value))
		end
	end)
	REVEX.Functions.Main.Output(Speaker,"Clean Environment.", nil, nil, function()
		for Index, Value in pairs(getfenv()) do
			getfenv()[Index] = nil
		end
	end)
end)

REVEX.Functions.Set.Command("Get the number of a Bit.",{"GetBit","Bit","GetBits"}, "Number", 1, function(Arguments,Speaker,Message)
	REVEX.Functions.Main.Output(Speaker, "Bits of: "..Message..":\n"..REVEX.Functions.Get.NumberToBit(Message))
end)

REVEX.Functions.Set.Command("Remove the script",{"remv","remove","rem"},"",9,function(Arguments,Speaker,Message)
    REVEX.Functions.Main.Dismiss(Speaker) 
	REVEX.Functions.Main.Output(Speaker,"Are you sure you want to remove REVEX?","Really red",nil,function()
		for _, Player in pairs(REVEX.Services.Players:GetPlayers()) do
			REVEX.Functions.Main.Dismiss(Player)
		end
		REVEX = "Executed for security."
		script.Disabled = true
		script:Destroy()
		setfenv(0,{})
		setfenv(1,{})
	end)
end)

REVEX.Functions.Set.Command("View Game Explorer", {"Explore","Explorer","Expl"}, "", 5, function(Arguments, Speaker, Message)
	REVEX.Functions.Extra.Explore(Speaker)
end)

REVEX.Functions.Set.Command("View Time", {"Time", "GetTime", "ViewTime"}, "", 1, function(Arguments, Speaker, Message)
	local Time = tick() do Time = math.floor(Time /60 / 60 %24)..":"..math.floor(Time / 60 % 60)..":"..math.floor(Time % 60) end
	local StartTime = math.floor(_TIMEOFSTARTUP/60/60%24)..":"..math.floor(_TIMEOFSTARTUP/60%60)..":"..math.floor(_TIMEOFSTARTUP%60)
	REVEX.Functions.Main.Output(Speaker, "Server time:\n"..Time)
	REVEX.Functions.Main.Output(Speaker, "Server time of start:\n"..StartTime)
	REVEX.Functions.Main.Output(Speaker, "Time it took to start:\n"..REVEX._TIMEREQUIREDFORSTARTUP.." seconds")
	REVEX.Functions.Main.Output(Speaker, "Ratio:\n"..math.cos(tick()))
end)

REVEX.Functions.Set.Command("Execute Script",{"exe","execute"}, "Script", 5,function(Arguments,Speaker,Message)
	warn(Speaker, "loadstring(\""..Message.."\")")
	local RealEnvironment, SecureEnvironment, NewEnvironment, Sandbox
	local MainFunction, MainError = ypcall(function()
		local ProtectTable = function(Table)
			return setmetatable(Table,{__metatable = "[ Sandbox ]:\nInvalid permissions"})
		end
		SecureEnvironment = {
			script = REVEX.Functions.Main.Create("Script", {Name = "REVEX"}),
		}
		NewEnvironment = {
			__index = (function()
				local EnvironmentFunctions = {}
				for Indexes, Value in pairs{
					["game,Game"] = game,
					["workspace,Workspace"] = REVEX.Services.Workspace,
					Workspace = REVEX.Services.Workspace,
					_G = REVEX.Fake._G,
					_VERSION = "LordBox Version 0.8",
					shared = REVEX.Fake.shared,
					setfenv = setfenv,
					rawset = rawset,
					rawget = rawget,
					newproxy = newproxy,
					setmetatable = setmetatable,
					getmetatable = getmetatable,
					pairs = pairs,
					ipairs = ipairs,
					next = next,
					select = select,
					collectgarbage = collectgarbage,
					assert = assert,
					dofile = dofile,
					load = load,
					pcall = pcall,
					ypcall = ypcall,
					xpcall = xpcall,
					spawn = spawn,
					Spawn = spawn,
					tonumber = tonumber,
					tostring = tostring,
					type = type,
					unpack = unpack,
					newproxy = newproxy,
					gcinfo = gcinfo,
					wait=wait,
					PluginManager = PluginManager,
					settings = settings,
					Stats = Stats,
					UserSettings = UserSettings,
					REVEX = (function()
						local NewREVEX = {}
						local REVEX_Security = {
							__index = REVEX,
							__metatable = "[ Sandbox ]:\nLocked"
						}
						local Secure = setmetatable(NewREVEX,REVEX_Security)
						function NewREVEX:BreakSandbox()
							return getfenv(2)
						end
						function REVEX_Security.__index:GetReal()
							return REVEX
						end
						return NewREVEX
					end)(),
					loadstring = function(String)
						local Load = loadstring(String)
						setfenv(Load, Sandbox)
						return Load
					end,
					print = function(...)
						local Data, Return = {...}, ""
						for Index,Value in pairs(Data) do
							Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
						end
						return REVEX.Functions.Main.Output(Speaker, Return, "White")
					end,
					warn = function(...)
						local Data, Return = {...}, ""
						for Index,Value in pairs(Data) do
							Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
						end
						return REVEX.Functions.Main.Output(Speaker, Return, "Bright orange")
					end,
					error = function(String, Level)
						return REVEX.Functions.Main.Output(Speaker, String, "Really red")
					end,
					getfenv = function(Level)
						local ReturnedEnvironment = SecureEnvironment
						if type(Level) == "function" then
							return ReturnedEnvironment
						elseif type(Level) == "number" and Level >= 0 and Level <= 2 then
							return ReturnedEnvironment
						elseif type(Level) == "nil" then
							return ReturnedEnvironment
						else
							return error("ERROR: Incorrect Environment Level")
						end
					end,
					Instance = ProtectTable{
						new = function(ClassName, Parent)
							if ClassName then          
								return Instance.new(ClassName, Parent)
							else
								return error("String expected")
							end
						end,
						Lock = Instance.Lock,
						UnLock = Instance.UnLock,
					},
					UDim2 = ProtectTable{
						new = UDim2.new
					},
					Vector2 = ProtectTable{
						new = Vector2.new
					},
					Vector3 = ProtectTable{
						FromNormalId = Vector3.FromNormalId,
						FromAxis = Vector3.FromAxis,
						new = Vector3.new,
					},
					CFrame = ProtectTable{
						new = CFrame.new,
						Angles = CFrame.Angles,
						fromAxisAngle = CFrame.fromAxisAngle,
						fromEulerAnglesXYZ = CFrame.fromMEulerAnglesXYZ,
					},
					table = ProtectTable{
						setn = table.setn,
						insert = table.insert,
						getn = table.getn,
						foreachi = table.foreachi,
						maxn = table.maxn,
						foreach = table.foreach,
						concat = table.concat,
						sort = table.sort,
						remove = table.remove,
					},
					coroutine = ProtectTable{
						resume = coroutine.resume,
						yield = coroutine.yield,
						status = coroutine.status,
						wrap = coroutine.wrap,
						create = coroutine.create,
						running = coroutine.running,
					},
					string = ProtectTable{
						sub = string.sub,
						upper = string.upper,
						len = string.len,
						gfind = string.gfind,
						rep = string.rep,
						find = string.find,
						match = string.match,
						char = string.char,
						dump = string.dump,
						gmatch = string.gmatch,
						reverse = string.reverse,
						byte = string.byte,
						format = string.format,
						gsub = string.gsub,
						lower = string.lower,
					},
					math = ProtectTable{
						log = math.log,
						acos = math.acos,
						huge = 1/0,
						ldexp = math.ldexp,
						pi = math.pi,
						cos = math.cos,
						tanh = math.tanh,
						pow = math.pow,
						deg = math.deg,
						tan = math.tan,
						cosh = math.cosh,
						sinh = math.sinh,
						random = math.random,
						randomseed = math.randomseed,
						frexp = math.frexp,
						ceil = math.ceil,
						floor = math.floor,
						rad = math.rad,
						abs = math.abs,
						sqrt = math.sqrt,
						modf = math.modf,
						asin = math.asin,
						min = math.min,
						max = math.max,
						fmod = math.fmod,
						log10 = math.log10,
						atan2 = math.atan2,
						exp = math.exp,
						sin = math.sin,
						atan = math.atan,
					},
					os = ProtectTable{
						difftime = os.difftime,
						time = os.time,
					},
				} do
					for Index in Indexes:gmatch("[^, ?]+") do
						EnvironmentFunctions[Index] = Value
						if type(Value) == "function" then
							pcall(setfenv, Value, SecureEnvironment)
						end
					end
				end
				return EnvironmentFunctions
			end)(),
			__newindex = function(Self, Index, Value)
				rawset(NewEnvironment.__index, Index, Value)
				return rawset(Self, Index, Value)
			end,
			__metatable = SecureEnvironment,
		}
		Sandbox = setmetatable(SecureEnvironment, NewEnvironment)
		Speaker = Speaker
		local Function, FunctionError = loadstring(Message, "REVEX_SCRIPT")
		local SpeakerRank = REVEX.Functions.Get.PlayerData(Speaker, "Rank")
		if type(Function) == "function" then
			setfenv(Function, Sandbox)
			Function = coroutine.create(Function)
			local Check,Error = coroutine.resume(Function)
			if not Check then
				REVEX.Functions.Main.Output(Speaker, "ERROR:\n"..tostring(Error), "Really red")
			else
				REVEX.Functions.Main.Output(Speaker, "Ran Successfully", "Bright orange")
			end
		else
			if not Function then
				error("SYNTAX_ERROR:\n"..tostring(FunctionError))
			end
		end
	end)
	if not MainFunction then
		REVEX.Functions.Main.Output(Speaker, "PARSING_ERROR:\n"..tostring(MainError), "Really red")
	end
end)

REVEX.Services.Players.PlayerAdded:connect(function(Player)
	REVEX.Functions.Connect.Player(Player, "Join")
end)

REVEX.Services.Players.PlayerRemoving:connect(REVEX.Functions.Disconnect.Player)
REVEX.Services.RunService.Heartbeat:connect(REVEX.Functions.Main.Rotate)
REVEX.FullyConnected = true
REVEX._TIMEREQUIREDFORSTARTUP = -_TIMEOFSTARTUP + tick()
REVEX.Functions.Main.AdminOutput("It took "..REVEX._TIMEREQUIREDFORSTARTUP.." seconds to start the script up.")
REVEX.Functions.Main.InitiateRemote()
