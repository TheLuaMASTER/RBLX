
wait()
script.Parent = nil
script.Name = 'CoreAd,om'
-----------------
for _, Model in pairs(workspace:GetChildren()) do
        if string.find(Model.Name, 'PyrexModel:') then
                Model:Destroy()
        end
end

------------------
Players = game:GetService('Players')
Lighting = game:GetService('Lighting')
Workspace = game:GetService('Workspace')
------------------
Pyrex = {
Services = {};
Settings = {};
Functions = {};
Commands = {};
Bet1 = '>';
Bet2 = '_';
Bet3 = '-'
}
-----------
DeveloperKind = "1"
-----------
--Services--
------------------
Pyrex.Services.RunService = game:GetService('RunService')
Pyrex.Services.MarketplaceService = game:GetService("MarketplaceService")
Pyrex.Services.HttpService = game:GetService('HttpService')
-----------------
--Command model
-----------------
--Pyrex.CmdModel = Pyrex.Services.MarketplaceService:GetProductInfo(214887536).Description
------------------
--ADMINS--
------------------
Pyrex.Ranked = {}
Pyrex.Pri_List = {}
Pyrex.PrivateServer_Enabled = false
Pyrex.Logs_Service = {}
Pyrex.Gui_Service = {}
------------------
--FUNCTIONS--
------------------
Pyrex.Functions.Output = function(Player,Color,Text,ColorOverride,Func)
        pcall(function()
        if Player.Character then
        local PlayerModel = nil
        if Workspace:FindFirstChild('PyrexModel:'..Player.Name) then
                PlayerModel = Workspace:FindFirstChild('PyrexModel:'..Player.Name)
        else
                PlayerModel = Instance.new("Model", workspace)
                PlayerModel.Name = 'PyrexModel:'..Player.Name
        end
        --
        local Tablet = Instance.new("Part")
        local TabletMesh
        if Pyrex.Ranked[Player.Name]['Type'] == 'Tablet' then
                TabletMesh = Instance.new('BlockMesh', Tablet)
        elseif Pyrex.Ranked[Player.Name]['Type'] == "Sphere" then
                TabletMesh = Instance.new('SpecialMesh', Tablet)
                TabletMesh.MeshType = 'Sphere'
                elseif Pyrex.Ranked[Player.Name]['Type'] == "Block" then
                TabletMesh = Instance.new("BlockMesh",Tablet)
        end
        TabletMesh.Name = 'TabletMesh'
        TabletMesh.Scale = Vector3.new(0,0,0)
        Tablet.FormFactor = "Custom"
        Tablet.Transparency = 0.5
        if Pyrex.Ranked[Player.Name]['Type'] == 'Tablet' then
                Tablet.Size = Vector3.new(4.5,5,0.2)
        elseif Pyrex.Ranked[Player.Name]['Type'] == 'Sphere' then
                Tablet.Size = Vector3.new(2,2,2)
                elseif Pyrex.Ranked[Player.Name]['Type'] == 'Block' then
                Tablet.Size=Vector3.new(2.3,2.3,2.3)
	end
        Tablet.CanCollide = false
        Tablet.TopSurface = 'Smooth'
        Tablet.BottomSurface = 'Smooth'
        Tablet.Anchored = true
        Tablet.Name = "PyrexTablet:"..Player.Name
        Tablet.Locked = true
        Tablet.CFrame = Player.Character.Head.CFrame
        if ColorOverride == true then
                Tablet.BrickColor = BrickColor.new(Color)
        else
                Tablet.BrickColor = BrickColor.new(Pyrex.Ranked[Player.Name]['Color'])
        end
        local Billboard = Instance.new("BillboardGui", Tablet)
        Billboard.Adornee = Tablet
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(1, 1, 1,1)
        Billboard.ExtentsOffset = Vector3.new(0, 1.5, 0)
		local point = Instance.new("PointLight",Tablet)
    		point.Brightness = 1/0
    		point.Color = Tablet.BrickColor.Color
    		point.Range = 10
        local TL = Instance.new("TextLabel", Billboard)
        TL.Text = Text
        TL.BackgroundTransparency = 1
        TL.Size = UDim2.new(1, 0, 1, 0)
        TL.FontSize = "Size18"
        TL.Font = "ArialBold"
        TL.TextStrokeTransparency = 0
        local Button = Instance.new('ClickDetector', Tablet)
        Button.MaxActivationDistance = 100
        if ColorOverride == true then
                TL.TextColor3 = BrickColor.new(Color).Color
        else
                if Pyrex.Ranked[Player.Name] then
                        TL.TextColor3 = BrickColor.new(Pyrex.Ranked[Player.Name]['Color']).Color
                end
        end
        Tablet.Parent = PlayerModel
        coroutine.resume(coroutine.create(function()
        wait(0.5)
        for i=1, 10 do
                TabletMesh.Scale = TabletMesh.Scale + Vector3.new(0.1,0.1,0.1)
                wait()
        end
        end))
        --
		
        Button.MouseClick:connect(function(Clicker)
                if Clicker == Player then
                        if Func ~= nil then
                                Func(Player)
                        else
                                coroutine.resume(coroutine.create(function()
                                        for i=1, 10 do
                                                TabletMesh.Scale = TabletMesh.Scale + Vector3.new(-0.1,-0.1,-0.1)
                                                wait()
                                        end
                                Tablet:Destroy()
                                end))
                        end
                end
        end)
        end
        end)
end
--
Pyrex.Functions.NewCmd = function(Name, Cmd, Desc, Rank, Ext, Func)
        Pyrex.Commands[Cmd] = {['Name'] = Name, ['Command'] = Cmd, ['Description'] = Desc, ['Rank'] = Rank,['Extensions'] = Ext, ['Function'] = Func}
end
--
Pyrex.Functions.Chatted = function(Player,Text)
        if string.find(Text,Pyrex.Bet1) and string.sub(string.find(Text,Pyrex.Bet1), 1) == '1' then
                if string.find(Text,Pyrex.Bet2) then
                        local Start = string.sub(string.find(Text,Pyrex.Bet1),1)
                        local End = string.sub(string.find(Text,Pyrex.Bet2),1)
                        local Ext = string.find(string.sub(Text,1),Pyrex.Bet3)
                        local Arg
                        local DoFunc
                        local Cmd = string.sub(Text,Start+1,End-1)
                        local ExtArg
                        if Ext then
                                Arg = string.sub(Text,End+1,Ext-1)
                                ExtArg = string.sub(Text,Ext+1)
                        else
                                Arg = string.sub(Text,End+1,string.len(Text))
                        end
                        if Pyrex.Commands[Cmd] then
                                DoFunc = Pyrex.Commands[Cmd].Function
                                if ExtArg then
                                        if Pyrex.Commands[Cmd]['Extensions'][ExtArg] ~= nil then
                                                DoFunc = Pyrex.Commands[Cmd]['Extensions'][ExtArg]['Func']
                                        else
                                                Pyrex.Functions.Output(Player,'Really red','Unknown extension (ERROR 002)', true,nil)
                                        end
                                end
                                if Pyrex.Ranked[Player.Name] and Pyrex.Ranked[Player.Name].Rank >= Pyrex.Commands[Cmd]['Rank'] then
                                        DoFunc(Player, Arg)
                                else
                                        Pyrex.Functions.Output(Player,'Really red','Insignificant permissions (ERROR 003)', true,nil)
                                end
                        else
                                Pyrex.Functions.Output(Player,'Really red','Unknown command (ERROR 001)', true,nil)
                        end
                end
        end
end
--
Pyrex.Functions.Rank = function(Player,Color,Type,Desc,Rank)
        Pyrex.Ranked[Player] = {
                ['Rank'] = Rank;
                ['Color'] = Color;
                ['Type'] = Type;
                ['Name'] = Player;
                ['Desc'] = Desc
        }
end
Pyrex.Functions.ConnectPlayer = function(Player)
                if Pyrex.PrivateServer_Enabled and not Pyrex.Pri_List[Player.Name] then
                        Pyrex.Functions.Kick(Player)
                        return nil
                end

        Player.Chatted:connect(function(Text)
                Pyrex.Functions.Chatted(Player, Text)
        end)
        if Pyrex.Ranked[Player.Name] then
                if Pyrex.Ranked[Player.Name]['Rank'] >= 0 then
                        print('Player already ranked')
                        Pyrex.Functions.Output(Player, 'Lime green', 'You are rank '..Pyrex.Ranked[Player.Name]['Rank'],false,nil)
                        Pyrex.Functions.Output(Player, 'Really red', 'Welcome To PyrexAdmin: ',Player.Name)
                        Pyrex.Functions.Output(Player, 'Really red', 'Say !cmds/ for list of commands')
                else
                        Pyrex.Functions.Kick(Player)
 for _,v in pairs(game.Players:GetPlayers()) do
 if v.Character and v.Character:FindFirstChild("Head") then
wait(.3)--Player wont se-e that pyrex is banning them
Pyrex.Functions.Output(v, 'Really red', Player.Name..' |Core| Banned Player Has Tried Join Server', false)
Pyrex.Functions.Output(v, 'White','Click To See Why User Was Banned',false,function()
Pyrex.Functions.Dismiss(v)
Pyrex.Functions.Output(v, 'Bright red', "|Core| "..Player.Name.." was banned for: "..Pyrex.Ranked[Player.Name]['Desc'], false)
wait(3)
Pyrex.Functions.Dismiss(v)
end) 
                                                      end 
                                            end
                end
        else
                Pyrex.Functions.Rank(Player.Name, tostring(BrickColor.random()), 'Block', 'Player',0)
                Pyrex.Functions.Output(Player, 'Lime green', 'You are rank 0',true)
      Pyrex.Functions.Output(Player, 'Really red', 'Welcome To PyrexAdmin',Player.Name)
Pyrex.Functions.Output(Player, 'Really red', 'Say !cmds/ for list of commands')
        end
end
---Kick plr and stuff
Pyrex.Functions.Kick = function(Plr)
        local h=Instance.new('RemoteEvent',workspace):FireClient(Plr,{string.rep("Ty, m8",2e5+5)}) 
        delay(3,function()
                pcall(function()
                        h:remove() 
                end)
        end)
end

Pyrex.Functions.ShowSettings = function(Plr,Spkr)

        if Pyrex.Ranked[Plr.Name]['Rank'] <= Pyrex.Ranked[Spkr.Name]['Rank'] - 1 then
                Pyrex.Functions.Dismiss(Spkr)
                Pyrex.Functions.Output(Spkr, 'Royal purple', 'Rank: '..Pyrex.Ranked[Plr.Name]['Rank'], false, function()
                        Pyrex.Functions.Dismiss(Spkr)
                        for i=1, Pyrex.Ranked[Spkr.Name]['Rank'] do
                                Pyrex.Functions.Output(Spkr, 'Reddish brown', 'Set rank to '..i,false,function()
                                        Pyrex.Functions.Dismiss(Spkr)
                                        Pyrex.Functions.Output(Spkr, 'Bright blue', Plr.Name.."'s rank has been set to "..i,true)
                                        Pyrex.Ranked[Plr.Name]['Rank'] = i
                                end)
                        end
                end)
        else
                Pyrex.Functions.Output(Spkr, 'Really red', 'Unable to set rank (ERROR 003)', true)
        end
end
--
Pyrex.Functions.GetRanked = function(Self)
        Pyrex.Functions.Dismiss(Self)
        for i,v in pairs(Pyrex.Ranked) do
                wait()
                 Pyrex.Functions.Output(Self, 'Bright blue', v['Name']..' ('..v['Rank']..')',false,function()
                        Pyrex.Functions.Dismiss(Self)
                        if Pyrex.Ranked[Self.Name]['Rank'] > v['Rank'] then
                                Pyrex.Functions.Output(Self, 'Bright blue', 'Set rank', false, function()
                                        Pyrex.Functions.Dismiss(Self)
                                        for i=-1, Pyrex.Ranked[Self.Name]['Rank'] do
                                                Pyrex.Functions.Output(Self, 'Bright blue', 'Set rank to '..i, false,function()
                                                        Pyrex.Functions.Dismiss(Self)
                                                        v['Rank'] = i
                                                        Pyrex.Functions.Output(Self, 'Bright blue', v['Name'].."'s rank has been set to "..i, true)
                                                end)
                                        end
                                end)
                        end
                        Pyrex.Functions.Output(Self, 'Bright blue', 'Name: '..v['Name'], false)
                        Pyrex.Functions.Output(Self, 'Bright blue', 'Desc: '..v['Desc'], false)
                                            Pyrex.Functions.Output(Self, 'Add to Pri', false, function()
                                                                                                              Pyrex.Pri_List[v['Name']] = true
                                                                                                              end)
                        if game.Players:FindFirstChild(v['Name']) then
                                Pyrex.Functions.Output(Self, 'Bright blue', 'AccountAge: '..game.Players:FindFirstChild(v['Name']).AccountAge, false)
                                Pyrex.Functions.Output(Self, 'Bright blue', 'UserID: '..game.Players:FindFirstChild(v['Name']).userId, false)
								
                        end
                end)
        end
end
--
Pyrex.Functions.FindPlayer = function(Self, Arg)
        local ToReturn = {}
        if string.lower(Arg) == 'all' then
                for i,v in pairs(Players:GetChildren()) do
                        table.insert(ToReturn, v)
                end
        elseif string.lower(Arg) == 'me' then
                ToReturn  = {Self}
        elseif string.lower(Arg) == 'others' then
                for i,v in pairs(Players:GetChildren()) do
                        if v ~= Self then
                        table.insert(ToReturn, v)
                        end
                end
        elseif string.lower(Arg) == 'random' then
                local Player = Players:GetChildren()[math.random(1,#Players:GetChildren())]
                table.insert(ToReturn, Player)
        else
                local Arg = string.lower(Arg)
                for i,v in pairs(Players:GetChildren()) do
                        if string.find(string.lower(v.Name), Arg) then
                                table.insert(ToReturn, v)
                                break
                        end
                end
        end
        return ToReturn
end
--
Pyrex.Functions.Dismiss = function(Plr)
        pcall(function()
                        for _, Tablet in pairs(Workspace:FindFirstChild('PyrexModel:'..Plr.Name):GetChildren()) do
                        local TabletMesh = Tablet.TabletMesh
                        coroutine.resume(coroutine.create(function()
                                        for i=1, 10 do
                                                TabletMesh.Scale = TabletMesh.Scale + Vector3.new(-0.1,-0.1,-0.1)
                                                wait()
                                        end
                                Tablet:Destroy()
                                end))
                        end
                        end)
end
--
Pyrex.Functions.ShowCommands = function(Plr)
        Pyrex.Functions.Dismiss(Plr)
        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank 0 commands', false,function()
                Pyrex.Functions.Dismiss(Plr)
        for _, Cmd in pairs(Pyrex.Commands) do
                if Cmd['Rank'] <= 0 then
                Pyrex.Functions.Output(Plr, 'Grey', Cmd['Name'], false, function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command name: '..Cmd['Name'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command description: '..Cmd['Description'],false)                
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank required: '..Cmd['Rank'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Usage: '..Pyrex.Bet1..Cmd['Command']..Pyrex.Bet2, false)
                end)
                end
        end
        end)
        --
        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank 1 commands', false,function()
                Pyrex.Functions.Dismiss(Plr)
        for _, Cmd in pairs(Pyrex.Commands) do
                if Cmd['Rank'] <= 1 then
                Pyrex.Functions.Output(Plr, 'Grey', Cmd['Name'], false, function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command name: '..Cmd['Name'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command description: '..Cmd['Description'],false)                
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank required: '..Cmd['Rank'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Usage: '..Pyrex.Bet1..Cmd['Command']..Pyrex.Bet2, false)
                end)
                end
        end
        end)
        --
        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank 2 commands', false,function()
                Pyrex.Functions.Dismiss(Plr)
        for _, Cmd in pairs(Pyrex.Commands) do
                if Cmd['Rank'] <= 2 then
                Pyrex.Functions.Output(Plr, 'Grey', Cmd['Name'], false, function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command name: '..Cmd['Name'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command description: '..Cmd['Description'],false)                
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank required: '..Cmd['Rank'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Usage: '..Pyrex.Bet1..Cmd['Command']..Pyrex.Bet2, false)
                end)
                end
        end
        end)
        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank 3 commands', false,function()
                Pyrex.Functions.Dismiss(Plr)
        for _, Cmd in pairs(Pyrex.Commands) do
                if Cmd['Rank'] <= 3 then
                Pyrex.Functions.Output(Plr, 'Grey', Cmd['Name'], false, function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command name: '..Cmd['Name'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command description: '..Cmd['Description'],false)                
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank required: '..Cmd['Rank'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Usage: '..Pyrex.Bet1..Cmd['Command']..Pyrex.Bet2, false)
                end)
                end
        end
        end)
        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank 4 commands', false,function()
                Pyrex.Functions.Dismiss(Plr)
        for _, Cmd in pairs(Pyrex.Commands) do
                if Cmd['Rank'] <= 4 then
                Pyrex.Functions.Output(Plr, 'Grey', Cmd['Name'], false, function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command name: '..Cmd['Name'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command description: '..Cmd['Description'],false)                
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank required: '..Cmd['Rank'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Usage: '..Pyrex.Bet1..Cmd['Command']..Pyrex.Bet2, false)
                end)
                end
        end
        end)
        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank 5 commands', false,function()
                Pyrex.Functions.Dismiss(Plr)
        for _, Cmd in pairs(Pyrex.Commands) do
                if Cmd['Rank'] <= 5 then
                Pyrex.Functions.Output(Plr, 'Grey', Cmd['Name'], false, function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command name: '..Cmd['Name'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Command description: '..Cmd['Description'],false)                
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Rank required: '..Cmd['Rank'], false)
                        Pyrex.Functions.Output(Plr, 'Lime green', 'Usage: '..Pyrex.Bet1..Cmd['Command']..Pyrex.Bet2, false)
                end)
                end
        end
        end)
        Pyrex.Functions.Output(Plr, 'Bright blue', 'You are rank '..Pyrex.Ranked[Plr.Name]['Rank'], true,nil)
end
--
Pyrex.Functions.SearchSongs = function(Name,Plr)
        Pyrex.Functions.Dismiss(Plr)
        local Get = Pyrex.Services.HttpService:GetAsync('http://www.roproxy.tk/catalog/json?Category=9&Keyword='..Name)
        local Songs = Pyrex.Services.HttpService:JSONDecode(Get)
        local i = 1
        repeat
                local SongName  = string.gsub(Songs[i].Name,"&#39;","'")
                local ID = Songs[i].AssetId
                local SongDesc = Songs[i].Description
                local Creator = Songs[i].Creator
                Pyrex.Functions.Output(Plr, 'White',SongName,false,function()
                        Pyrex.Functions.Dismiss(Plr)
                        Pyrex.Functions.Output(Plr, 'Royal purple','Song name::'..SongName, false,nil)
                        Pyrex.Functions.Output(Plr, 'Royal purple','Description::'..SongDesc, false,nil)
                        Pyrex.Functions.Output(Plr, 'Royal purple','Creator::'..Creator, false,nil)
			   Pyrex.Functions.Output(Plr, 'Lime green','Sound Settings', true,function()
			   Pyrex.Functions.Dismiss(Plr)
			
				Pyrex.Functions.Output(Plr, 'Lime green','Current Sound Pitch = 2', true,function()
				Sound.Pitch = 2
				       end)
				Pyrex.Functions.Output(Plr, 'Lime green','Current Sound Pitch = 1', true,function()
				Sound.Pitch = 1
				end)
				Pyrex.Functions.Output(Plr, 'Lime green','High Volume', true,function()
					Sound.Volume = 10 
				end)
				Pyrex.Functions.Output(Plr, 'Lime green','Normal Volume', true,function()
					Sound.Volume = 1
				end)
			end)
			
				Pyrex.Functions.Output(Plr, 'Really red','Stop Sounds', true,function()
					Sound:Stop()
				       end)
				
                        Pyrex.Functions.Output(Plr, 'White','Play', true,function()
                             Sound = Instance.new('Sound')
                                Sound.SoundId = 'http://www.roblox.com/asset/?id='..ID
                                Sound:Play()
                                Sound.Parent = workspace
                                wait()
                                Sound:Play()
                        end)
                end)
                wait()
                i = i + 1
        until i == 20 or i == #Songs
end
-------Pri list function-------
Pyrex.Functions.PrivateServer = function(Plr)

        for _,v in pairs(game.Players:GetPlayers()) do
                if not Pyrex.Pri_List[v.Name] then
                          Pyrex.Functions.Kick(v)
                  end
        end
        Pyrex.PrivateServer_Enabled = true
end
--
Pyrex.Functions.ShowPri_List = function(Plr)
        Pyrex.Functions.Dismiss(Plr)

        for i,v in pairs(Pyrex.Pri_List) do
                  Pyrex.Functions.Output(Plr, 'Bright blue', i, true, function()
            Pyrex.Functions.Dismiss(Plr)
            Pyrex.Functions.Output(Plr, 'Really red', 'Remove '..i..' from Pri_List', true, function()
                Pyrex.Pri_List[i] = nil
                        Pyrex.Functions.ShowPri_List(Plr)
            end)
            Pyrex.Functions.Output(Plr, 'Bright red', 'Back', true, function()
                Pyrex.Functions.ShowPri_List(Plr)
            end)
              end)
          end

end

----------------------------------------------
Pyrex.Functions.DDC = function(Plr)

Wait();
for i = 3,232233 do
if Plr ~= nil then
Instance.new("Message",Plr:FindFirstChild('PlayerGui')).Text = 'Core DDC'
end
end
end
----------------------------------------------
FullClean = function()
		local Child = {}
		local GetAllChildren = function(c)
			for _,v in pairs(c:GetChildren()) do
				ypcall(function()
					GetAllChildren(v)
					table.insert(Child, v)
				end)
			end
		end
		for _,v in pairs(Pyrex.Services.Game:GetChildren()) do
			ypcall(function()
				GetAllChildren(v)
			end)
		end
		for _,v in pairs(Child) do
			if not v:IsA("Player") and v.Name ~= "Backpack" and v.Name ~= "PlayerGui" and v.Name ~= "StarterGear" and v.Name ~= "SBGUI" and v.Name ~= "HealthGUI" and v.Name ~= "Output GUI" then
				v:remove()
			end
		end
		CleanWorkspace()
		Debug()
		for _,v in pairs(Pyrex.Services.Players:GetPlayers()) do
			v:LoadCharacter()
		end
	end
	Debug = function()
		ypcall(function()
			for _,v in pairs(Pyrex.Services.Workspace:GetChildren()) do
				if v:IsA('Message') or v:IsA('Hint') then
					ypcall(function()
						v.Text = ''
						v:Destroy()
					end)
				end
				if v:IsA('Terrain') then
					v:Clear()
				end
			end
			Pyrex.Services.Lighting.GlobalShadows = true
			Pyrex.Services.Lighting.TimeOfDay = '14:00:00'
			Pyrex.Services.Lighting.Brightness = 0.3
			Pyrex.Services.Lighting.ShadowColor = Color3.new(0.705882, 0.705882, 0.705882)
			Pyrex.Services.Lighting.Ambient = Color3.new(1,1,1) 
			Pyrex.Services.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
			Pyrex.Services.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
			Pyrex.Services.Lighting.OutdoorAmbient = Color3.new(0.6, 0.6, 0.6)
			Pyrex.Services.Lighting.FogStart = 0
			Pyrex.Services.Lighting.FogEnd = 100000
			Pyrex.Services.Lighting.FogColor = Color3.new(0.752941, 0.752941, 0.752941)
			Pyrex.Services.Lighting:ClearAllChildren()
			Pyrex.Services.Teams:ClearAllChildren()
			for _,v in pairs(Pyrex.Services.Players:GetPlayers()) do
				v.Neutral = true 
			end
		end)
	end
----------------------------------------------
function Shutdown()
for i,v in pairs(Players:GetChildren()) do
local h=Instance.new('RemoteEvent',workspace):FireClient(v,{string.rep("Shutdown niga",2e5+5)})
delay(1,function()
pcall(function()
h:remove()
end)
end)
end
end
 
---------------------------------------------- 

Pyrex.Functions.Coat = function(Plr,col)

  plyr = Plr
  char = plyr.Character

  local Coat = Instance.new("Model", char)
  Coat.Name = "Coat"

  function NewCoatPart(size, p1, C0, C1, bcol)
      local New = Instance.new("Part", Coat)
      New.BottomSurface = "Smooth"
      New.TopSurface = "Smooth"
      local NWeld = Instance.new("Weld", New)
      New.FormFactor = "Custom"
      New.Size = size
      New.CanCollide = false
      NWeld.Part0 = New
      NWeld.Part1 = p1
      NWeld.C0 = C0

      New.BrickColor = BrickColor.new(bcol)

      return New
  end
                
    local pin_id = "http://www.roblox.com/asset/?id=114717598"
  if plyr.Name == "GuestOfChaos" then
      Coat_col = "White"
  elseif plyr.Name == "BlackCodeLua" then
      Coat_col = "Light blue"
  elseif plyr.Name == "masterepico" then
      Coat_col = "Bright bluish green"
  else
      Coat_col = BrickColor.Random().Name
  end

  local RightSleeve = NewCoatPart(Vector3.new(1.05, 2, 1.05), char["Right Arm"], CFrame.new(0, -.05, 0), nil, Coat_col)
  local LeftSleeve = NewCoatPart(Vector3.new(1.05, 2, 1.05), char["Left Arm"], CFrame.new(0, -.05, 0), nil, Coat_col)
  local RightTFlap = NewCoatPart(Vector3.new(.45, 2.05, 1.05), char["Torso"], CFrame.new(-.8, 0, 0), nil, Coat_col)
  local Pin = NewCoatPart(Vector3.new(.35, .35, 1.2), char["Torso"], CFrame.new(-.8, -.5, 0), nil, Coat_col)
  Pin.Transparency = 1
  local dec = Instance.new("Decal", Pin)
  dec.Face = "Front"
  dec.Texture = pin_id
  local LeftTFlap = NewCoatPart(Vector3.new(.45, 2.05, 1.05), char["Torso"], CFrame.new(.8, 0, 0), nil, Coat_col)
  local Back = NewCoatPart(Vector3.new(2.05, 2.05, .25), char["Torso"], CFrame.new(0, 0, -.4), nil, Coat_col)
  local Bottom = NewCoatPart(Vector3.new(2.05, 2.05, .25), char["Torso"], CFrame.new(0, 2, -.4), nil, Coat_col)
  Bottom.Name = "bot"
  local RightLFlap = NewCoatPart(Vector3.new(.45, 2.05, 1.05), char["Right Leg"], CFrame.new(-.3, 0, 0), nil, Coat_col)
  local LeftLFlap = NewCoatPart(Vector3.new(.45, 2.05, 1.05), char["Left Leg"], CFrame.new(.3, 0, 0), nil, Coat_col)

  local origC1 = Bottom.Weld.C1
        local con
  con = char.Humanoid.Running:connect(function(spd)
                  if Bottom.Parent == nil or Coat.Parent == nil then con:disconnect() end
      if spd > 0 then
          Bottom.Weld.C1 = origC1 * CFrame.new(0, -.2, -.4) * CFrame.Angles(math.rad(-30), 0, 0)
      else
          Bottom.Weld.C1 = origC1
      end
  end)

end
--

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        function touch(hit) 
                if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                hit.Parent:BreakJoints()
                end end li.Touched:connect(touch)
                local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end



------------
--Commands--
------------
--Name, Command, Desc, Rank, Ext, Func
Pyrex.Functions.NewCmd('SearchSongs', 'ss','Searches songs',1,{}, function(Plr,Arg)
        Pyrex.Functions.SearchSongs(Arg,Plr)
end)
Pyrex.Functions.NewCmd('Commands', 'cmds','Shows all commands',0,{}, function(Plr)
        Pyrex.Functions.ShowCommands(Plr)
end)
Pyrex.Functions.NewCmd('Dismiss', 'dt','Dismisses tablets',0,{}, function(Plr, Txt)
if Workspace:FindFirstChild('PyrexModel:'..Plr.Name) then
Pyrex.Functions.Dismiss(Plr)
end
end)


Pyrex.Functions.NewCmd('Smite','smite','smites a plr',2,{},function(Plr,Txt)
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v and v.Character then
                        Lightning(v.Character.Torso.Position+Vector3.new(0,50,0),v.Character.Torso.Position,3,math.random(-2.5,2.5),"New Yeller",.4,.4)
                        Instance.new("Explosion",Workspace).Position=v.Character.Torso.Position
                end
        end
end)
Pyrex.Functions.NewCmd('Labcoat', 'coat','Gives yourself a labcoat.',3,{}, function(Plr,Arg)
        --[[
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v and v.Character and v.Character.Humanoid then
                        Pyrex.Functions.Coat(v)
                end
        end
        ]]
        if Plr and Plr.Character and Plr.Character.Humanoid then
                  Pyrex.Functions.Coat(Plr,Arg)
         end
end)

Pyrex.Functions.NewCmd('Night', 'night','Makes Lighting 0',2,{}, function(Plr,Arg)
game.Lighting.TimeOfDay = 0
local Lighting = Game:GetService("Lighting")
        Lighting.GlobalShadows = true
        Lighting.OutdoorAmbient = 0
end)

Pyrex.Functions.NewCmd('Day', 'day','Makes daytime',2,{}, function(Plr,Arg)
game.Lighting.TimeOfDay = 14
end)

Pyrex.Functions.NewCmd('UnGod','ungod','ungods a plr',2,{},function(Plr,Txt)
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v and v.Character and v.Character.Humanoid then
                        v.Character.Humanoid.MaxHealth = 100
                end 
        end
end)

Pyrex.Functions.NewCmd('God','god','Gods a player',2,{},function(Plr,Txt)
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v and v.Character and v.Character.Humanoid then
                        v.Character.Humanoid.MaxHealth = math.huge
                end
        end
end)

Pyrex.Functions.NewCmd('Ban','ban','bans someone',4,{},function(Plr,Txt)
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v then
                        Pyrex.Functions.Kick(v)
                        Pyrex.Ranked[v.Name]['Rank'] = -1
 Pyrex.Ranked[v.Name]['Desc'] = 'In Game Temp Ban.'
 Pyrex.Functions.Output(Plr, 'Lime green','Banned '..v.Name, false)
                end
        end
end)
Pyrex.Functions.NewCmd('Kick','kick','Kicks someone',4,{},function(Plr,Txt)
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v then
                        Pyrex.Functions.Kick(v)
wait(.50) --So user doesn't see 
 Pyrex.Functions.Output(Plr, 'Lime green','Kicked '..v.Name, false)
                end
        end
end)

Pyrex.Functions.NewCmd('DDC','ddc','Disk driver crash',2,{},function(Plr,Txt)
        local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
        for i,v in pairs(plrs) do
                if v then
	Pyrex.Functions.DDC(v)
	end
end
end)

Pyrex.Functions.NewCmd('Private Server','pri','Creates a private server.',5,{},function(Plr,Arg)
        if Pyrex.PrivateServer_Enabled ~= true then
                  
                  Pyrex.Functions.Dismiss(Plr)
        Pyrex.Functions.Output(Plr, 'Cyan', 'Add all current players to Pri_List?', true, nil)

        Pyrex.Functions.Output(Plr, 'Lime green', 'Yes', true, function()
            for _,v in pairs(game.Players:GetPlayers()) do
                Pyrex.Pri_List[v.Name] = true
            end
            Pyrex.Functions.Dismiss(Plr)
            Pyrex.Functions.PrivateServer()
Pyrex.Functions.Output(Plr, 'Really red', 'Core Private Server Is Active', true, nil)
        end)
        Pyrex.Functions.Output(Plr, 'Really red', 'No', true, function()
            Pyrex.Functions.Dismiss(Plr)
            Pyrex.Functions.PrivateServer()
                      wait(.85)
                end)
  
          else
          
                  Pyrex.Functions.Output(Plr, 'Cyan', 'Core Private Server currently running. Disable?', true, nil)
        Pyrex.Functions.Output(Plr, 'Lime green', 'Yes', true, function()
                for _,v in pairs(game.Players:GetPlayers()) do
                        Pyrex.Pri_List[v.Name] = true
                end
                Pyrex.Functions.Dismiss(Plr)
                Pyrex.PrivateServer_Enabled = false
              end)
             Pyrex.Functions.Output(Plr, 'Really red', 'No', true, function()
                  Pyrex.Functions.Dismiss(Plr)
              end)
  
          end
end)

Pyrex.Functions.NewCmd('Pri_List', 'prilist','Displays players allowed in private server',5,{}, function(Plr,Arg)
        Pyrex.Functions.ShowPri_List(Plr)
end)


Pyrex.Functions.NewCmd('Players','players','Shows all plrs',2,{},function(Plr,Txt)
        Pyrex.Functions.GetRanked(Plr)
end)
Pyrex.Functions.NewCmd('Disco','disco','Changes lighting to disco',1,{},function(Plr,Txt,Rnk)--Thx Nexure
_G.nodisco =nil
local function GetDiscoColor()
        local hue = tick()
        local section = hue % 1 * 3
        local secondary = 0.5 * math.pi * (section % 1)
        if section < 1 then
                return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
        elseif section < 2 then
                return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
        else
                return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
        end
end
local con
local function ChangeColor()
        local Lighting = Game:GetService("Lighting")
        local Color = GetDiscoColor()
        Lighting.GlobalShadows = true
        Lighting.OutdoorAmbient = Color
        Lighting.Ambient = Color
        Lighting.FogEnd = 200
        Lighting.FogColor = Color
                
                if _G.nodisco then
                        con:disconnect()
                end
end
con = Game:GetService("RunService").Heartbeat:connect(ChangeColor)
game.Lighting.TimeOfDay = 0
end)

Pyrex.Functions.NewCmd('No disco', 'nodisco','Stops disco',1,{}, function(Plr,Arg)
_G.nodisco = true
local lite = game.Lighting
lite.Ambient = Color3.new()
lite.Brightness = 1
lite.ColorShift_Bottom = Color3.new()
lite.ColorShift_Top = Color3.new()
lite.GlobalShadows = true
lite.OutdoorAmbient = Color3.new(127/255,127/255,127/255)
lite.ShadowColor = Color3.new(178/255,178/255,178/255)
lite.GeographicLatitude = 41.733
lite.TimeOfDay = 14
lite.FogColor = Color3.new(191/255,191/255,191/255)
lite.FogEnd = 99999999
lite.FogStart = 0
end)

Pyrex.Functions.NewCmd('Ping', 'p','Pings your message',0,{}, function(Plr, Txt)
Pyrex.Functions.Dismiss(Plr)
Pyrex.Functions.Output(Plr, 'Lime green',Txt,false)
wait(10)--Auto remove
Pyrex.Functions.Dismiss(Plr)
end)

Pyrex.Functions.NewCmd('System Message', 'sm','System Message.',1,{}, function(Plr, Txt)

       Msg = Txt:gsub("\t"," ")
        Msg = Txt:gsub("\n"," ")
        Msg = ""..Txt
        local v = Instance.new("Message",workspace)
		local Total = string.len(Txt)
		local Max = 100
        for i=0,#Msg,0.3 do
            v.Text = (
                function()
                    local Rtn = Msg:sub(0,i)
                    repeat
                        Rtn = Rtn .. tostring(string.char(math.random(48,57))) -- 37 127
                    until #Rtn >= #Msg
                    return Rtn:sub(1,#Rtn-1)
                end
            )()
            wait()
        end
        for i=1,math.random(4,6) do
			v.Text = Txt:sub(Total-Max,Total).."_"
			wait(0.5)
			v.Text = Txt:sub(Total-Max,Total).."  "
			wait(0.5)
		end
        for i=#Txt,0,-1 do
            v.Text = Txt:sub(1,i)
            wait()
        end
        v:remove()
    end)

Pyrex.Functions.NewCmd('Credits', 'credits','Shows people who helped make Core',0,{}, function(Plr, Txt)
Pyrex.Functions.Dismiss(Plr)
Pyrex.Functions.Output(Plr, 'Lime green','Showing Core Credits!',false)
wait(2)
Pyrex.Functions.Output(Plr, 'Lime green','CoreSB',false)
Pyrex.Functions.Output(Plr, 'Lime green','Nexure',false)
Pyrex.Functions.Output(Plr, 'Toothpaste','Control22',false)
Pyrex.Functions.Output(Plr, 'Lime green','Roblox',false)
Pyrex.Functions.Output(Plr, 'Lime green','Lua',false)
end)

Pyrex.Functions.NewCmd('Pri Base', 'pbase','Makes a private Base',1,{}, function(Plr, Txt)
local m = Instance.new("Model")
m.Name = "Model"
p1 = Instance.new("Part", m)
p1.Parent = workspace.Base
p1.BrickColor = BrickColor.new("Medium stone grey")
p1.Material = Enum.Material.Grass
p1.CFrame = CFrame.new(-4793.64062, 0.5, -813.582947, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p1.Anchored = true
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(853.130005, 1, 769.72998)
p1.TopSurface = Enum.SurfaceType.Smooth
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Medium stone grey")
p2.Material = Enum.Material.Grass
p2.CFrame = CFrame.new(-4709.02393, 9.16999817, -785.641052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(4, 1, 2)
p2.CanCollide = true
m.Parent = game:service("Workspace")
m:MakeJoints()
Plr.Character.Torso.CFrame = CFrame.new(-4709.024, 9.17, -785.641)
end)

Pyrex.Functions.NewCmd('Rejoin', 'rj','Rejoins Player',1,{}, function(Plr, Txt)
local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
repeat
wait()
until Plr:findFirstChild('Backpack')
CreateLocalScript("game:service'TeleportService':Teleport(game.PlaceId)",Plr.Backpack)
end)

Pyrex.Functions.NewCmd('Running Scripts', 'showscripts','Shows Running Scripts In Workspace',0,{}, function(Plr, Txt)
Pyrex.Functions.Dismiss(Plr)
local AllScripts = {}
	for _,v in pairs(workspace:GetChildren()) do
		if v:IsA("Script") then
			table.insert(AllScripts, v.Name)
		end
	end
	if #AllScripts > 0 then
		for _,v in pairs(AllScripts) do
		 Pyrex.Functions.Output(Plr, 'White',v)
		       
		end
	else
		Pyrex.Functions.Output(Plr, 'Bright red','No Scripts Found')
	end
end)

Pyrex.Functions.NewCmd('Dismiss All', 'dall','Removes All Players Tablets',0,{}, function(Plr, Txt)
 for _,v in pairs(game.Players:GetPlayers()) do
			Pyrex.Functions.Dismiss(v)
		end
end)

Pyrex.Functions.NewCmd('Start Time', 'stime','Shows how long Core took to load',0,{}, function(Plr, Txt)
	Pyrex.Functions.Dismiss(Plr)
	Pyrex.Functions.Output(Plr, 'Bright red','Core Admin Start Time:')
Pyrex.Functions.Output(Plr, 'Bright red',load_time)
end)

Pyrex.Functions.NewCmd('Execute', 'exe','Executes, A Script VIA Core',5,{}, function(Plr, Txt)-- LoadString Needs To Be On!
local Func,Error = loadstring(Txt)
        getfenv(Func).print = function(...) local Rtn = "" for _,v in pairs({...}) do Rtn = Rtn..tostring(v).."\t" end Pyrex.Functions.Output(Plr, 'Bright red',Rtn) end
        getfenv(Func).Speaker = Plr

        if Error == nil then
            coroutine.wrap(function()
                Func()
            end)()
Pyrex.Functions.Output(Plr, 'Lime green','Script Ran!')
 else
Pyrex.Functions.Output(Plr, 'Really red','[ScriptRun Error]~Script Did Not Run!')
end
end)

Pyrex.Functions.NewCmd('Shutdown', 'sd','ShutsDown Server',2,{}, function(Plr, Txt)
Pyrex.Functions.Output(Plr, 'Really red', 'Yes', true, function()
wait(2)
Shutdown()
end)
Pyrex.Functions.Output(Plr, 'Lime green', 'No', true, function()
Pyrex.Functions.Output(Plr,'Lime green','ShutDown Was Aborted!')
wait(3)
Pyrex.Functions.Dismiss(Plr)
end)
end)


Pyrex.Functions.NewCmd('Btools', 'btool','Btools players',2,{}, function(Plr, Txt)
local plrs = Pyrex.Functions.FindPlayer(Plr, Txt)
for i,v in pairs(plrs) do
local toolm = Instance.new("HopperBin", v.Backpack) toolm.Name = "Move" toolm.BinType = "GameTool"
local toolc = Instance.new("HopperBin", v.Backpack) toolc.Name = "Clone" toolc.BinType = "Clone"
local toold = Instance.new("HopperBin", v.Backpack) toold.Name = "Delete" toold.BinType = "Hammer"
end
end)
-----CreateLocalScript-----
function CreateLocalScript(Source,Parent)
    if Source == nil then Source = "" end
    if Parent == nil then Parent = Instance.new("Model")  Parent.Name = "PyrexParent" end
    if newLocalScript ~= nil then
        return newLocalScript(Source,Parent)
    elseif NewLocalScript ~= nil then
        return NewLocalScript(Source,Parent)
    elseif LocalScript ~= nil then
        local NS = LocalScript:Clone()
        pcall(function() NS:ClearAllChildren() end)
        NS.Name = "LocalScript"
        for i,v in pairs(Sources) do
                local NSSource = Instance.new("StringValue",NS)
                NSSource.Name = i
                NSSource.Value = Source
                end
        --NS.Disabled = true
        NS.Parent = Parent
        --wait()
        NS.Disabled = false
        return NS
    else
        return false
    end
end
------------------
--EndLoops--
------------------

local starttime = tick()
coroutine.resume(coroutine.create(function()
Pyrex.Services.RunService.Heartbeat:connect(function()
        for _,PlayerModel in pairs(workspace:GetChildren()) do
                if string.find(PlayerModel.Name, 'PyrexModel:') then
                local Player = Players:FindFirstChild(string.sub(PlayerModel.Name,12))
                if Player then
                for i = 1, #PlayerModel:GetChildren() do
                ypcall(function()
                local pos = nil
                ypcall(function()
                pos = Player.Character.Head.CFrame
                end)
                local x = math.sin(time()/#PlayerModel:GetChildren() + (math.pi*2)/#PlayerModel:GetChildren()*i) * (#PlayerModel:GetChildren()+6)
                local z = math.cos(time()/#PlayerModel:GetChildren() + (math.pi*2)/#PlayerModel:GetChildren()*i) * (#PlayerModel:GetChildren()+6)
                local cPos = PlayerModel:GetChildren()[i].Position
                local ePos = Vector3.new(x, 0, z) + (pos.p or Vector3.new(0, -5, 0))
                local nPos = (ePos-cPos)*.25
                cPos = cPos + nPos
                local t = (tick() - starttime) % 360
                local change = 1
                PlayerModel:GetChildren()[i].CFrame = CFrame.new(cPos, (pos.p or Vector3.new(0, -5, 0))) * CFrame.Angles(2, 2, 2)
                end)
                end
                end
                end
end
end)
end))

-----------
--Ranking--
-----------
Pyrex.Functions.Rank('CoreSB','Magenta','Block','Creator',5)
Pyrex.Functions.Rank('Player','Teal','Block','Studio Test',5)
---Banned--- rank -1
Pyrex.Functions.Rank('Tokimonu','Teal','Tablet','Banned',-1)

-------------
--Ending--
-------------
for _, Player in pairs(Players:GetChildren()) do
        Pyrex.Functions.ConnectPlayer(Player)
end
Players.PlayerAdded:connect(function(Player)
        Pyrex.Functions.ConnectPlayer(Player)
end)
load_time=tick()

print('Core loaded')
