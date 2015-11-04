wait()
script.Parent = nil
script:ClearAllChildren()
 
local Quantum = {}
Quantum = {['Settings'] = {}, ['Tables'] = {}, ['Functions'] = {}, ['Players'] = {}, ['Connections'] = {}, ['Commands'] = {}}
 
--rank,muted,ak,akh,bb,bbc; use [Quantum.Functions.AddPlayer] for more detailed player settings
Quantum.Tables.Ranked = {
        ['CoreSB'] = {3,false,true,false,true,'Green'},

}
 
Quantum.Tables.GroupRanked = {
        [1] = {[18] = {['GroupRank'] = 12, ['AdminRank'] = 2}},
        [2] = {[18] = {['GroupRank'] = 15, ['AdminRank'] = 3}}
}
 
Quantum.Settings.Prefix = ':'
Quantum.Settings.Bet = '.'
Quantum.Settings.Tag = ''
Quantum.Settings.Tween = 'Quad'
Quantum.Settings.RestrictAge = 10
Quantum.Settings.AntibanTimer = 60
Quantum.Settings.BubblechatAll = false
Quantum.Settings.BubblechatColor = 'Red'
Quantum.Settings.Looptime = 0.1
Quantum.Settings.Stoploops = false
Quantum.Settings.AutoAntiban = false
Quantum.Settings.AutoAntilocal = true
Quantum.Settings.StopLoops = false
Quantum.Settings.Storage = 'QstORagE12490812490120398'
Quantum.Settings.StorageKey = 'QSTOrAge1929l-1'
 
do
        local store = game:GetService'DataStoreService':GetDataStore(Quantum.Settings.Storage)
        if store:GetAsync(Quantum.Settings.StorageKey) then
                Quantum.Settings.Store = store
        else
                store:SetAsync(Quantum.Settings.StorageKey,{})
                Quantum.Settings.Store = store
        end
end
 
Quantum.Settings.PrivateServer = {Regular = false, Auto = false}
Quantum.Settings.LocalScriptSource = false
Quantum.Settings.ScriptSource = false
Quantum.Settings.ReturnUnknownCommand = {Admin = true, Regular = false}
Quantum.Settings.Music = nil
local create = assert(loadstring(game:GetService'HttpService':GetAsync'https://raw.githubusercontent.com/RobloxLabs/internal-code/master/library-scripts/RbxUtility-60595411.lua'))().Create or assert(LoadLibrary'RbxUtility').Create
Quantum.Tables.Superlogs = {}
Quantum.Tables.Logs = {}
Quantum.Tables.Unremovable = {}
Quantum.Tables.Remake = {}
Quantum.Tables.Garbage = {}
Quantum.Tables.RespawnExe = {}
Quantum.Tables.Sounds = {}
Quantum.Tables.Blacklist = {}
Quantum.Tables.Music = {
['Disconnected'] = 0,
['Spooky Scary Skeletons'] = 0  ,
['Reasons'] = 0,
['Flight'] = 0
}
Quantum.Tables.Colors = {'Br. yellowish green','Bright yellow','Bright orange','Bright red','Bright violet','Bright blue','Bright bluish green','Bright green','Institutional white','White','Light stone grey','Mid gray','Medium stone grey','Dark stone grey','Black','Really black','Grime','Br. yellowish orange','Light orange','Sand red','Lavender','Sand blue','Medium blue','Sand green','Brick yellow','Cool yellow','Neon orange','Medium red','Light reddish violet','Pastel blue','Teal','Medium green','Pastel brown','Pastel yellow','Pastel orange','Pink','Pastel violet','Pastel light blue','Pastel blue-green','Pastel green','Olive','New Yeller','Deep orange','Really red','Hot pink','Really blue','Toothpaste','Lime green','Brown','Nougat','Dark orange','Royal purple','Alder','Cyan','Light blue','Camo','Reddish brown','CGA brown','Dusty Rose','Magenta','Deep blue','Navy blue','Dark green','Earth green'}
local root = {['Name'] = 'root'}
if game.PlaceId == 20279777 or game.PlaceId == 118124939 then
        Quantum.Settings.Place = 'oxcool'
        Quantum.Settings.LocalScriptSource = true
        Quantum.Settings.ScriptSource = true
elseif game.PlaceId == 21053279 then
        Quantum.Settings.Place = 'anti'
        Quantum.Settings.LocalScriptSource = true
        Quantum.Settings.ScriptSource = true
elseif game.PlaceId == 178350907 then
        Quantum.Settings.Place = 'nexure'
else
        Quantum.Settings.Place = 'none'
end
 
Quantum.Functions.UpdateStorage = function(new,name)
        Quantum.Settings.Store:UpdateAsync(Quantum.Settings.StorageKey,function(old)
                old[name] = new
                return old
        end)
end
 
Quantum.Functions.GetStorage = function(name)
        local get = Quantum.Settings.Store:GetAsync(Quantum.Settings.StorageKey)
        for i,v in next, get do
                if i == name then
                        return v
                end
        end
end
 
Quantum.Functions.AntikillRoutine = function(plr)
        pcall(function() Quantum.Players[plr.Name].Ready = true end)
        while wait() do
                if plr then
                        pcall(function()
                                if Quantum.Players[plr.Name].Antikill.Enabled and Quantum.Players[plr.Name].Ready then
                                        Quantum.Players[plr.Name].Spawnlocation = plr.Character.Torso.CFrame
                                elseif not Quantum.Players[plr.Name].Antikill.Enabled then
                                        coroutine.yield()
                                end
                        end)
                else
                        break
                end
        end
end
 
Quantum.Functions.GetAntikill = function(plr)
        if not Quantum.Players[plr.Name].Antikill.Routine then
                Quantum.Players[plr.Name].Antikill.Rotuine = coroutine.create(Quantum.Functions.AntikillRoutine)
        end    
        coroutine.resume(Quantum.Players[plr.Name].Antikill.Rotuine,plr)
end
 
Quantum.Functions.AddPlayer = function(name,rank,muted,bubblechat,bubblechatcolor,antiban,antikill,antikill2,antilocal,prefix,spawnlocation,respawnexe)
        Quantum.Players[name] = {Rank = rank or 0, Muted = muted or false, Bubblechat = bubblechat or false, BubblechatColor = bubblechatcolor or 'Red', Antiban = antiban or false, Antikill = {['Enabled'] = antikill or false, ['Humanoid'] = antikill2 or false}, Antilocal = antilocal or false, GLOBAL_prefix = prefix or Quantum.Settings.Prefix, Spawnlocation = spawnlocation or nil, Name = name, RespawnExe = respawnexe or {}, Ready = false}
end
Quantum.Functions.AddPlayer('root',3)
for i,v in next, Quantum.Tables.Ranked do
        --rank,muted,ak,akh,bb,bbc
        Quantum.Functions.AddPlayer(i,v[1],v[2],v[5],v[6],false,v[3],v[4])
end
 
math.randomseed(tick())
math.random(); math.random(); math.random()
 
local toboolean = function(var)
        if var == 't' or var == 'true' then
                return true
        elseif var == 'f' or var == 'false' then
                return false
        end
end
 
Quantum.Functions.RandomString = function()
        local str = ''
        for i=1, 20 do
                str = str..string.char(math.random(33,126))
        end
        return str
end    
 
Quantum.Settings.SECURITY_CODE = Quantum.Functions.RandomString()
 
Quantum.Functions.StringByte = function(str)
        local bit = ""
        for i=1,string.len(str) do
                bit = bit..string.byte(str:sub(i,i))
        end
        return bit
end
 
Quantum.Settings.SECURITY_NUMBER = Quantum.Functions.StringByte(Quantum.Settings.SECURITY_CODE)
 
Quantum.Functions.Unremovable = function(obj)
        Quantum.Tables.Unremovable[obj] = true
end
 
Quantum.Functions.Removable = function(obj)
        Quantum.Tables.Unremovable[obj] = false
end
 
Quantum.Functions.Remake = function(obj,func)
        Quantum.Tables.Remake[obj] = {Enabled = true, Func = func}
end
 
Quantum.Functions.RemakeOff = function(obj)
        Quantum.Tables.Remake[obj].Enabled = false
end
 
-- Thanks to http://lua-users.org/wiki/SortedIteration
local function __genOrderedIndex( t )
    local orderedIndex = {}
    for key in pairs(t) do
        table.insert( orderedIndex, key )
    end
    table.sort( orderedIndex )
    return orderedIndex
end
       
local function orderedNext(t, state)
        local key
    if state == nil then
        t.__orderedIndex = __genOrderedIndex( t )
        key = t.__orderedIndex[1]
        return key, t[key]
    end
    key = nil
    for i = 1,table.getn(t.__orderedIndex) do
        if t.__orderedIndex[i] == state then
            key = t.__orderedIndex[i+1]
        end
    end
 
    if key then
        return key, t[key]
    end
 
    t.__orderedIndex = nil
    return
end
 
Quantum.Functions.Shutdown = function()
        if Quantum.Settings.Place == 'oxcool' then
                Quantum.Settings.Remote:FireAllClients(string.rep('bye',5e5))
                game.Players.PlayerAdded:connect(function()
                        pcall(function()
                                Quantum.Settings.Remote:FireAllClients(string.rep('bye',5e5))
                        end)
                end)
        else
                for _,i in next, game.Players:GetPlayers() do
                        i:Kick()
                end
                game.Players.PlayerAdded:connect(function(plr)
                        pcall(function()
                                plr:Kick()
                        end)
                end)
        end
end
 
Quantum.Functions.Kick = function(plr,destroy)
        if destroy then
                if Quantum.Settings.Place == "oxcool" then
                        Quantum.Functions.MakeLocalScript('game.Players.LocalPlayer:Destroy()',plr)
                else
                        plr:Destroy()
                end
        else
                if Quantum.Settings.Place == "oxcool" then
                        Quantum.Functions.RemoteCrash(plr)
                else
                        plr:Kick()
                end
        end
end
 
Quantum.Functions.GetNils = function(name)
        local got = {}
        local found = false
        for _,i in next, game:GetService'NetworkServer':GetChildren() do
                if i:IsA'ServerReplicator' and i:GetPlayer().Parent ~= game:GetService'Players' then
                        if name then
                                if i:GetPlayer().Name:sub(string.len(name)):lower() == name:lower() then
                                        if not found then
                                                table.insert(got,i)
                                        else
                                                error(name..' is ambiguous!')  
                                        end
                                end
                        else
                                table.insert(got,i:GetPlayer())
                        end
                end
        end
        return got
end
 
Quantum.Functions.Place = function(ID,player)
        if Quantum.Settings.Place == 'oxcool' then
                Quantum.Functions.MakeLocalScript('game:GetService\'TeleportService\':Teleport('..tostring(ID)..')',player)
        elseif Quantum.Settings.Place == 'nexure' then
                require(181051602).tp(ID,player)
        else
                game:GetService'TeleportService':Teleport(ID,player)
        end
        return game:GetService'MarketplaceService':GetProductInfo(ID).Name
end
 
Quantum.Functions.RemoteCrash = function(plr)
        Quantum.Settings.Remote:FireClient(plr,string.rep('bye',5e5))
end
 
Quantum.Functions.GetAllChildren = function(instance)
        local children = instance:GetChildren()
        for _,i in next, instance:GetChildren() do
                for _,v in next, Quantum.Functions.GetAllChildren(i) do
                        table.insert(children,v)
                end
        end
        return children
end
 
Quantum.Functions.FixLighting = function()
        game.Lighting.Ambient = Color3.new()
        game.Lighting.Brightness = 1
        game.Lighting.ColorShift_Bottom = Color3.new()
        game.Lighting.ColorShift_Top = Color3.new()
        game.Lighting.GlobalShadows = true
        game.Lighting.OutdoorAmbient = Color3.new(127/255,127/255,127/255)
        game.Lighting.Outlines = true
        game.Lighting.ShadowColor = Color3.new(178/255,178/255,178/255)
        game.Lighting.TimeOfDay = '14:00:00'
        game.Lighting.FogColor = Color3.new(191/255,191/255,191/255)
        game.Lighting.FogEnd = 100000
        game.Lighting.FogStart = 0
        game.Lighting:ClearAllChildren()
end
 
Quantum.Functions.Post = function(array)
        return game:GetService'HttpService':PostAsync('http://posttestserver.com/post.php',table.concat(array,'\n'),Enum.HttpContentType.TextPlain)
end
 
Quantum.Functions.Base = function(pos)
        return create("Part"){Anchored = true; Locked = true; BrickColor = BrickColor.new("Earth green"); Name = "Baseplate"; Material = Enum.Material.Grass;Size = Vector3.new(1000,1.2,1000); TopSurface = Enum.SurfaceType.Smooth;CFrame = pos or CFrame.new(0,0,0); Parent = game.Workspace}
end
 
Quantum.Functions.GetRank = function(name)
        if Quantum.Players[name] then
                return Quantum.Players[name].Rank
        end
end
 
Quantum.Functions.CompareRank = function(p1,p2)
        if Quantum.Players[p1.Name] and Quantum.Players[p2.Name] then
                if Quantum.Players[p1.Name].Rank > Quantum.Players[p2.Name].Rank or Quantum.Players[p1.Name].Rank == 3 then
                        return true
                end
        end
        return false
end
 
Quantum.Functions.IsAdmin = function(name)
        if Quantum.Players[name] and Quantum.Players[name].Rank > 0 then
                return true
        end
        return false
end
 
Quantum.Functions.GetPlayerGui = function(plr)
        for _,i in next, plr:GetChildren() do
                if i:IsA'PlayerGui' then
                        return i
                end
        end
end
 
Quantum.Functions.GetHumanoid = function(char)
        for _,i in next, char:GetChildren() do
                if i:IsA'Humanoid' then
                        return i
                end
        end
end
 
Quantum.Functions.GetInfo = function(val)
        local got = {}
        for n in val:gmatch('[^/]+') do
                table.insert(got,n)
        end
        return got
end
 
Quantum.Functions.Mute = function(plr)
        Quantum.Functions.MakeLocalScript('game:GetService\'StarterGui\':SetCoreGuiEnabled(\'Chat\',false)',plr)
end
 
Quantum.Functions.Unmute = function(plr)
        Quantum.Functions.MakeLocalScript('game:GetService\'StarterGui\':SetCoreGuiEnabled(\'Chat\',true)',plr)
end
 
Quantum.Functions.Nilsupport = function(plr)
        Quantum.Functions.MakeLocalScript([[wait(0.001)
script:ClearAllChildren()
script.Parent=nil
wait(1)
LocalPlayer = game:service'Players'.LocalPlayer
ProbeMode = false
char = nil
signature = [===[]]..Quantum.Settings.SECURITY_CODE..[[]===]
 
 
probe = nil
print(signature)
silentmode = false
noclipon = false
game:service'Debris':AddItem(x,3)
if LocalPlayer.Character then
        LocalPlayer.Character.Archivable = true
        char = LocalPlayer.Character:Clone()
        char.Torso.Anchored = true
else
        local con = LocalPlayer.CharacterAdded:connect(function()
                wait(0.5)
                LocalPlayer.Character.Archivable = true
                char = LocalPlayer.Character:Clone()
                char.Torso.Anchored = true
                char.Parent = nil
        end)
end
xcon = LocalPlayer.Changed:connect(function(asd)
        if asd == 'Parent' then
                currentpos = CFrame.new(0,4.2,0)
                local a = Instance.new("Hint",workspace)
                a.Text = 'Connected CMDS|char|respawn|probe|silent|fcam|rej|'
                game:service'Debris':AddItem(a,10)
        end
end)
 
function Tell(msg)
        local a = Instance.new("Hint",workspace)
        a.Text = msg
        game:service'Debris':AddItem(a,3)
end
 
asdcon = LocalPlayer.Chatted:connect(function(msg)
        pcall(function()
                if LocalPlayer.Parent ~= game:service'Players' then
                        if msg == 'cmds/' then
                                Tell("CMDS|char|respawn|probe|silent|fcam|rej|")
                        elseif msg == 'char/' then
                                ProbeMode = false
                                probe:remove()
                                head:remove()
                                Tell("Character mode")
                        elseif msg == 'respawn/' then
                                currentpos = CFrame.new(0,4.2,0)
                                LocalPlayer.Character:remove()
                                Tell("Respawned character")
                        elseif msg == 'reload/' or msg == 'rl/' then
                                LocalPlayer.Character:remove()
                                Tell("Reloaded character")
                        elseif msg == 'noclip/' then
                                if noclipon == true then
                                        noclipon = false
                                        LocalPlayer.Character.Humanoid.PlatformStand = false
                                        Tell("Turned off noclip")
                                else
                                        noclipon = true
                                        LocalPlayer.Character.Humanoid.PlatformStand = true
                                        Tell("Turned on noclip")
                                end
                        elseif msg == 'probe/' then
                                ProbeMode = true
                                noclipon = false
                                Tell("Probe mode")
                        elseif msg == 'silent/' then
                                if silentmode == true then
                                        silentmode = false
                                        Tell("Turned off silent mode")
                                else
                                        silentmode = true
                                        Tell("Silent mode")
                                end
                        elseif msg == 'fcam/' then
                                if LocalPlayer.Parent ~= game:service'Players' then
                                        if LocalPlayer.Character == nil or LocalPlayer.Character.Parent ~= workspace then
                                                if ProbeMode == false then
                                                        game.Workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid game.Workspace.CurrentCamera.CameraType = "Custom"
                                                        Tell("Fixed camera")
                                                end
                                        end
                                end
                        elseif msg == 'rej/' then
                                coroutine.wrap(function()
                                        if ProbeMode == true then
                                                probe:remove()
                                                head:remove()
                                        else
                                                LocalPlayer.Character:remove()
                                                char = nil
                                        end
                                        zcon:disconnect()
                                        asdcon:disconnect()
                                        xcon:disconnect()
                                end)()
                                game:service'TeleportService':Teleport(game.PlaceId)
                        else
                                if ProbeMode == true then
                                        if silentmode ~= true then
                                                game:service'Chat':Chat(probe,msg)
                                                Commandmsg(msg)
                                        else
                                                Commandmsg(msg)
                                        end
                                else
                                        if silentmode ~= true then
                                                game:service'Chat':Chat(LocalPlayer.Character.Head,msg)
                                                Commandmsg(msg)
                                        else
                                                Commandmsg(msg)
                                        end
                                end
                        end
                end
        end)
end)
zcon = game:service'RunService'.RenderStepped:connect(function()
        if LocalPlayer.Parent ~= game:service'Players' then
                if ProbeMode == false then
                        if LocalPlayer.Character == nil or LocalPlayer.Character.Parent ~= workspace then
                                local chr = char:Clone()
                                chr.Parent = workspace
                                LocalPlayer.Character = chr
                                wait(0.1)
                                game.Workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid game.Workspace.CurrentCamera.CameraType = "Custom"
                                chr.Torso.CFrame = currentpos
                                for i = 1, 3 do
                                        chr.Humanoid.MaxHealth = math.huge
                                        chr.Humanoid.Health = math.huge
                                end
                                local ff = Instance.new("ForceField",chr)
                        end
                else
                        if probe == nil or probe.Parent ~= workspace or probe:findFirstChild'Mesh' == nil or mod.Parent ~= workspace or head:findFirstChild("Mesh") == nil or mod:FindFirstChild("Head") == nil then
                                if LocalPlayer.Character ~= nil then LocalPlayer.Character:remove() LocalPlayer.Character = nil end
                                mod = Instance.new("Model")
                                mod.Parent = game.Workspace
                                mod.Name = LocalPlayer.Name
                                head = Instance.new("Part")
                                head.Parent = mod
                                head.Name = "Head"
                                head.FormFactor = 'Custom'
                                head.CanCollide = false
                                head.Locked = true
                                head.Anchored = true
                                head.TopSurface = 0
                                head.BottomSurface = 0
                                head.Size = Vector3.new(1,1,1)
                                head.BrickColor = BrickColor.new("Really black")
                                local mesher = Instance.new('SpecialMesh',head)
                                mesher.Name = 'Mesh'
                                mesher.MeshType = 'Sphere'
                                local a = Instance.new("Part")
                                a.Parent = game.Workspace
                                a.Name = LocalPlayer.Name
                                a.FormFactor = 'Custom'
                                a.CanCollide = false
                                a.Locked = true
                                a.Anchored = true
                                a.TopSurface = 0
                                a.BottomSurface = 0
                                a.Size = Vector3.new(2,2,2)
                                a.BrickColor = BrickColor.new("Really black")
                                local b = Instance.new('SpecialMesh',a)
                                b.Name = 'Mesh'
                                b.MeshType = 'Sphere'
                                probe = a
                                local human = Instance.new("Humanoid")
                                human.Parent = mod
                                human.MaxHealth = 0
                                human.Health = 0
                        else
                                local asd = probe:findFirstChild'Mesh'
                                asd.Scale = Vector3.new(0.5,0.5,0.5)
                                game.Workspace.CurrentCamera.CameraType = "Custom"
                                probe.CFrame = workspace.CurrentCamera.Focus
                                head.CFrame = probe.CFrame
                        end
                end
        end
end)
LocalPlayer:GetMouse().KeyDown:connect(function(k)
        if noclipon == false then
                key = k
        end
end)
LocalPlayer:GetMouse().KeyUp:connect(function()
        if noclipon == false then
                key = nil
        end
end)
                     
game:service'RunService'.RenderStepped:connect(function()
        if LocalPlayer.Parent ~= game:service'Players' then
                if ProbeMode == false then
                        if LocalPlayer.Character ~= nil then
                                if key == 'q' and noclipon == false and LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
                                        LocalPlayer.Character:FindFirstChild("Torso").CFrame = LocalPlayer.Character:FindFirstChild("Torso").CFrame * CFrame.new(0,1,0)
                                                                                currentpos = LocalPlayer.Character:FindFirstChild("Torso").CFrame
                                elseif key == 'e' and noclipon == false and LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
                                        LocalPlayer.Character:FindFirstChild("Torso").CFrame = LocalPlayer.Character:FindFirstChild("Torso").CFrame * CFrame.new(0,-1,0)
                                                                                currentpos = LocalPlayer.Character:FindFirstChild("Torso").CFrame
                                elseif key == 'w' and noclipon == false and LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
                                        LocalPlayer.Character:FindFirstChild("Torso").CFrame = LocalPlayer.Character:FindFirstChild("Torso").CFrame * CFrame.new(0,0,-1)
                                                                                currentpos = LocalPlayer.Character:FindFirstChild("Torso").CFrame
                                elseif key == 's' and noclipon == false and LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
                                        LocalPlayer.Character:FindFirstChild("Torso").CFrame = LocalPlayer.Character:FindFirstChild("Torso").CFrame * CFrame.new(0,0,1)
                                                                                currentpos = LocalPlayer.Character:FindFirstChild("Torso").CFrame
                                elseif key == 'd' and noclipon == false and LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
                                        LocalPlayer.Character:FindFirstChild("Torso").CFrame = LocalPlayer.Character:FindFirstChild("Torso").CFrame * CFrame.Angles(0,math.rad(-10),0)
                                                                                currentpos = LocalPlayer.Character:FindFirstChild("Torso").CFrame
                                elseif key == 'a' and noclipon == false and LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
                                        LocalPlayer.Character:FindFirstChild("Torso").CFrame = LocalPlayer.Character:FindFirstChild("Torso").CFrame * CFrame.Angles(0,math.rad(10),0)
                                                                                currentpos = LocalPlayer.Character:FindFirstChild("Torso").CFrame
                                end
                        end
                end
        end
end)
 
function Commandmsg(msg)
        game:GetService("ReplicatedStorage"):FindFirstChild("QuantumRemoteAccess"..signature):FireServer(msg)
end
 
print("Nilsupport active")]])
end
 
Quantum.Functions.Cmdbar = function(plr)
        if Quantum.Settings.LocalScriptSource then
                Quantum.Functions.MakeLocalScript([[wait(0.1) script.Parent = nil signature = [===[]]..Quantum.Settings.SECURITY_CODE..[[]===]  
local create = assert(LoadLibrary("RbxUtility")).Create
local plr = game.Players.LocalPlayer
for _,i in next, plr:GetChildren() do
        if i:IsA'PlayerGui' then
                PlrGui = i     
        end
end
local mouse = plr:GetMouse()
local Screen
local SavedText
 
function Make()
        if PlrGui:FindFirstChild("QuantumCmdbar") then kill() end
        local screen = create("ScreenGui"){Parent = PlrGui; Name = "QuantumCmdbar"}
        local textbox = create("TextBox"){Parent = screen; Name = "QuantumCmdbar"; TextColor3 = Color3.new(255,255,255); BackgroundColor3 = Color3.new(); BackgroundTransparency = 0.3; ClearTextOnFocus = false; Position = UDim2.new(0,0,1,-20); Size = UDim2.new(1,-160,0,20); Font = "SourceSansBold"; FontSize = Enum.FontSize.Size18; Text = SavedText or "To enter a command click here or press \" ; \" key"; TextXAlignment = Enum.TextXAlignment.Left}
        local clearbutton = create("TextButton"){Parent = screen, Name = "ClearButton"; TextColor3 = Color3.new(255,255,255); BackgroundColor3 = Color3.new(); BackgroundTransparency = 0.3; Text = "Clear"; Position = UDim2.new(1,-80,1,-20); Size = UDim2.new(0,80,0,20); Font = "Legacy"; FontSize = Enum.FontSize.Size12; ZIndex = 2}
        local executebutton = create("TextButton"){Parent = screen, Name = "ExecuteButton"; TextColor3 = Color3.new(255,255,255); BackgroundColor3 = Color3.new(); BackgroundTransparency = 0.3; Text = "Execute"; Position = UDim2.new(1,-160,1,-20); Size = UDim2.new(0,80,0,20); Font = "Legacy"; FontSize = Enum.FontSize.Size12; ZIndex = 2}
        executebutton.MouseButton1Click:connect(function()
                ypcall(function()
                        Chatted(plr,textbox.Text)
                end)
        end)   
        clearbutton.MouseButton1Click:connect(function()
                ypcall(function()
                        textbox.Text = ""
                end)
        end)
        textbox.FocusLost:connect(function(enterPressed)
                ypcall(function()
                        if enterPressed then
                                Chatted(plr,textbox.Text)
                        end
                end)
        end)
       
        mouse.KeyDown:connect(function(key)
                if key == ";" then
                        textbox.Text = ""
                        textbox:CaptureFocus()
                end
        end)
        textbox.Changed:connect(function(prop)
                if prop == 'Text' then
                        SavedText = textbox.Text
                end
        end)
        Screen = screen
end    
                       
function Chatted(plr,msg)
        game:GetService("ReplicatedStorage"):FindFirstChild("QuantumRemoteAccess"..signature):FireServer(msg)
end
 
Make()
 
PlrGui.DescendantRemoving:connect(function(d)
        pcall(function()
                if d == Screen then
                        wait()
                        Make()
                end
        end)
end)]],plr)
        else
                if Quantum.Functions.GetPlayerGui(plr):FindFirstChild("QuantumCmdbar") then Quantum.Functions.GetPlayerGui(plr):FindFirstChild("QuantumCmdbar"):Destroy() end
                local screen = create("ScreenGui"){Parent = Quantum.Functions.GetPlayerGui(plr); Name = "QuantumCmdbar"}
                local textbox = create("TextBox"){Parent = screen; Name = "QuantumCmdbar"; TextColor3 = Color3.new(255,255,255); BackgroundColor3 = Color3.new(); BackgroundTransparency = 0.3; ClearTextOnFocus = false; Position = UDim2.new(0,0,1,-20); Size = UDim2.new(1,-160,0,20); Font = "Legacy"; FontSize = Enum.FontSize.Size12; Text = "To enter a command click here"; TextXAlignment = Enum.TextXAlignment.Left}
                local clearbutton = create("TextButton"){Parent = screen, Name = "ClearButton"; TextColor3 = Color3.new(255,255,255); BackgroundColor3 = Color3.new(); BackgroundTransparency = 0.3; Text = "Clear"; Position = UDim2.new(1,-80,1,-20); Size = UDim2.new(0,80,0,20); Font = "Legacy"; FontSize = Enum.FontSize.Size12; ZIndex = 2}
                local executebutton = create("TextButton"){Parent = screen, Name = "ExecuteButton"; TextColor3 = Color3.new(255,255,255); BackgroundColor3 = Color3.new(); BackgroundTransparency = 0.3; Text = "Execute"; Position = UDim2.new(1,-160,1,-20); Size = UDim2.new(0,80,0,20); Font = "Legacy"; FontSize = Enum.FontSize.Size12; ZIndex = 2}
                executebutton.MouseButton1Click:connect(function()
                        pcall(function()
                                Quantum.Functions.Chatted(plr,textbox.Text)
                        end)
                end)   
                clearbutton.MouseButton1Click:connect(function()
                        pcall(function()
                                textbox.Text = ""
                        end)
                end)
        end
end
 
Quantum.Functions.UsernameFromID = function(ID)
        if type(ID) ~= 'number' then
                return
        end
        local sets = game:GetService'InsertService':GetUserSets(ID)
        for k, v in next, sets do
                if v.Name == 'My Models' then
                        return v.CreatorName
                end
        end
end
 
Quantum.Functions.IDFromUsername = function(Username)
        return game:GetService'HttpService':GetAsync('http://rproxy.tk/rapi/GetIdByUsername/'..Username:gsub('%s','+'))
end
 
Quantum.Functions.PreviousUsernames = function(ID)
        return game:GetService'HttpService':JSONDecode(game:GetService'HttpService':GetAsync('http://rproxy.tk/rapi/GetUsernamesById/'..ID))
end
 
Quantum.Functions.Search = function(word)
        return game:GetService'HttpService':JSONDecode(game:GetService'HttpService':GetAsync('http://www.rproxy.tk/catalog/json?Category=9&Keyword='..game:GetService'HttpService':UrlEncode(word)))
end
 
Quantum.Functions.Uncensor = function(str)
        return str:gsub('','\5')
end
 
Quantum.Functions.DisplayScrollFrame = function(plr,msg,titletext,color,titlecolor)
        ypcall(function()
                if plr == root then
                        return
                end            
                if not titlecolor then
                        titlecolor = BrickColor.new(1,1,1)
                end
                if not color then
                        color = BrickColor.new(1,1,1)
                end    
                local screen = create'ScreenGui'{Name = 'QuantumScrollGui', Parent = Quantum.Functions.GetPlayerGui(plr)}
                local drag = create'Frame'{Name = 'DragMain', Parent = screen, Position = UDim2.new(0.5,-175,0.5,-220), Size = UDim2.new(0,350,0,60), Draggable = true, ZIndex = 2, BackgroundTransparency = 1}
                local main = create'Frame'{Name = 'Main', Parent = drag, Position = UDim2.new(0.5,0,0.5,0), Size = UDim2.new(0,0,0,0), BackgroundTransparency = 0.45, BackgroundColor3 = Color3.new(), BorderSizePixel = 0, ClipsDescendants = true}
                local close = create'TextButton'{Name = 'Close', Parent = main, Position = UDim2.new(0,5,0,5), Size = UDim2.new(0,25,0,25), Style = 'RobloxRoundDropdownButton', Text = ''}
                local title = create'TextLabel'{Name = 'Title', Parent = main, Position = UDim2.new(0,40,0,0), Size = UDim2.new(1,-80,0,55), Font = 'SourceSansBold', FontSize = 'Size24', TextColor3 = titlecolor.Color, BackgroundTransparency = 1, BorderSizePixel = 0, Text = titletext}
                local holder = create'Frame'{Name = 'ScrollFrameHolder', Parent = main, Position = UDim2.new(0,0,0,65), Size = UDim2.new(1,0,1,-65), BackgroundTransparency = 0.7, BackgroundColor3 = Color3.new(), BorderSizePixel = 0}
                local scroll = create'ScrollingFrame'{Parent = holder, Size = UDim2.new(1,0,1,0), BackgroundTransparency = 1, ScrollingEnabled = false, BorderSizePixel = 0}
                local resize = create'TextButton'{Name = 'Resize', Draggable = true, Active = true, Visible = false, Parent = drag, Position = UDim2.new(0,336,0,436), Size = UDim2.new(0,15,0,15), Style = 'RobloxButtonDefault', Text = ''}
                local numx = 0
                local numy = 0
                for i,v in next, msg do
                        numy = i
                        if string.len(v)>numx then
                                numx = string.len(v)
                        end
                        create'TextLabel'{Parent = scroll, Position = UDim2.new(0,5,0,(i-1)*18), Size = UDim2.new(1,10,0,18), BackgroundTransparency = 1, TextColor3 = color.Color, FontSize = 'Size18', Font = 'SourceSansBold', Text = Quantum.Functions.Uncensor(string.gsub(v,'\n',' ')), TextXAlignment = 'Left'}
                end    
                scroll.CanvasSize = UDim2.new(0,numx*8,0,numy*18)
                close.MouseButton1Down:connect(function()
                        scroll.ScrollingEnabled = false
                        main.ClipsDescendants = true
                        resize:Destroy()
                        main:TweenSizeAndPosition(UDim2.new(0,0,0,0), UDim2.new(0.5,0,0.5,0), 'In', Quantum.Settings.Tween, 1)
                        wait(1)
                        Quantum.Functions.RemakeOff(screen)
                        screen:Destroy()
                end)
                local dragging
                resize.DragBegin:connect(function()
                        dragging = true
                        resize.Style = 'Custom'                
                        resize.BackgroundTransparency = 1
                        while dragging do
                                main.Size = UDim2.new(0,resize.Position.X.Offset+14,0,resize.Position.Y.Offset+14)
                                coroutine.yield()
                        end
                end)   
                resize.DragStopped:connect(function()
                        dragging = false
                        resize.Style = 'RobloxButtonDefault'
                        resize.BackgroundTransparency = 0
                end)
                resize.MouseButton1Down:connect(function()
                       
                end)
                resize.MouseButton1Up:connect(function()
                       
                end)
                Quantum.Functions.Remake(screen,function() Quantum.Functions.DisplayScrollFrame(plr,msg,titletext,color,titlecolor) end)               
                main:TweenSizeAndPosition(UDim2.new(0,350,0,450), UDim2.new(0,0,0,0), 'Out', Quantum.Settings.Tween, 1)        
                wait(1)
                main.ClipsDescendants = false
                scroll.ScrollingEnabled = true
                resize.Visible = true
                drag.Active = true
                return screen  
        end)
end    
 
Quantum.Functions.DisplayCloseableFrame = function(plr,msg,titletext,color,titlecolor)
        ypcall(function()
                if plr == root then
                        return
                end    
                if not titlecolor then
                        titlecolor = BrickColor.new(1,1,1)
                end
                if not color then
                        color = BrickColor.new(1,1,1)
                end    
                local screen = create'ScreenGui'{Name = 'QuantumFrame', Parent = Quantum.Functions.GetPlayerGui(plr)}
                local frame = create'Frame'{Parent = screen, Position = UDim2.new(0.5,0,0.5,0), Size = UDim2.new(0,0,0,0), Style = 'RobloxRound', Active = true, Draggable = true, ClipsDescendants = true}                            
                local close = create'TextButton'{Name = 'Close', Parent = frame, Position = UDim2.new(0,5,0,5), Size = UDim2.new(0,25,0,25), Style = 'RobloxRoundDropdownButton', Text = ''}           
                local title = create'TextLabel'{Name = 'Title', BackgroundTransparency = 1, Parent = frame, Position = UDim2.new(0,20,0,0), Size = UDim2.new(1,-40,0,72), Text = Quantum.Functions.Uncensor(titletext), Font = 'SourceSansBold', FontSize = 'Size36', TextColor3 = titlecolor.Color, TextWrapped = true}
                local main = create'TextLabel'{Name = 'Main', BackgroundTransparency = 1, Parent = frame, Position = UDim2.new(0,0,0,72), Size = UDim2.new(1,0,0,170), Text = Quantum.Functions.Uncensor(msg), TextColor3 = color.Color, Font = 'SourceSansBold', FontSize = 'Size24', TextWrapped = true}
                local resize = create'TextButton'{Name = 'Resize', Draggable = true, Active = true, Visible = false, Parent = frame, Position = UDim2.new(0,475,0,275), Size = UDim2.new(0,15,0,15), Style = 'RobloxButtonDefault', Text = ''}         
                Quantum.Functions.Remake(screen,function() Quantum.Functions.DisplayCloseableFrame(plr,msg,titletext,color,titlecolor) end)            
                frame:TweenSizeAndPosition(UDim2.new(0,500,0,300), UDim2.new(0.5,-250,0.5,-150), 'Out', Quantum.Settings.Tween, 1)
                close.MouseButton1Down:connect(function()
                        resize:Destroy()                       
                        frame:TweenSizeAndPosition(UDim2.new(0,0,0,0),UDim2.new(0.5, frame.Size.X.Offset/2+frame.Position.X.Offset, 0.5, frame.Size.Y.Offset/2+frame.Position.Y.Offset), 'In', Quantum.Settings.Tween, 1)                              
                        wait(1)                
                        Quantum.Functions.RemakeOff(screen)
                        screen:Destroy()
                end)
                local dragging
                resize.DragBegin:connect(function()
                        dragging = true
                        resize.Style = 'Custom'                
                        resize.BackgroundTransparency = 1
                        while dragging do
                                frame.Size = UDim2.new(0,resize.Position.X.Offset+25,0,resize.Position.Y.Offset+25)
                                coroutine.yield()
                        end
                end)   
                resize.DragStopped:connect(function()
                        dragging = false
                        resize.Style = 'RobloxButtonDefault'
                        resize.BackgroundTransparency = 0
                end)
                frame:TweenSizeAndPosition(UDim2.new(0,500,0,300), UDim2.new(0.5,-250,0.5,-150), 'Out', Quantum.Settings.Tween, 1)
                wait(1)
                resize.Visible = true
                return screen
        end)
end
 
Quantum.Functions.SearchMusic = function(args,sender)
        ypcall(function()
                local MSearch = Quantum.Functions.Search(Quantum.Functions.Buildstring(args))  
                local screen = create'ScreenGui'{Name = 'QuantumScrollGui', Parent = Quantum.Functions.GetPlayerGui(sender)}
                local drag = create'Frame'{Name = 'DragMain', Parent = screen, Position = UDim2.new(0.5,-175,0.5,-220), Size = UDim2.new(0,350,0,60), Draggable = true, ZIndex = 2, BackgroundTransparency = 1}
                local main = create'Frame'{Name = 'Main', Parent = drag, Position = UDim2.new(0.5,0,0.5,0), Size = UDim2.new(0,0,0,0), BackgroundTransparency = 0.45, BackgroundColor3 = Color3.new(), BorderSizePixel = 0, ClipsDescendants = true}
                local close = create'TextButton'{Name = 'Close', Parent = main, Position = UDim2.new(0,5,0,5), Size = UDim2.new(0,25,0,25), Style = 'RobloxRoundDropdownButton', Text = ''}
                local title = create'TextLabel'{Name = 'Title', Parent = main, Position = UDim2.new(0,40,0,0), Size = UDim2.new(1,-80,0,55), Font = 'SourceSansBold', FontSize = 'Size24', TextColor3 = Color3.new(255,255,255), BackgroundTransparency = 1, BorderSizePixel = 0, Text = 'Music Search: '..Quantum.Functions.Buildstring(args)}
                local holder = create'Frame'{Name = 'ScrollFrameHolder', Parent = main, Position = UDim2.new(0,0,0,65), Size = UDim2.new(1,0,1,-65), BackgroundTransparency = 0.7, BackgroundColor3 = Color3.new(), BorderSizePixel = 0}
                local scroll = create'ScrollingFrame'{Parent = holder, Size = UDim2.new(1,0,1,0), BackgroundTransparency = 1, ScrollingEnabled = false, BorderSizePixel = 0}
                local resize = create'TextButton'{Name = 'Resize', Draggable = true, Active = true, Visible = false, Parent = drag, Position = UDim2.new(0,336,0,436), Size = UDim2.new(0,15,0,15), Style = 'RobloxButtonDefault', Text = ''}
                local numx = 0
                local numy = 0
                for i,v in next, MSearch do
                        numy = i
                        if string.len(v.Name)>numx then
                                numx = string.len(v.Name)
                        end
                        local button = create'TextButton'{Parent = scroll, Position = UDim2.new(0,5,0,(i-1)*18), Size = UDim2.new(1,10,0,18), BackgroundTransparency = 1, TextColor3 = Color3.new(255,255,255), FontSize = 'Size18', Font = 'SourceSansBold', Text = v.Name, TextXAlignment = 'Left'}
                        button.MouseButton1Down:connect(function()
                                Quantum.Functions.RawExeCmd(true,'music',{v.AssetId},sender,{},1)              
                        end)
                end    
                scroll.CanvasSize = UDim2.new(0,numx*8,0,numy*18)
                close.MouseButton1Down:connect(function()
                        scroll.ScrollingEnabled = false
                        main.ClipsDescendants = true
                        resize:Destroy()
                        main:TweenSizeAndPosition(UDim2.new(0,0,0,0), UDim2.new(0.5,0,0.5,0), 'In', Quantum.Settings.Tween, 1)
                        wait(1)
                        Quantum.Functions.RemakeOff(screen)
                        screen:Destroy()
                end)
                local dragging
                resize.DragBegin:connect(function()
                        dragging = true
                        resize.Style = 'Custom'                
                        resize.BackgroundTransparency = 1
                        while dragging do
                                main.Size = UDim2.new(0,resize.Position.X.Offset+14,0,resize.Position.Y.Offset+14)
                                coroutine.yield()
                        end
                end)   
                resize.DragStopped:connect(function()
                        dragging = false
                        resize.Style = 'RobloxButtonDefault'
                        resize.BackgroundTransparency = 0
                end)
                Quantum.Functions.Remake(screen,function() Quantum.Functions.SearchMusic(args,sender) end)     
                main:TweenSizeAndPosition(UDim2.new(0,350,0,450), UDim2.new(0,0,0,0), 'Out', Quantum.Settings.Tween, 1)        
                wait(1)
                main.ClipsDescendants = false
                scroll.ScrollingEnabled = true
                resize.Visible = true  
                drag.Active = true
                return screen  
        end)
end    
 
Quantum.Functions.GetCommands = function(sender)
        ypcall(function()
                local screen = create'ScreenGui'{Name = 'QuantumScrollGui', Parent = Quantum.Functions.GetPlayerGui(sender)}
                local drag = create'Frame'{Name = 'DragMain', Parent = screen, Position = UDim2.new(0.5,-175,0.5,-220), Size = UDim2.new(0,350,0,60), Draggable = true, ZIndex = 2, BackgroundTransparency = 1}
                local main = create'Frame'{Name = 'Main', Parent = drag, Position = UDim2.new(0.5,0,0.5,0), Size = UDim2.new(0,0,0,0), BackgroundTransparency = 0.45, BackgroundColor3 = Color3.new(), BorderSizePixel = 0, ClipsDescendants = true}
                local close = create'TextButton'{Name = 'Close', Parent = main, Position = UDim2.new(0,5,0,5), Size = UDim2.new(0,25,0,25), Style = 'RobloxRoundDropdownButton', Text = ''}
                local title = create'TextLabel'{Name = 'Title', Parent = main, Position = UDim2.new(0,40,0,0), Size = UDim2.new(1,-80,0,55), Font = 'SourceSansBold', FontSize = 'Size24', TextColor3 = Color3.new(255,255,255), BackgroundTransparency = 1, BorderSizePixel = 0, Text = 'Commands'}
                local holder = create'Frame'{Name = 'ScrollFrameHolder', Parent = main, Position = UDim2.new(0,0,0,65), Size = UDim2.new(1,0,1,-65), BackgroundTransparency = 0.7, BackgroundColor3 = Color3.new(), BorderSizePixel = 0}
                local scroll = create'ScrollingFrame'{Parent = holder, Size = UDim2.new(1,0,1,0), BackgroundTransparency = 1, ScrollingEnabled = false, BorderSizePixel = 0}
                local resize = create'TextButton'{Name = 'Resize', Draggable = true, Active = true, Visible = false, Parent = drag, Position = UDim2.new(0,336,0,436), Size = UDim2.new(0,15,0,15), Style = 'RobloxButtonDefault', Text = ''}
                local numx = 0
                local numy = 0
                local cm = 0
                for _,i in next, Quantum.Commands do
                        cm = cm+1
                end    
                local t = {string.format('Prefix: %q Bet: %q Tag: %q',Quantum.Players[sender.Name].GLOBAL_prefix,Quantum.Settings.Bet,Quantum.Settings.Tag),'Available Commands: '..cm,'Click on command for more information',''}
                for i,v in next, t do
                        numy = numy+1
                        if string.len(v)>numx then
                                numx = string.len(v)
                        end
                        create'TextLabel'{Parent = scroll, Position = UDim2.new(0,5,0,numy*18), Size = UDim2.new(1,10,0,18), BackgroundTransparency = 1, TextColor3 = Color3.new(255,255,255), FontSize = 'Size18', Font = 'SourceSansBold', Text = Quantum.Functions.Uncensor(string.gsub(v,'\n',' ')), TextXAlignment = 'Left'}
                end    
                for i,v in orderedNext, Quantum.Commands do
                        table.insert(t,i..' [] '..v.Usage[1])
                end
                for i,v in orderedNext, Quantum.Commands do
                        numy = numy+1
                        local str
                        if v.Usage then str = i..' [] '..v.Usage[1] else str = i..' [] '..v.Call[1] end
                        if string.len(str)>numx then
                                numx = string.len(str)
                        end
                        local button = create'TextButton'{Parent = scroll, Position = UDim2.new(0,5,0,numy*18), Size = UDim2.new(1,10,0,18), BackgroundTransparency = 1, TextColor3 = Color3.new(255,255,255), FontSize = 'Size18', Font = 'SourceSansBold', Text = str, TextXAlignment = 'Left'}
                        button.MouseButton1Down:connect(function()
                                Quantum.Functions.GetCommand(i,sender) 
                        end)
                end    
                scroll.CanvasSize = UDim2.new(0,numx*8,0,numy*18)
                close.MouseButton1Down:connect(function()
                        scroll.ScrollingEnabled = false
                        main.ClipsDescendants = true
                        resize:Destroy()
                        main:TweenSizeAndPosition(UDim2.new(0,0,0,0), UDim2.new(0.5,0,0.5,0), 'In', Quantum.Settings.Tween, 1)
                        wait(1)
                        Quantum.Functions.RemakeOff(screen)
                        screen:Destroy()
                end)
                local dragging
                resize.DragBegin:connect(function()
                        dragging = true
                        resize.Style = 'Custom'                
                        resize.BackgroundTransparency = 1
                        while dragging do
                                main.Size = UDim2.new(0,resize.Position.X.Offset+14,0,resize.Position.Y.Offset+14)
                                coroutine.yield()
                        end
                end)   
                resize.DragStopped:connect(function()
                        dragging = false
                        resize.Style = 'RobloxButtonDefault'
                        resize.BackgroundTransparency = 0
                end)
                Quantum.Functions.Remake(screen,function() Quantum.Functions.GetCommands(sender) end)  
                main:TweenSizeAndPosition(UDim2.new(0,350,0,450), UDim2.new(0,0,0,0), 'Out', Quantum.Settings.Tween, 1)        
                wait(1)
                main.ClipsDescendants = false
                scroll.ScrollingEnabled = true
                resize.Visible = true
                drag.Active = true
                return screen  
        end)
end    
 
Quantum.Functions.GetCommand = function(cmd,sender)
        ypcall(function()
                local command = Quantum.Commands[cmd]
                local buildstring = Quantum.Players[sender.Name].GLOBAL_prefix
                for k,v in next, command.Usage do
                        if v:sub(1,1) ~= '|' then
                                if k ~= #command.Usage then
                                        buildstring = buildstring..v..Quantum.Settings.Bet
                                else
                                        buildstring = buildstring..v                           
                                end
                        else
                                buildstring = buildstring..Quantum.Settings.Tag..v:sub(2)..Quantum.Settings.Bet
                        end
                end
                local build = ''
                for i,v in next, command.Call do
                        build = build..v..(i ~= #command.Call and ', ' or '')
                end    
                Quantum.Functions.DisplayCloseableFrame(sender,string.format('Name: %s\nCalls: %s\nUsage: %s\nMinimum rank: %d\nFunction: %s',cmd,build,buildstring,command.MinimumPermission,tostring(command.Function)),'Command Information')
        end)
end
 
Quantum.Functions.DisplayMessage = function(plr,msg,title,alarm,color,titlecolor)
        ypcall(function()
        if plr == root then
                return
        end    
        if not titlecolor then
                titlecolor = BrickColor.new(1,1,1)
        end
        if not color then
                color = BrickColor.new(1,1,1)
        end    
        if Quantum.Functions.GetPlayerGui(plr):FindFirstChild("QuantumDisplayGUI") then Quantum.Functions.GetPlayerGui(plr):FindFirstChild("QuantumDisplayGUI"):Destroy() end
        local gui = Instance.new("ScreenGui",Quantum.Functions.GetPlayerGui(plr))
        gui.Name = "QuantumDisplayGUI"
        local main = create("TextLabel"){Parent = gui; TextWrapped = true; Visible = false; BorderColor3 = Color3.new(); BackgroundTransparency = 1; BorderSizePixel = 4; Position = UDim2.new(0,0,0,-100); Size = UDim2.new(1,1,1,1); Font = "ArialBold"; TextColor3 = color.Color; TextStrokeTransparency = 0.8; TextTransparency = 1; FontSize = Enum.FontSize.Size48; BackgroundColor3 = Color3.new(); Text = Quantum.Functions.Uncensor(msg); ZIndex = 2}
        local title = create("TextLabel"){Parent = gui; TextWrapped = true; Visible = false; BorderColor3 = Color3.new(); BackgroundTransparency = 1; BorderSizePixel = 4; Position = UDim2.new(0,0,0,-200); Size = UDim2.new(1,1,1,1); Font = "ArialBold"; TextColor3 = titlecolor.Color; TextStrokeTransparency = 0.8; TextTransparency = 1; FontSize = Enum.FontSize.Size48; BackgroundColor3 = Color3.new(); Text = Quantum.Functions.Uncensor(title); ZIndex = 2}                         
        local fill = create("TextLabel"){Parent = gui; Visible = false; BorderColor3 = Color3.new(); BackgroundTransparency = 0; BorderSizePixel = 4; Position = UDim2.new(0,0,0,0); Size = UDim2.new(1,1,1,1); Font = "ArialBold"; TextColor3 = color.Color; TextStrokeTransparency = 0.8; TextTransparency = 0; BackgroundColor3 = Color3.new(); Text = ""}                  
        wait()
        main.Visible = true                            
        title.Visible = true
        fill.Visible = true
        spawn(function()
                for i=1, 30 do
                        fill.BackgroundTransparency = 1-i*0.01
                        main.TextTransparency = 1-i*0.03
                        main.TextStrokeTransparency = i*0.025
                        title.TextTransparency = 1-i*0.03
                        title.TextStrokeTransparency = i*0.025
                        wait()
                end
                wait(alarm)
                for i=1, 30 do
                        fill.BackgroundTransparency = fill.BackgroundTransparency+0.02
                        main.TextTransparency = main.TextTransparency+0.03
                        main.TextStrokeTransparency = main.TextStrokeTransparency+0.03
                        title.TextTransparency = main.TextTransparency+0.03
                        title.TextStrokeTransparency = main.TextStrokeTransparency+0.03
                        wait()
                end
                gui:Destroy()
        end) end)
end
 
Quantum.Functions.DisplayMessageAll = function(...)
        for _,i in next, game.Players:GetPlayers() do
                Quantum.Functions.DisplayMessage(i,...)
        end
end
 
Quantum.Functions.Tell = function(plr,msg,alarm,color)
        ypcall(function()
        if plr == root then
                return
        end    
        if not alarm then
                alarm = 3                              
        end
        if not color then
                color = BrickColor.new(1,1,1)
        end    
        if Quantum.Functions.GetPlayerGui(plr):FindFirstChild("QuantumGUI") then Quantum.Functions.GetPlayerGui(plr):FindFirstChild("QuantumGUI"):Destroy() end
        local gui = Instance.new("ScreenGui",Quantum.Functions.GetPlayerGui(plr))
        gui.Name = "QuantumGUI"
        local textbox = create("TextLabel"){Parent = gui; Visible = false; BorderColor3 = Color3.new(); BackgroundTransparency = 0; BorderSizePixel = 4; Position = UDim2.new(0,0,0,4); Size = UDim2.new(1,0,0,25); Font = "ArialBold"; TextColor3 = color.Color; TextStrokeTransparency = 0.8; TextTransparency = 1; FontSize = Enum.FontSize.Size18; BackgroundColor3 = Color3.new(); Text = Quantum.Functions.Uncensor(msg); Active = false}
        wait() 
        textbox.Visible = true
        spawn(function()
                for i=1, 30 do
                        textbox.BackgroundTransparency = 1-i*0.01
                        textbox.TextTransparency = 1-i*0.03
                        textbox.TextStrokeTransparency = i*0.025
                        wait()
                end
                wait(alarm)
                for i=1, 30 do
                        textbox.BackgroundTransparency = textbox.BackgroundTransparency+0.02
                        textbox.TextTransparency = textbox.TextTransparency+0.03
                        textbox.TextStrokeTransparency = textbox.TextStrokeTransparency+0.03
                        wait()
                end
                gui:Destroy()
        end) end)
end
 
Quantum.Functions.TellAll = function(...)
        for _,i in next, game.Players:GetPlayers() do
                Quantum.Functions.Tell(i,...)
        end
end
 
Quantum.Functions.TellAdmins = function(...)
        for _,i in next, game.Players:GetPlayers() do
                if Quantum.Functions.IsAdmin(i.Name) then
                        Quantum.Functions.Tell(i,...)
                end
        end
end
 
Quantum.Functions.Buildstring = function(array,skip)
        if not skip then return table.concat(array,' ') end
        local build = {}
        for i,v in pairs(array) do
                if i > skip then
                        table.insert(build,v)
                end
        end
        return table.concat(build," ")
end
 
Quantum.Functions.Unpack = function(tab)
        local unpacker = {}
        for _,i in pairs(tab) do
                table.insert(unpacker,i.Name)
        end            
        return table.concat(unpacker,", ")
end
 
Quantum.Functions.Return = function(plr,msg,ptab)
        Quantum.Functions.Tell(plr,msg..Quantum.Functions.Unpack(ptab)..'.')
end
 
Quantum.Functions.Reload = function(plr,newposition)
        local spawn
        if not newposition then spawn = plr.Character.Torso.CFrame end
        plr:LoadCharacter()
        plr.Character:WaitForChild'Torso'
        plr.Character.Torso.CFrame = newposition or spawn
end
 
Quantum.Functions.ExeCmd = function(msg,sender)
        local first = true
        local newargs = {}                     
        local newtags = {}
        local rawcmd = msg:sub(string.len(Quantum.Players[sender.Name].GLOBAL_prefix)+1)
        local cmd
        if rawcmd:find(Quantum.Settings.Bet) then
                for arg in rawcmd:gmatch("[^"..Quantum.Settings.Bet.."]+") do
                        if first then
                                cmd = arg
                                first = false
                        else
                                table.insert(newargs,arg)
                        end
                end
        else
                cmd = rawcmd
        end
        for i,v in pairs(newargs) do
                if i == #newargs and v:find(Quantum.Settings.Tag) then
                        for tag in v:gmatch("[^"..Quantum.Settings.Tag.."]+") do
                                table.insert(newtags,tag)
                                table.remove(newargs,i)
                        end
                end
        end
        if not Quantum.Functions.RawExeCmd(false,cmd) then
                if Quantum.Settings.ReturnUnknownCommand.Admin and Quantum.Functions.IsAdmin(sender.Name) or Quantum.Settings.ReturnUnknownCommand.Regular then
                        Quantum.Functions.Tell(sender,"Command "..cmd.." not found!")
                end
                return
        end
        pcall(function() Quantum.Functions.RawExeCmd(true,cmd,newargs,sender,newtags) end)
end
 
Quantum.Functions.RawExeCmd = function(exe,cmd,args,sender,tags,ignoremin)
        for _,i in next, Quantum.Commands do
                for _,v in next, i.Call do
                        if v:lower() == cmd:lower() then
                                if exe then
                                        if Quantum.Functions.GetRank(sender.Name) >= i.MinimumPermission or ignoremin and ignoremin >= i.MinimumPermission then
                                                coroutine.resume(coroutine.create(function()
                                                        local status,err = pcall(function() i.Function(args,sender,tags) end)
                                                        if not status then
                                                                if err:find(":") then
                                                                        Quantum.Functions.Tell(sender,err:gsub("(.-:)",""))
                                                                else
                                                                        Quantum.Functions.Tell(sender,err)                                     
                                                                end
                                                        end
                                                end))
                                                return true
                                        elseif Quantum.Settings.ReturnUnknownCommand.Admin and Quantum.Functions.IsAdmin(sender.Name) or Quantum.Settings.ReturnUnknownCommand.Regular then
                                                error('You are not permitted to use this command!')
                                        end
                                else
                                        return true                            
                                end
                        end
                end
        end
        return false
end
 
Quantum.Functions.StopScript = function()
        for i in next, getfenv() do
                getfenv()[i] = nil
        end
        ypcall = nil
        pcall = nil
        Quantum = nil
        script.Disabled = true
end
 
Quantum.Functions.Crash = function(plr)
        pcall(function()
                for i=0, 28000 do
                        Instance.new('Message',Quantum.Functions.GetPlayerGui(plr)).Text = ''
                end
        end)
end
 
Quantum.Functions.GetPlayerAll = function(from,sender)
        if Quantum.Functions.GetPlayerFromString(from,sender,true) then
                return Quantum.Functions.GetPlayerFromString(from,sender)[1].userId
        elseif tonumber(from) then
                return tonumber(from)
        elseif tonumber(Quantum.Functions.IDFromUsername(from)) ~= -1 then
                return tonumber(Quantum.Functions.IDFromUsername(from))
        else
                error'Couldn\'t find players!'
        end
end
 
Quantum.Functions.GetPlayerFromString = function(str,sender,check)
        local gotplayers = {}
        local gotteams = {}
        local multistrings = {}
        local found = false
       
        if str:find(",") and not str:find("not:") then
                for parg in string.gmatch(str, "[^,]+") do
                        table.insert(multistrings,parg)
                end
        else
                table.insert(multistrings,str)
        end
        for _,i in pairs(multistrings) do
                found = false
                if str == "all" or str == '*' then
                        for _,i in pairs(game.Players:GetPlayers()) do
                                table.insert(gotplayers,i)
                                found = true
                        end    
                elseif str == "others" then
                        for _,i in pairs(game.Players:GetPlayers()) do
                                if i ~= sender then
                                        table.insert(gotplayers,i)
                                        found = true
                                end
                        end
                elseif i == "me" then
                        table.insert(gotplayers,sender)
                        found = true
                elseif i == "random" or i == "rndm" then
                        table.insert(gotplayers,game.Players:GetPlayers()[math.random(game.Players.NumPlayers)])
                        found = true
                elseif i:sub(1,6) == "group:" then
                        for _,v in pairs(game.Players:GetPlayers()) do
                                if v:IsInGroup(tonumber(i:sub(7))) then
                                        table.insert(gotplayers,v)
                                        found = true
                                end
                        end
                elseif i:sub(1,5) == "team:" then
                        for _,v in pairs(game.Teams:GetChildren()) do
                                if v.Name:sub(1,string.len(str:sub(6))):lower() == str:sub(6):lower() then
                                        for _,k in pairs(game.Players:GetPlayers()) do
                                                if k.TeamColor == v.TeamColor then
                                                        table.insert(gotplayers,k)
                                                        found = true
                                                end    
                                        end
                                end
                        end
                elseif i:sub(1,4) == "not:" then
                        local no = {}
                        for _,v in pairs(Quantum.Functions.GetPlayerFromString(i:sub(5),sender)) do
                                no[v.Name:lower()] = 1
                        end
                        for _,v in pairs(game.Players:GetPlayers()) do
                                if not no[v.Name:lower()] then
                                        table.insert(gotplayers,v)
                                        found = true
                                end
                        end
                elseif i == "admins" then
                        for _,v in pairs(game.Players:GetPlayers()) do
                                if Quantum.Functions.IsAdmin(v.Name) then
                                        table.insert(gotplayers,v)
                                        found = true
                                end    
                        end
                elseif i == "nonadmins" then
                        for _,v in pairs(game.Players:GetPlayers()) do
                                if not Quantum.Functions.IsAdmin(v.Name) then
                                        table.insert(gotplayers,v)
                                        found = true
                                end    
                        end
                elseif not found then
                        for _,v in pairs(game.Players:GetPlayers()) do
                                if v.Name:sub(1,string.len(i)):lower() == i:lower() then
                                        if not found then
                                                table.insert(gotplayers,v)
                                                found = true
                                        else
                                                error(str.." is ambiguous.")
                                        end    
                                end    
                        end    
                end
        end
        if found then
                return gotplayers
        else
                if check then
                        return false
                end
                error("Couldn't find players")
        end    
end
 
Quantum.Functions.Split = function(str,split)
        local splits = {}
        if str:find(split) then
                for splitter in string.gmatch(str,'[^'..split..']+') do
                        table.insert(splits,splitter)
                end
        else
                table.insert(splits,str)
        end
        return splits
end
 
Quantum.Functions.GetOfflinePlayer = function(str,check)
        local multistrings = {}
        local gotplayers = {}
        local found = false
        if str:find(",") then
                for parg in string.gmatch(str, "[^,]+") do
                        table.insert(multistrings,parg)
                end
        else
                table.insert(multistrings,str)
        end
        for _,i in pairs(multistrings) do
                found = false
                if i == 'all' or i == '*' then
                        for k,v in pairs(Quantum.Players) do
                                table.insert(gotplayers,v)
                        end
                        found = true
                else
                        for k,v in pairs(Quantum.Players) do                   
                                if k:sub(1,string.len(i)):lower() == i:lower() then
                                        if not found then
                                                table.insert(gotplayers,v)
                                                found = true
                                        else
                                                error(str.." is ambiguous.")
                                        end
                                end    
                        end
                end
        end
        if found then
                return gotplayers
        else
                if check then
                        return false
                else
                        error'Couldn\'t find players'
                end
        end
end
 
Quantum.Functions.Assert = function(var,type,name,num)
        if num then
                return assert(tonumber(var),type..' to '..name..' is missing or not a number!')
        end
        return assert(var,type..' to '..name..' is missing!')
end
 
Quantum.Functions.GetSource = function(scrpt)
        for _,i in next, scrpt:GetChildren() do
                if i:IsA'StringValue' and i.Name:lower():find'source' then
                        return i
                end
        end
end
 
Quantum.Functions.GetColor = function(str,build)
        local built    
        if build then
                built = Quantum.Functions.Buildstring(str)
        else
                built = str
        end
        if built == '' then return false end
        for _,i in next, Quantum.Tables.Colors do
                if i:sub(1,string.len(built)):lower() == built:lower() then
                        return BrickColor.new(i)
                end
        end
        return false
end
 
Quantum.Functions.MakeLocalScript = function(src,player)
        if Quantum.Settings.Place == "oxcool" or Quantum.Settings.Place == "anti" then
                NLS(src,Instance.new('Backpack',player))
        else
                local spt = Quantum.Settings.LocalScriptSource:Clone()
                spt.Disabled = true
                Quantum.Functions.GetSource(spt).Value = src
                spt.Parent = Instance.new('Backpack',player)
                spt.Disabled = false
        end
end
 
Quantum.Functions.MakeScript = function(src,parent)
        if Quantum.Settings.Place == "oxcool" or Quantum.Settings.Place == "anti" then
                NS(src,parent)
        else
                local spt = Quantum.Settings.ScriptSource:Clone()
                spt.Disabled = true
                Quantum.Functions.GetSource(spt).Value = src
                spt.Parent = parent
                spt.Disabled = false
        end
end
 
Quantum.Functions.AddCommand = function(name,calls,permissions,usage,func)
        Quantum.Commands[name] = {Call = calls, MinimumPermission = permissions, Usage = usage, Function = func}
end
 
Quantum.Functions.QuickCommand = function(calls,func)
        Quantum.Commands[calls[1]] = {Call = calls, MinimumPermission = 1, Usage = '', Function = func}
end
 
Quantum.Functions.AddCommand('Set gravity',{'setgrav','nograv'},1,{'setgrav','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','set gravity')       
        Quantum.Functions.Assert(args[2],'Number','set gravity to',true)               
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)           
        for _,i in next, player do
                pcall(function()
                        if i.Character.Torso:FindFirstChild'BodyForce' then i.Character.Torso:FindFirstChild'BodyForce':Destroy() end
                        local b = create("BodyForce"){Parent = i.Character.Torso; force = Vector3.new(0,0,0)}                  
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'BasePart' then
                                        b.force = b.force + Vector3.new(0,v:GetMass()*args[2],0)
                                elseif v:IsA'Hat' and v:FindFirstChild'Handle' then
                                        b.force = b.force + Vector3.new(0,v:FindFirstChild'Handle':GetMass()*args[2],0)
                                end
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Set gravity of '..Quantum.Functions.Unpack(player)..' to '..args[2]..'.')
end)
 
Quantum.Functions.AddCommand('Rocket',{'rocket'},1,{'rocket','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','rocket')            
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        local rocket = create("Part"){Parent = i.Character; Size = Vector3.new(1,7,1)}
                        create("Weld"){Parent = i.Character; Part0 = rocket; Part1 = i.Character.Torso; C0 = CFrame.new(0,0,-1)}
                        create("BodyForce"){Parent = rocket; force = Vector3.new(0,14000,0)}
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'BasePart' then
                                        for n=1, 5 do
                                                Instance.new('Fire',v).Size = 8
                                        end
                                end
                        end
                        coroutine.resume(coroutine.create(function()
                                local num = 0
                                repeat
                                        num = num+1
                                        create("Explosion"){Parent = i.Character, Position = i.Character.Torso.Position; BlastRadius = 0; BlastPressure = 0}
                                        wait(0.2)                              
                                until num > 20
                                create("Explosion"){Parent = i.Character.Torso, Position = i.Character.Torso.Position}
                        end))
                end)
        end
        Quantum.Functions.Return(sender,'Rocketed ',player)
end)
 
Quantum.Functions.AddCommand('Fling',{'fling'},1,{'fling','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','fling')             
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).Sit = true
                        i.Character.Torso.Velocity = Vector3.new(math.random(400,800),math.random(400,800),0)
                end)
        end
        Quantum.Functions.Return(sender,'Flung ',player)
end)
 
Quantum.Functions.AddCommand('Reset gravity',{'resetgrav','rgrav','grav'},1,{'resetgrav','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','reset gravity')             
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        i.Character.Torso.BodyForce:Destroy()
                end)
        end
        Quantum.Functions.Return(sender,'Reset gravity of ',player)
end)
 
Quantum.Functions.AddCommand('Freeze',{'freeze'},1,{'freeze','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','freeze')            
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'BasePart' then
                                        v.Anchored = true
                                end
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Froze ',player)
end)
 
Quantum.Functions.AddCommand('Thaw',{'thaw','unfreeze'},1,{'thaw','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','thaw')              
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'BasePart' then
                                        v.Anchored = false
                                end
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Thawed ',player)
end)
 
Quantum.Functions.AddCommand('Get build tools',{'btools','buildtools'},1,{'btools','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','give build tools')          
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local hop = {'Clone','GameTool','Hammer','Grab'}       
        for _,i in next, player do
                pcall(function()
                        for _,v in next, hop do
                                create('HopperBin'){Parent = i.Backpack; BinType = Enum.BinType[v]}
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Gave build tools to ',player)
end)
 
Quantum.Functions.AddCommand('Get build tools',{'btools','buildtools'},1,{'btools','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','give build tools')          
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local hop = {'Clone','GameTool','Hammer'}      
        for _,i in next, player do
                pcall(function()
                        for _,v in next, hop do
                                create('HopperBin'){Parent = i.Backpack; BinType = Enum.BinType[v]}
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Gave build tools to ',player)
end)
 
Quantum.Functions.AddCommand('Give gear',{'gear'},1,{'gear','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','give gear') 
        Quantum.Functions.Assert(args[2],'Gear','give',true)           
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local gear = {}
        for _,i in next, game:GetService'InsertService':LoadAsset(tonumber(args[2])):GetChildren() do
                if i:IsA'Tool' or i:IsA'HopperBin' then
                        table.insert(gear,i)
                end
        end
        for _,i in next, player do
                pcall(function()
                        for _,v in next, gear do
                                v:Clone().Parent = i.Backpack
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Gave gear '..game:GetService'MarketplaceService':GetProductInfo(tonumber(args[2])).Name..' to '..Quantum.Functions.Unpack(player)..'.')
end)
 
Quantum.Functions.AddCommand('Give sword',{'sword','swrd'},1,{'sword','player'},function(args,sender)
        Quantum.Functions.RawExeCmd(true,'gear',{args[1] or nil,'125013769'},sender)
end)
 
Quantum.Functions.AddCommand('Get rank in group',{'rank','rnk','getrank'},1,{'rank','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','get rank')
        Quantum.Functions.Assert(args[2],'Group','get rank in',true)
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local getrank = {}
        for _,i in next, player do
                pcall(function()
                        table.insert(getrank,i.Name..': ['..i:GetRankInGroup(tonumber(args[2]))..'] '..i:GetRoleInGroup(tonumber(args[2])))
                end)
        end
        if #getrank > 1 then
                Quantum.Functions.DisplayScrollFrame(sender,getrank,"Ranks")
        else
                Quantum.Functions.Tell(sender,getrank[1])
        end
end)
 
Quantum.Functions.AddCommand('Get previous usernames',{'previoususernames','puser','prevnames','prevuser','alluser'},1,{'prevnames','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','get previous usernames')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)[1]
        Quantum.Functions.DisplayScrollFrame(sender,Quantum.Functions.PreviousUsernames(player.userId),'All Usernames for '..player.Name)
end)
 
Quantum.Functions.AddCommand('Get age',{'age','getage'},1,{'age','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','get age')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local getage = {}
        for _,i in next, player do
                pcall(function()
                        table.insert(getage,i.Name..": "..i.AccountAge)
                end)
        end
        if #getage > 1 then
                Quantum.Functions.DisplayScrollFrame(sender,getage,"Ages")
        else
                Quantum.Functions.Tell(sender,getage[1])
        end
end)
 
Quantum.Functions.AddCommand('Give laser',{'laser','lazer'},1,{'laser','player'},function(args,sender)
        Quantum.Functions.RawExeCmd(true,'gear',{args[1] or nil,'130113146'},sender)
end)
 
Quantum.Functions.AddCommand('Clear starter pack',{'cstarter'},1,{'cstarter'},function(none,sender)
        game.StarterPack:ClearAllChildren()
        Quantum.Functions.Tell(sender,'Cleared starter pack.')
end)
 
Quantum.Functions.AddCommand('Add tools to starter pack',{'starter'},1,{'starter','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','add tools to starter pack')         
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i.Backpack:GetChildren() do
                                if v:IsA'Tool' or v:IsA'HopperBin' then
                                        v:Clone().Parent = game.StarterPack
                                end
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Added the tools of '..Quantum.Functions.Unpack(player)..' to starter pack.')
end)
 
Quantum.Functions.AddCommand('Stealtools',{'stealtools','st'},1,{'stealtools','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','steal tools from')          
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local tools = {}
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i.Backpack:GetChildren() do
                                if v:IsA'Tool' or v:IsA'HopperBin' then
                                        table.insert(tools,v)
                                end
                        end
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'Tool' or v:IsA'HopperBin' then
                                        table.insert(tools,v)
                                end
                        end
                end)
        end
        for _,i in next, tools do
                pcall(function()
                        i:Clone().Parent = sender.Backpack
                end)
        end
        Quantum.Functions.Return(sender,'Stole tools from ',player)
end)
 
Quantum.Functions.AddCommand('Remove tools',{'removetools','rtools'},1,{'rtools','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','remove tools from')         
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        i.Backpack:ClearAllChildren()
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'Tool' or v:IsA'HopperBin' then
                                        v:Destroy()
                                end
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Removed tools from ',player)
end)
 
Quantum.Functions.AddCommand('Give',{'give'},1,{'give','player','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','give tools')
        Quantum.Functions.Assert(args[2],'Tools','give player')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local build = Quantum.Functions.Buildstring(args,1)
        local tools = {}
        local function search(d)
                for _,i in next, d:GetChildren() do
                        if i:IsA'Tool' or i:IsA'HopperBin' then
                                table.insert(tools,i)
                        end
                end
        end
        search(game.Lighting)
        search(game:GetService'ReplicatedStorage')
        search(game:GetService'ServerStorage')
        local gottools = {}
        for _,v in next, Quantum.Functions.Split(build,',') do
                if build ~= 'all' and build ~= '*' then
                        for _,i in next, tools do
                                if i.Name:sub(1,string.len(v)):lower() == v:lower() then
                                        table.insert(gottools,i)
                                end
                        end
                else
                        for _,i in next, tools do
                                table.insert(gottools,i)
                        end
                end
        end
        if gottools == {} then error'No tools found!' end
        for _,i in next, player do
                pcall(function()
                        for _,v in next, gottools do
                                v:Clone().Parent = i.Backpack
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Gave '..Quantum.Functions.Unpack(gottools)..' to '..Quantum.Functions.Unpack(player)..'.')
end)
 
Quantum.Functions.AddCommand('Set walkspeed',{'walkspeed','ws'},1,{'walkspeed','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','change walkspeed')
        Quantum.Functions.Assert(args[2],'Speed','set',true)                   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).WalkSpeed = args[2]
                end)
        end
        Quantum.Functions.Tell(sender,'Changed walkspeed of '..Quantum.Functions.Unpack(player)..' to '..args[2]..'.')
end)
 
Quantum.Functions.AddCommand('Place',{'place','ptele'},2,{'place','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','teleport to place')         
        Quantum.Functions.Assert(args[2],'Place','teleport to',true)   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local place
        for _,i in next, player do
                pcall(function()
                        place = Quantum.Functions.Place(args[2],i)
                end)
        end
        Quantum.Functions.Tell(sender,'Placed '..Quantum.Functions.Unpack(player)..' to '..place..'.')
end)
 
Quantum.Functions.AddCommand('Rejoin',{'rejoin','rj'},2,{'rj','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','rejoin')            
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        if Quantum.Settings.Place == 'oxcool' then
                                Quantum.Functions.Place(109505698,i)
                        else
                                Quantum.Functions.Place(game.PlaceId,i)
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Rejoined ',player)
end)
 
Quantum.Functions.AddCommand('ForceField',{'ff','forcefield'},1,{'ff','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','forcefield')        
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Instance.new("ForceField",i.Character)
                end)
        end
        Quantum.Functions.Return(sender,'ForceFielded ',player)
end)
 
Quantum.Functions.AddCommand('Un ForceField',{'unff','unforcefield'},1,{'unff','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','unforcefield')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        while i.Character:FindFirstChild("ForceField") do
                                i.Character:FindFirstChild("ForceField"):Destroy()
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Un ForceFielded ',player)
end)
 
Quantum.Functions.AddCommand('Private Message',{'pm','pmessage'},1,{'pm','player','string','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','message')   
        Quantum.Functions.Assert(args[2],'Message','send')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local color = Quantum.Functions.GetColor(tags,true)
        for _,i in next, player do
                Quantum.Functions.DisplayMessage(i,Quantum.Functions.Buildstring(args,1),'://PRIVATE MESSAGE FROM '..sender.Name:upper(),5,color)
        end
        Quantum.Functions.Return(sender,'Messaged ',player)
end)
 
Quantum.Functions.AddCommand('Private Message (frame)',{'msg'},1,{'msg','player','string','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','message')   
        Quantum.Functions.Assert(args[2],'Message','send')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local color = Quantum.Functions.GetColor(tags,true)
        for _,i in next, player do
                Quantum.Functions.DisplayCloseableFrame(i,Quantum.Functions.Buildstring(args,1),'://PRIVATE MESSAGE FROM '..sender.Name:upper(),color)
        end
        Quantum.Functions.Return(sender,'Messaged ',player)
end)
 
Quantum.Functions.AddCommand('Message',{'m','message'},1,{'m','string','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Message','display')  
        local color = Quantum.Functions.GetColor(tags,true)
        Quantum.Functions.DisplayMessageAll(Quantum.Functions.Buildstring(args),'://MESSAGE FROM '..sender.Name:upper(),3,color)
end)
 
Quantum.Functions.AddCommand('System Message',{'sm','smessage'},1,{'sm','string','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'System message','display')   
        local color = Quantum.Functions.GetColor(tags,true)
        Quantum.Functions.DisplayMessageAll(Quantum.Functions.Buildstring(args),'://QUANTUM SYSTEM MESSAGE',3,color,BrickColor.new'Really red')
end)
 
Quantum.Functions.AddCommand('Hint',{'h','hint'},1,{'h','string','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Hint','display')     
        local color = Quantum.Functions.GetColor(tags,true)
        Quantum.Functions.TellAll(sender.Name..': '..Quantum.Functions.Buildstring(args),3,color)
end)
 
Quantum.Functions.AddCommand('Un fire',{'unfire'},1,{'unfire','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','unfire')    
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        while i.Character.Torso:FindFirstChild("Fire") do
                                i.Character.Torso:FindFirstChild("Fire"):Destroy()
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Removed fire from ',player)
end)
 
Quantum.Functions.AddCommand('Fix lighting',{'fl','fixlighting'},1,{'fl'},function(none,sender)
        Quantum.Functions.FixLighting()
        Quantum.Functions.Tell(sender,'Fixed lighting.')
end)
 
Quantum.Functions.AddCommand('Un sparkles',{'unsparkles','unsparklez','unspark'},1,{'unsparkles','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','remove sparkles from')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        while i.Character.Torso:FindFirstChild("Sparkles") do
                                i.Character.Torso:FindFirstChild("Sparkles"):Destroy()
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Removed sparkles from ',player)
end)
 
Quantum.Functions.AddCommand('Reset stats',{'resetstats','rs'},1,{'rs','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','reset stats')       
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i:FindFirstChild'leaderstats':GetChildren() do
                                if v:IsA'IntValue' or v:IsA'StringValue' or v:IsA'BoolValue' or v:IsA'IntConstrainedValue' or v:IsA'DoubleConstrainedValue' or v:IsA'NumberValue' and tonumber(v.Value) then
                                        v.Value = 0
                                end
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Reset stats of ',player)
end)
 
Quantum.Functions.AddCommand('Reload character',{'reload','rl'},1,{'reload','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','reload')    
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.Reload(i)
                end)
        end
        Quantum.Functions.Return(sender,'Reloaded ',player)
end)
 
Quantum.Functions.AddCommand('Neutral',{'neutral'},1,{'neutral','player','|not'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','make neutral')              
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        if tags and tags[1] == 'n' or tags[1] == 'not' then
                for _,i in next, player do
                        pcall(function()
                                i.Neutral = false
                        end)
                end
        else   
                for _,i in next, player do
                        ypcall(function()
                                i.Neutral = true
                        end)
                end
        end
        Quantum.Functions.Tell(sender,'Made '..Quantum.Functions.Unpack(player)..' neutral.')
end)
 
Quantum.Functions.AddCommand('Create team',{'cteam','createteam'},1,{'cteam','true/false(AutoAssignable)','name','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'AutoAssignable setting','set')       
        Quantum.Functions.Assert(args[2],'Team name','set')    
        local color = Quantum.Functions.GetColor(tags,true)
        local auto
        local build = Quantum.Functions.Buildstring(args,1)
        local team = create("Team"){Parent = game.Teams; Name = build; TeamColor = color or BrickColor.new(); AutoAssignable = toboolean(args[1])}
        Quantum.Functions.Tell(sender,'Created team '..build..'.')
end)
 
Quantum.Functions.AddCommand('Remove team',{'rteam','removeteam'},1,{'rteam','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Team','remove')
        local foundteam
        if args[1] == 'all' then
                game.Teams:ClearAllChildren()
                Quantum.Functions.Tell(sender,'Removed all teams.')
                return
        else
                for _,i in next, game.Teams:GetTeams() do
                        pcall(function()
                                if i.Name:sub(1,string.len(args[1])):lower() == args[1]:lower() then
                                        if not foundteam then
                                                foundteam = i
                                        else
                                                error(args[2]..' is ambiguous!')
                                        end
                                end
                        end)
                end
        end
        foundteam:Destroy()
        Quantum.Functions.Tell(sender,'Removed team '..foundteam.Name..'.')
end)
 
Quantum.Functions.AddCommand('Change team',{'team'},1,{'team','player','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','change team')       
        Quantum.Functions.Assert(args[2],'Team','change player to')    
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local foundteam
        for _,i in next, game.Teams:GetTeams() do
                pcall(function()
                        if i.Name:sub(1,string.len(args[2])):lower() == args[2]:lower() then
                                if not foundteam then
                                        foundteam = i
                                else
                                        error(args[2]..' is ambiguous!')
                                end
                        end
                end)
        end
        for _,i in next, player do
                pcall(function()
                        i.Neutral = false
                        i.TeamColor = foundteam.TeamColor
                end)
        end
        Quantum.Functions.Tell(sender,'Change the team of '..Quantum.Functions.Unpack(player)..' to '..foundteam.Name..'.')
end)
 
Quantum.Functions.AddCommand('Change leaderboard stats',{'change'},1,{'change','player','string','string/number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','change stats')      
        Quantum.Functions.Assert(args[2],'Score','change')
        Quantum.Functions.Assert(args[3],'Value','change stat to')             
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local found
        for _,i in next, player do
                pcall(function()
                        found = nil
                        for _,v in next, i:FindFirstChild'leaderstats':GetChildren() do
                                if v.Name:sub(1,string.len(args[2])):lower() == args[2]:lower() then
                                        if not found then
                                                found = v
                                                v.Value = args[3]
                                        else
                                                error(args[2]..' is ambiguous!')
                                        end
                                end
                        end
                end)
        end
        if found then
                Quantum.Functions.Tell(sender,'Changed the '..found.Name..' of '..Quantum.Functions.Unpack(player)..' to '..args[3]..'.')
        else
                Quantum.Functions.Tell(sender,'Couldn\'t find status!')
        end
end)
 
Quantum.Functions.AddCommand('Unlock player',{'unlock'},1,{'unlock','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','unlock')    
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'Part' then
                                        v.Locked = false
                                end
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Unlocked ',player)
end)
 
Quantum.Functions.AddCommand('Lock player',{'lock'},1,{'lock','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','lock')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        for _,v in next, i.Character:GetChildren() do
                                if v:IsA'Part' then
                                        v.Locked = true
                                end
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Locked ',player)
end)
 
Quantum.Functions.AddCommand('Kill',{'kill','break','breakjoints'},1,{'kill','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','kill')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        i.Character:BreakJoints()
                end)
        end
        Quantum.Functions.Return(sender,'Killed ',player)
end)
 
Quantum.Functions.AddCommand('Sit',{'sit'},1,{'sit','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','sit')       
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).Sit = true
                end)
        end
        Quantum.Functions.Return(sender,'Sat ',player)
end)
 
Quantum.Functions.AddCommand('Ungod',{'ungod'},1,{'ungod','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','ungod')     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).MaxHealth = 100
                        Quantum.Functions.GetHumanoid(i.Character).Health = 100
                end)
        end
        Quantum.Functions.Return(sender,'Ungodded ',player)
end)
 
Quantum.Functions.AddCommand('God',{'god'},1,{'god','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','god')       
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).MaxHealth = math.huge
                        Quantum.Functions.GetHumanoid(i.Character).Health = math.huge
                end)
        end
        Quantum.Functions.Return(sender,'Godded ',player)
end)
 
Quantum.Functions.AddCommand('Teleport',{'tp','teleport'},1,{'teleport','player','(player)','|to','|move'},function(args,sender,tags)
        if tags and tags[1] == 't' or tags[1] == 'to' then
                Quantum.Functions.Assert(args[1],'Player','to teleport')       
                local player = Quantum.Functions.GetPlayerFromString(args[1],sender)[1]
                if tags[2] == 'm' or tags[2] == 'move' then
                        sender.Character:MoveTo(player.Character.Torso.Position)
                else
                        sender.Character.Torso.CFrame = player.Character.Torso.CFrame          
                end
                Quantum.Functions.Tell(sender,'Teleported you to '..player.Name..'.')
        else
                Quantum.Functions.Assert(args[1],'Player','teleport')
                Quantum.Functions.Assert(args[2],'Player','to teleport')
                local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                local playertarget = Quantum.Functions.GetPlayerFromString(args[2],sender)[1]
                for _,i in next, player do
                        pcall(function()
                                if tags and tags[1] == 'm' or tags[1] == 'move' then
                                        i.Character:MoveTo(playertarget.Character.Torso.Position)
                                else
                                        i.Character.Torso.CFrame = playertarget.Character.Torso.CFrame
                                end
                        end)
                end
        end
end)
 
Quantum.Functions.AddCommand('Respawn',{'respawn','resp','repsawn'},1,{'respawn','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','respawn')   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        i:LoadCharacter()
                end)
        end
        Quantum.Functions.Return(sender,'Respawned ',player)
end)
 
Quantum.Functions.AddCommand('Show commands',{'cmds','commands','help'},1,{'cmds'},function(none,sender)
        Quantum.Functions.GetCommands(sender)
end)
 
Quantum.Functions.AddCommand('Explode',{'explode','expl','exp'},1,{'explode','player','(number)radius','(number)pressure'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','explode')   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        create("Explosion"){Parent = i.Character, Position = i.Character.Torso.Position; BlastRadius = args[2] or 4;BlastPressure = args[3] or 500000}
                end)
        end
        Quantum.Functions.Return(sender,'Exploded ',player)
end)
 
Quantum.Functions.AddCommand('Clean workspace',{'clean'},1,{'clean'},function(none,sender)
        for _,i in next, Quantum.Tables.Garbage do
                pcall(function()
                        i:Destroy()
                end)
        end
        Quantum.Tables.Garbage = {}
        for _,i in next, workspace:GetChildren() do
                if i:IsA'Hat' then
                        i:Destroy()
                end
        end
        Quantum.Functions.Tell(sender,'Cleaned workspace!')
end)
 
Quantum.Functions.AddCommand('Clone player',{'clone'},1,{'clone','player','|cframe'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','clone')     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        local c
                        i.Character.Archivable = true
                        c = i.Character:Clone()
                        c.Parent = workspace
                        if not tags[1] or tags[1] and tags[1] ~= 'c' and tags[1] ~= 'cframe' then
                                c:MoveTo(i.Character.Torso.Position)                   
                        end
                        table.insert(Quantum.Tables.Garbage,c)
                end)
        end
        Quantum.Functions.Return(sender,'Cloned ',player)
end)
 
Quantum.Functions.AddCommand('Setrank',{'setrank','setr'},2,{'setrank','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','setrank')   
        Quantum.Functions.Assert(args[2],'Rank','set player',true)     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        if Quantum.Functions.CompareRank(sender,i) then
                                if Quantum.Functions.GetRank(sender.Name) > tonumber(args[2]) or Quantum.Functions.GetRank(sender.Name) == 3 then
                                        Quantum.Players[i.Name].Rank = tonumber(args[2])
                                        Quantum.Functions.Tell(i,string.format('%s has changed your rank to %s.',sender.Name,args[2]))
                                end
                        else
                                player[_] = nil
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Set rank of '..Quantum.Functions.Unpack(player)..' to '..args[2]..'.')
end)
 
Quantum.Functions.AddCommand('Kick',{'kick','boot'},2,{'kick','player','|destroy'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','kick')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        if Quantum.Functions.CompareRank(sender,i) then
                                if tags and tags[1] == "d" or tags[1] == "r" then
                                        Quantum.Functions.Kick(i,true)                 
                                else
                                        Quantum.Functions.Kick(i)
                                end
                        else
                                player[_] = nil
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Kicked ',player)
end)
 
Quantum.Functions.AddCommand('Ban',{'ban'},2,{'ban','player','|offline','|destroy'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','ban')       
        if tags and tags[1] == 'o' or tags[1] == 'offline' then
                pcall(function()
                        if not Quantum.Functions.GetOfflinePlayer(args[1],true) then
                                for _,i in next, Quantum.Functions.Split(args[1],',') do
                                        Quantum.Functions.AddPlayer(i,-1)
                                end
                                Quantum.Functions.Tell(sender,'Banned '..args[1]..'.')
                        else
                                local player = Quantum.Functions.GetOfflinePlayer(args[1])
                                for _,i in next, player do
                                        if Quantum.Functions.CompareRank(sender,i) then
                                                Quantum.Players[i.Name].Rank = -1
                                        else
                                                player[_] = nil
                                        end
                                end
                                Quantum.Functions.Return(sender,'Banned ',player)
                        end
                end)
        else
                pcall(function()
                        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                        for _,i in next, player do
                                if Quantum.Functions.CompareRank(sender,i) then
                                        if tags and tags[1] == 'd' or tags[1] == 'destroy' then
                                                Quantum.Functions.Kick(i,true)
                                        else
                                                Quantum.Functions.Kick(i)
                                        end
                                        Quantum.Players[i.Name].Rank = -1
                                else
                                        player[_] = nil
                                end
                                Quantum.Functions.Return(sender,'Banned ',player)
                        end
                end)
        end
end)
 
Quantum.Functions.AddCommand('Crash ban',{'cban','cb','crashban'},2,{'cban','player','|offline'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','crashban')  
        if tags and tags[1] == 'o' or tags[1] == 'offline' then
                pcall(function()
                        if not Quantum.Functions.GetOfflinePlayer(args[1],true) then
                                for _,i in next, Quantum.Functions.Split(args[1],',') do
                                        Quantum.Functions.AddPlayer(i,-2)
                                end
                                Quantum.Functions.Tell(sender,'Crash banned '..args[1]..'.')
                        else
                                local player = Quantum.Functions.GetOfflinePlayer(args[1])
                                for _,i in next, player do
                                        if Quantum.Functions.CompareRank(sender,i) then
                                                Quantum.Functions.Crash(i)
                                                Quantum.Players[i.Name].Rank = -2
                                        else
                                                player[_] = nil
                                        end
                                end
                                Quantum.Functions.Return(sender,'Crash banned ',player)
                        end
                end)
        else
                pcall(function()
                        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                        for _,i in next, player do
                                if Quantum.Functions.CompareRank(sender,i) then
                                        Quantum.Functions.Crash(i)
                                        Quantum.Players[i.Name].Rank = -2
                                else
                                        player[_] = nil
                                end
                        end
                        Quantum.Functions.Return(sender,'Crash banned ',player)
                end)
        end
end)
 
Quantum.Functions.AddCommand('Search music',{'searchm','search','musicsearch','smusic'},1,{'searchm','string'},function(args,sender)
        Quantum.Functions.SearchMusic(args,sender)
end)
 
Quantum.Functions.AddCommand('Music',{'music','play'},1,{'music','(string/number)','|number(pitch)'},function(args,sender,tags)
        local build = Quantum.Functions.Buildstring(args)
        local found
        if not args[1] and Quantum.Settings.Music and tags and tonumber(tags[1]) then
                local change = (tonumber(tags[1])-Quantum.Settings.Music.Pitch)/30
                for i=1, 30 do
                        Quantum.Settings.Music.Pitch = Quantum.Settings.Music.Pitch+change
                        wait(0.07)
                end
                Quantum.Settings.Music.Pitch = tonumber(tags[1])
                Quantum.Functions.Tell(sender,'Changed pitch to '..tags[1]..'.')
                return
        end
        if args[1] == 'stop' then
                if Quantum.Settings.Music then
                        pcall(function()
                                Quantum.Settings.Music:Pause()
                        end)
                        Quantum.Functions.Tell(sender,'Stopped music!')
                else
                        Quantum.Functions.Tell(sender,'No music is playing.')          
                end
        else
                local soundid = nil
                if tonumber(build) then
                        found = build
                else
                        for i,v in next, Quantum.Tables.Music do
                                if i:sub(1,string.len(build)):lower() == build:lower() then
                                        if not found then
                                                found = v
                                        else
                                                error(build..' is ambiguous!')
                                        end
                                end
                        end    
                end
                if not found then error'Couldn\'t find sound!' end
                if Quantum.Settings.Music then
                        pcall(function()
                                Quantum.Settings.Music:Pause()
                        end)
                end
                Quantum.Settings.Music = create("Sound"){Parent = workspace, Name = 'QuantumSound', SoundId = 'http://roblox.com/asset/?id='..tostring(found), Volume = 1, Pitch = tonumber(tags[1]) or 1}
                Quantum.Settings.Music:Play()
                Quantum.Functions.TellAll('Now Playing - '..game:GetService'MarketplaceService':GetProductInfo(found).Name)
        end
end)
 
Quantum.Functions.AddCommand('Mute',{'mute'},2,{'mute','player','|offline'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','mute')      
        if tags and tags[1] == 'o' or tags[1] == 'offline' then
                pcall(function()
                        if not Quantum.Functions.GetOfflinePlayer(args[1],true) then
                                for _,i in next, Quantum.Functions.Split(args[1],',') do
                                        Quantum.Functions.AddPlayer(i,0,true)
                                end
                                Quantum.Functions.Tell(sender,'Muted '..args[1]..'.')
                        else
                                local player = Quantum.Functions.GetOfflinePlayer(args[1])
                                for _,i in next, player do
                                        if Quantum.Functions.CompareRank(sender,i) then
                                                Quantum.Functions.Mute(i)
                                                Quantum.Players[i.Name].Muted = true
                                        else
                                                player[_] = nil
                                        end
                                end
                                Quantum.Functions.Return(sender,'Muted ',player)
                        end
                end)
        else
                pcall(function()
                        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                        for _,i in next, player do
                                if Quantum.Functions.CompareRank(sender,i) then
                                        Quantum.Functions.Mute(i)
                                        Quantum.Players[i.Name].Muted = true
                                else
                                        player[_] = nil
                                end
                                Quantum.Functions.Return(sender,'Muted ',player)
                        end
                end)
        end
end)
 
Quantum.Functions.AddCommand('Unmute',{'unmute'},2,{'unmute','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','unmute')    
        local player = Quantum.Functions.GetOfflinePlayer(args[1])     
        for _,i in next, player do
                pcall(function()
                        if i.Muted then
                                i.Muted = false
                                if game:GetService'Players':FindFirstChild(i.Name) then
                                        Quantum.Functions.Unmute(game:GetService'Players':FindFirstChild(i.Name))
                                end
                        elseif game:GetService'Players':FindFirstChild(i.Name) then
                                Quantum.Functions.Unmute(game:GetService'Players':FindFirstChild(i.Name))
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Unmuted ',player)
end)
 
Quantum.Functions.AddCommand('Music list',{'mlist','musiclist'},1,{'mlist'},function(none,sender)
        local got = {}
        for i,v in orderedNext, Quantum.Tables.Music do
                table.insert(got,i..' ('..v..')')
        end
        Quantum.Functions.DisplayScrollFrame(sender,got,'Music List')
end)
 
Quantum.Functions.AddCommand('Get admins',{'admins'},1,{'admins'},function(none,sender)
        local players = {'3 = Ultra Admin','2 = Super Admin','1 = Admin','\n'}
        for i,v in orderedNext, Quantum.Players do
                pcall(function()
                        if v.Rank > 0 and v.Muted == false then
                                table.insert(players,i..': '..v.Rank)
                        elseif v.Rank > 0 and v.Muted == true then
                                table.insert(players,i..': '..v.Rank..' (Muted)')
                        end
                end)
        end
        Quantum.Functions.DisplayScrollFrame(sender,players,'Admins')
end)
 
Quantum.Functions.AddCommand('Get banned',{'banned'},1,{'banned'},function(none,sender)
        local players = {'-1 = Banned','-2 = Crash banned','\n'}
        for i,v in orderedNext, Quantum.Players do
                pcall(function()
                        if v.Rank < 0 and v.Muted == false then
                                table.insert(players,i..': '..v.Rank)
                        elseif v.Muted == true then
                                table.insert(players,i..': '..v.Rank..' (Muted)')
                        end
                end)
        end
        Quantum.Functions.DisplayScrollFrame(sender,players,'Banned')
end)
 
Quantum.Functions.AddCommand('Get ranked',{'ranked','getranked'},1,{'ranked','|all'},function(none,sender,tags)
        local players = {'3 = Ultra Admin','2 = Super Admin','1 = Admin','0 = Regular','-1 = Banned','-2 = Crash banned','\n'}
        if tags and tags[1] == 'a' or tags[1] == 'all' then
                for i,v in orderedNext, Quantum.Players do
                        pcall(function()
                                if v.Muted == false then
                                        table.insert(players,i..': '..v.Rank)
                                elseif v.Muted == true then
                                        table.insert(players,i..': '..v.Rank..' (Muted)')
                                end
                        end)
                end
        else
                for i,v in orderedNext, Quantum.Players do
                        pcall(function()
                                if v.Rank ~= 0 and v.Muted == false then
                                        table.insert(players,i..': '..v.Rank)
                                elseif v.Muted == true then
                                        table.insert(players,i..': '..v.Rank..' (Muted)')
                                end
                        end)
                end
        end
        Quantum.Functions.DisplayScrollFrame(sender,players,'Ranked')
end)
 
Quantum.Functions.AddCommand('Un crashban',{'uncban','uncb','uncrashban'},2,{'uncban','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','un crashban')       
        local player = Quantum.Functions.GetOfflinePlayer(args[1])     
        for _,i in next, player do
                pcall(function()
                        if i.Rank == -2 then
                                i.Rank = 0
                        else
                                player[_] = nil
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Un crashbanned ',player)
end)
 
Quantum.Functions.AddCommand('Crash',{'crash'},2,{'crash','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','crash')     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.Crash(i)
                end)
        end
        Quantum.Functions.Return(sender,'Crashed ',player)
end)
 
Quantum.Functions.AddCommand('Destroy instances of type',{'rtype','removetype','destroy','dtype'},1,{'dtype','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Type of instance','destroy')         
        for _,i in next, workspace:GetChildren() do
                pcall(function()
                        if i:IsA(args[1]) then
                                i:Destroy()
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Destroyed all instances of type '..args[1]..'.')
end)
 
Quantum.Functions.AddCommand('Unban',{'unban'},2,{'unban','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','unban')     
        local player = Quantum.Functions.GetOfflinePlayer(args[1])     
        for _,i in next, player do
                pcall(function()
                        if i.Rank == -1 then
                                i.Rank = 0
                        else
                                player[_] = nil
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Unbanned ',player)
end)
 
Quantum.Functions.AddCommand('Damage',{'damage','dmg'},1,{'dmg','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','damage')    
        Quantum.Functions.Assert(args[2],'Damage','deal',true) 
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).Health = Quantum.Functions.GetHumanoid(i.Character).Health - args[2]
                end)
        end
        Quantum.Functions.Tell(sender,'Damaged '..Quantum.Functions.Unpack(player)..' by '..args[2]..'.')
end)
 
Quantum.Functions.AddCommand('Shutdown',{'sd','shutdown'},2,{'shutdown'},function(none,sender)
        Quantum.Functions.Tell(sender,'Shutting down...')
        wait(0.5)
        Quantum.Functions.Shutdown()
end)
 
Quantum.Functions.AddCommand('Disable_G',{'disableg','dg','disable_g'},1,{'disableg'},function(none,sender)
        setmetatable(_G,{__newindex = function() error("_G is disabled!") end})
        Quantum.Functions.Tell(sender,'Disabled _G')
end)
 
Quantum.Functions.AddCommand('Lock_G',{'lockg','lg','lock_g'},1,{'lockg'},function(none,sender)
        setmetatable(_G, {__metatable = 'Locked'})
        Quantum.Functions.Tell(sender,'Locked _G')
end)
 
Quantum.Functions.AddCommand('Enable_G',{'enablg','eg','enable_g'},1,{'enableg'},function(none,sender)
        setmetatable(_G,_G)
        Quantum.Functions.Tell(sender,'Enabled _G')
end)
 
Quantum.Functions.AddCommand('Clear_G',{'clearg','cg','clear_g'},1,{'clearg'},function(none,sender)
        for i in next, _G do
                _G[i] = nil
        end
        Quantum.Functions.Tell(sender,'Cleared _G')
end)
 
Quantum.Functions.AddCommand('Get_G',{'getg','gg','get_g'},1,{'getg'},function(none,sender)
        for i,v in next, _G do
                print(i,v)
        end
        Quantum.Functions.Tell(sender,'Got _G')
end)
 
Quantum.Functions.AddCommand('Set Health',{'health'},1,{'health','player','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','change health')     
        Quantum.Functions.Assert(args[2],'Health','change to',true)    
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        for _,i in next, player do
                pcall(function()
                        Quantum.Functions.GetHumanoid(i.Character).MaxHealth = args[2] Quantum.Functions.GetHumanoid(i.Character).Health = args[2]
                end)
        end
        Quantum.Functions.Tell(sender,'Changed health of '..Quantum.Functions.Unpack(player)..' to '..args[2]..'.')
end)
 
Quantum.Functions.AddCommand('Execute',{'exe'},3,{'exe','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'String','execute')
        local status,err = pcall(function() loadstring(Quantum.Functions.Buildstring(args))() end)
        if status then
                Quantum.Functions.Tell(sender,'Successfully executed!')
        else
                Quantum.Functions.Tell(sender,err)
        end
end)
 
Quantum.Functions.AddCommand('Stop all sounds',{'stopmusic','nosounds','nosound','soff','nos'},1,{'nosounds'},function(none,sender)
        for _,i in next, Quantum.Tables.Sounds do
                pcall(function()
                        i.Volume = 0
                end)
        end
        Quantum.Tables.Sounds = {}
        for _,i in next, Quantum.Functions.GetAllChildren(workspace) do
                if i:IsA'Sound' then
                        pcall(function()
                                i.Volume = 0
                        end)
                end
        end
        if Quantum.Settings.Music then pcall(function() Quantum.Settings.Music:Pause() end) end
        Quantum.Functions.Tell(sender,'Stopped all sounds.')
end)
 
Quantum.Functions.AddCommand('Prefix',{'prefix','pre','setprefix'},1,{'prefix','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Prefix','set')
        local build = Quantum.Functions.Buildstring(args)
        Quantum.Players[sender.Name].GLOBAL_prefix = build
        Quantum.Functions.Tell(sender,string.format('Changed your prefix to %q.',build))
end)
 
Quantum.Functions.AddCommand('Clear',{'clear','clr'},1,{'clear'},function(args,sender)
        for _,i in next, workspace:GetChildren() do
                pcall(function()
                        if not game.Players:GetPlayerFromCharacter(i) and not i:IsA'Terrain' then
                                i:Destroy()
                        end
                end)
        end
        for _,i in next, Quantum.Tables.Sounds do
                pcall(function()
                        i:Pause()
                end)
        end
        Quantum.Tables.Sounds = {}
        Quantum.Functions.FixLighting()
        Quantum.Functions.Base()
        workspace.Terrain:Clear()
        Quantum.Functions.Tell(sender,'Cleared.')
end)
 
Quantum.Functions.AddCommand('Change ambient',{'ambient','ambience','amb'},1,{'ambient','number','number','number'},function(args,sender)
        Quantum.Functions.Assert(args[1],'First number','set')
        Quantum.Functions.Assert(args[2],'Seconds number','set')
        Quantum.Functions.Assert(args[3],'Third number','set')
        game.Lighting.Ambient = Color3.new(args[1]/255,args[2]/255,args[3]/255)
        Quantum.Functions.Tell(sender,string.format('Changed ambient to %s %s %s',args[1],args[2],args[3]))
end)
 
Quantum.Functions.AddCommand('Create baseplate',{'base'},1,{'base'},function(none,sender)
        Quantum.Functions.Base()
        Quantum.Functions.Tell(sender,'Made baseplate.')
end)
 
Quantum.Functions.AddCommand('Change unremovable baseplate',{'permbase','ubase'},1,{'permbase','|off'},function(none,sender,tags)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                Quantum.Functions.Removable(game.Workspace:FindFirstChild'Baseplate')
                Quantum.Functions.Tell(sender,'Turned off permanent baseplate.')
        else
                local base = Quantum.Functions.Base()
                Quantum.Functions.Unremovable(base)
                Quantum.Functions.Tell(sender,'Turned on permanent baseplate.')
        end
end)
 
Quantum.Functions.AddCommand('Personal base',{'pbase','pb'},1,{'pbase','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','give personal base')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in pairs(player) do
                pcall(function()
                        local rndmpos = CFrame.new(math.random(1000,2000),math.random(1000,2000),math.random(1000,2000))
                        local base = Quantum.Functions.Base(rndmpos)
                        base.Name = i.Name..'-PERSONAL_BASEPLATE'      
                        i.Character:MoveTo(base.Position)
                        Quantum.Players[i.Name].Spawnlocation = i.Character.Torso.CFrame
                        Quantum.Functions.Unremovable(base)
                end)
        end
        Quantum.Functions.Return(sender,'Gave personal base to ',player)
end)
 
Quantum.Functions.AddCommand('Remove personal base',{'unpbase','unpb'},1,{'unpbase','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','remove personal base')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        local base = workspace:FindFirstChild(i.Name..'-PERSONAL_BASEPLATE')
                        Quantum.Players[i.Name].Spawnlocation = nil
                        Quantum.Functions.Removable(base)
                        i:LoadCharacter()
                end)
        end
        Quantum.Functions.Return(sender,'Removed personal base from ',player)
end)
 
Quantum.Functions.AddCommand('Set spawnpoint',{'setspawn','ss','setspawnpoint'},1,{'setspawn','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','setspawn')  
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        for _,i in next, player do
                pcall(function()
                        Quantum.Players[i.Name].Spawnlocation = i.Character.Torso.CFrame
                end)
        end
        Quantum.Functions.Return(sender,'Set the spawn of ',player)
end)
 
Quantum.Functions.AddCommand('Magic',{'magic'},1,{'magic','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','make magical')      
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)   
        local colors = {'Lime green','Really red','Toothpaste','Hot pink','Royal purple','New Yeller'}
        for _,i in next, player do
                pcall(function()
                        for n=1, 100 do
                                for _,v in next, colors do
                                        create("Sparkles"){Parent = i.Character.Torso, SparkleColor = BrickColor.new(v).Color}
                                end
                        end
                end)
        end
        Quantum.Functions.Tell(sender,'Made '..Quantum.Functions.Unpack(player)..' magical.')
end)
 
Quantum.Functions.AddCommand('Give sparkles',{'sparkles','sparklez','spark'},1,{'sparkles','player','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','give sparkles')     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local color = Quantum.Functions.GetColor(tags,true)
        for _,i in next, player do
                pcall(function()
                        create("Sparkles"){Parent = i.Character.Torso, SparkleColor = color.Color or nil}
                end)
        end    
        Quantum.Functions.Return(sender,'Gave sparkles to ',player)
end)
 
Quantum.Functions.AddCommand('Reset spawnpoint',{'rspawn','resetspawn','resetspawnpoint'},1,{'rspawn','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','reset spawnpoint')  
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        for _,i in next, player do
                Quantum.Players[i.Name].Spawnlocation = nil
        end    
        Quantum.Functions.Return(sender,'Reset spawn of ',player)
end)
 
Quantum.Functions.AddCommand('Give fire',{'fire'},1,{'fire','player','number','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','give fire') 
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local color = Quantum.Functions.GetColor(tags,true)
        for _,i in next, player do
                pcall(function()
                        create("Fire"){Parent = i.Character.Torso, Color = (color and color.Color or nil), Size = args[2] or 5}
                end)
        end    
        Quantum.Functions.Return(sender,'Gave fire to ',player)
end)
 
Quantum.Functions.AddCommand('Give pointlight',{'pointlight','light'},1,{'light','player','number(brightness)','number(range)','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','give pointlight')   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local color = Quantum.Functions.GetColor(tags,true)
        for _,i in next, player do
                pcall(function()
                        create("PointLight"){Parent = i.Character.Torso, Color = (color and color.Color or nil), Brightness = args[2] or 1; Range = args[3] or 8}
                end)
        end    
        Quantum.Functions.Return(sender,'Gave pointlight to ',player)
end)
 
Quantum.Functions.AddCommand('Unlight',{'unlight','rlight'},1,{'unlight','player'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Player','unlight')   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        for _,i in next, player do
                pcall(function()
                        while i.Character.Torso:FindFirstChild("PointLight") do
                                i.Character.Torso:FindFirstChild("PointLight"):Destroy()
                        end
                end)
        end    
        Quantum.Functions.Return(sender,'Removed pointlight from ',player)
end)
 
Quantum.Functions.AddCommand('Give smoke',{'smoke'},1,{'smoke','player','number','|color'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','give smoke')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local color = Quantum.Functions.GetColor(tags,true)
        for _,i in next, player do
                pcall(function()
                        create("Smoke"){Parent = i.Character.Torso, Color = (color and color.Color or nil), Size = args[2] or 1}
                end)
        end    
        Quantum.Functions.Return(sender,'Gave smoke to ',player)
end)
 
Quantum.Functions.AddCommand('Get colors',{'colors','getcolors','getcolor'},1,{'colors'},function(none,sender)
        Quantum.Functions.DisplayCloseableFrame(sender,table.concat(Quantum.Tables.Colors,' '),'Available Colors')
end)
 
Quantum.Functions.AddCommand('Show chat log',{'superlogs','slogs','chatlogs'},1,{'superlogs','(player)','|clear','|post'},function(args,sender,tags)
        if tags and tags[1] then
                if tags[1] == 'p' or tags[1] == 'post' then
                        if args and args[1] then
                                local plrlogs = {}
                                local player
                                if not Quantum.Functions.GetPlayerFromString(args[1],sender,true) then
                                        player = Quantum.Functions.GetOfflinePlayer(args[1])
                                else
                                        player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                                end
                                for _,i in next, player do
                                        for _,v in next, Quantum.Tables.Superlogs do
                                                if v:sub(2,string.len(i.Name)+1) == i.Name then
                                                        table.insert(plrlogs,v:sub(string.len(i.Name)+4))
                                                end
                                        end
                                end
                                Quantum.Functions.DisplayCloseableFrame(sender,Quantum.Functions.Post(plrlogs),'')
                        else
                                Quantum.Functions.DisplayCloseableFrame(sender,Quantum.Functions.Post(Quantum.Tables.Logs),'')
                        end
                elseif tags[1] == 'c' or tags[1] == 'clear' then
                        Quantum.Tables.Superlogs = {}
                        Quantum.Functions.Tell(sender,'Cleared chat log')
                end
        elseif args and args[1] then
                local plrlogs = {}
                local player
                if not Quantum.Functions.GetPlayerFromString(args[1],sender,true) then
                        player = Quantum.Functions.GetOfflinePlayer(args[1])
                else
                        player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                end
                for _,i in next, player do
                        for _,v in next, Quantum.Tables.Superlogs do
                                if v:sub(2,string.len(i.Name)+1) == i.Name then
                                        table.insert(plrlogs,v:sub(string.len(i.Name)+4))
                                end
                        end
                end
                Quantum.Functions.DisplayScrollFrame(sender,plrlogs,'Chat logs for '..player[1].Name)
        else
                Quantum.Functions.DisplayScrollFrame(sender,Quantum.Tables.Superlogs,'Chat Logs')      
        end
end)
 
Quantum.Functions.AddCommand('Name player',{'name'},1,{'name','player','string','|off'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','name')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local name = Quantum.Functions.Buildstring(args,1)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                for _,i in next, player do
                        pcall(function()
                                for _,v in next, i.Character:GetChildren() do
                                        if v:IsA'Model' and v:FindFirstChild'FakeHumanoid' then
                                                v:Destroy()
                                        end
                                end
                                i.Character.Head.Transparency = 0
                        end)
                end
                Quantum.Functions.Return(sender,'Unnamed ',player)
        else
                for _,i in next, player do
                        ypcall(function()
                                i.Character:WaitForChild'Body Colors'
                                for _,v in next, i.Character:GetChildren() do
                                        if v:IsA'Model' and v:FindFirstChild'FakeHumanoid' then
                                                v:Destroy()
                                        end
                                end
                                i.Character.Head.Transparency = 0
                                local new = i.Character.Head:Clone()
                                i.Character.Head.Transparency = 1
                                local model = Instance.new('Model',i.Character)
                                model.Name = name
                                new.Parent = model
                                local hum = Instance.new('Humanoid',model)
                                hum.Name = 'FakeHumanoid'
                                local w = Instance.new('Weld',i.Character)
                                w.Part0 = new
                                w.Part1 = i.Character.Head
                                local realhum = Quantum.Functions.GetHumanoid(i.Character)
                                realhum.Changed:connect(function(prop)
                                        hum.MaxHealth = realhum.MaxHealth
                                        hum.Health = realhum.Health
                                        if realhum.MaxHealth == math.huge then hum.MaxHealth = 0 end
                                end)
                        end)
                end
                Quantum.Functions.Tell(sender,string.format('Named %s to %q.',Quantum.Functions.Unpack(player),name))
        end
end)
 
Quantum.Functions.AddCommand('Change character',{'char'},1,{'char','player','string/number','|off'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','char')
        local target = Quantum.Functions.GetPlayerFromString(args[1],sender)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                for _,i in next, target do
                        pcall(function()
                                i.CharacterAppearance = 'http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..i.userId
                                Quantum.Functions.Reload(i)
                                Quantum.Functions.Return(sender,'Reset character of ',target)
                        end)
                end
                return
        end
        local player = Quantum.Functions.GetPlayerAll(args[2],sender)
        for _,i in next, target do
                pcall(function()
                        i.CharacterAppearance = 'http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..player
                        Quantum.Functions.Reload(i)
                        Quantum.Functions.Tell(sender,string.format('Changed the character of %s to %s.',Quantum.Functions.Unpack(target),Quantum.Functions.UsernameFromID(player)))
                end)
        end
end)
 
Quantum.Functions.AddCommand('Show command logs',{'logs','clogs','commandlogs'},1,{'logs','(player)','|clear','|post'},function(args,sender,tags)
        if tags and tags[1] then
                if tags[1] == 'p' or tags[1] == 'post' then
                        if args and args[1] then
                                local plrlogs = {}
                                local player
                                if not Quantum.Functions.GetPlayerFromString(args[1],sender,true) then
                                        player = Quantum.Functions.GetOfflinePlayer(args[1])
                                else
                                        player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                                end
                                for _,i in next, player do
                                        for _,v in next, Quantum.Tables.Logs do
                                                if v:sub(2,string.len(i.Name)+1) == i.Name then
                                                        table.insert(plrlogs,v:sub(string.len(i.Name)+4))
                                                end
                                        end
                                end
                                Quantum.Functions.DisplayCloseableFrame(sender,Quantum.Functions.Post(plrlogs),'')
                        else
                                Quantum.Functions.DisplayCloseableFrame(sender,Quantum.Functions.Post(Quantum.Tables.Logs),'')
                        end
                elseif tags[1] == 'c' or tags[1] == 'clear' then
                        Quantum.Tables.Logs = {}
                        Quantum.Functions.Tell(sender,'Cleared command logs')
                end
        elseif args and args[1] then
                local plrlogs = {}
                local player
                if not Quantum.Functions.GetPlayerFromString(args[1],sender,true) then
                        player = Quantum.Functions.GetOfflinePlayer(args[1])
                else
                        player = Quantum.Functions.GetPlayerFromString(args[1],sender)
                end
                for _,i in next, player do
                        for _,v in next, Quantum.Tables.Logs do
                                if v:sub(2,string.len(i.Name)+1) == i.Name then
                                        table.insert(plrlogs,v:sub(string.len(i.Name)+4))
                                end
                        end
                end
                Quantum.Functions.DisplayScrollFrame(sender,plrlogs,'Logs for '..player[1].Name)
        else
                Quantum.Functions.DisplayScrollFrame(sender,Quantum.Tables.Logs,'Command Logs')
        end
end)
 
Quantum.Functions.AddCommand('Lock/unlock server',{'slock','lockdown','pri'},2,{'slock','|autoload','|kick','|off'},function(none,sender,tags)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                Quantum.Settings.PrivateServer.Regular = false
                Quantum.Settings.PrivateServer.Auto = false
                Quantum.Functions.Tell(sender,'Unlocked server!')
        elseif tags and tags[1] == 'a' or tags[1] == 'autoload' then
                Quantum.Settings.PrivateServer.Regular = false         
                Quantum.Settings.PrivateServer.Auto = true
                if tags and tags[2] == 'k' or tags[2] == 'kick' then
                        for _,i in next, game.Players:GetPlayers() do
                                if not Quantum.Functions.IsAdmin(i.Name) then
                                        Quantum.Functions.Kick(i)
                                end
                        end
                end
        else
                Quantum.Settings.PrivateServer.Auto = false
                Quantum.Settings.Regular = true
                if tags and tags[2] == 'k' or tags[2] == 'kick' then
                        for _,i in next, game.Players:GetPlayers() do
                                if not Quantum.Functions.IsAdmin(i.Name) then
                                        Quantum.Functions.Kick(i)
                                end
                        end
                end
        end
end)
 
Quantum.Functions.AddCommand('Update script',{'update','updt'},3,{'update'},function(none,sender)
        Quantum.Functions.MakeScript("loadstring(game:GetService'HttpService':GetAsync'http://pastebin.com/raw.php?i=Hj6Mibe0')()",game:GetService'ServerScriptService')
        Quantum.Functions.Tell(sender,'Updating script...')
        Quantum.Functions.StopScript()
end)
 
Quantum.Functions.AddCommand('Stop script',{'stop','stopscript','removescript'},3,{'stop'},function(none,sender)
        Quantum.Functions.Tell(sender,'Stopping script...')
        Quantum.Functions.StopScript()
end)
 
Quantum.Functions.AddCommand('Make script',{'s','c','script'},2,{'s','string'},function(args,sender)
        Quantum.Functions.Assert(args[1],'Script','execute')
        local build = Quantum.Functions.Buildstring(args)
        local status,err = loadstring(build)
        if status then
                Quantum.Functions.MakeScript(Quantum.Functions.Buildstring(args),workspace)
                Quantum.Functions.Tell(sender,'Successfully made script!')
        else
                Quantum.Functions.DisplayCloseableFrame(sender,err,'Script Error')
        end
end)
 
Quantum.Functions.AddCommand('Make local script',{'ls','l','localscript'},2,{'ls','string','|player'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Local script','execute')
        if tags and tags[1] == "p" or tags[1] == "player" then
                for _,i in next, Quantum.Functions.GetPlayerFromString(args[1],sender) do
                        Quantum.Functions.MakeLocalScript(Quantum.Functions.Buildstring(args,1),i)
                end
        else
                Quantum.Functions.MakeLocalScript(Quantum.Functions.Buildstring(args),sender)
        end
end)
 
Quantum.Functions.AddCommand('Anti local',{'al','antilocal','antil'},1,{'antilocal','player','|off'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','change antilocal status')   
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        for _,i in next, player do
                if tags and tags[1] == 'o' or tags[1] == 'off' then
                        Quantum.Players[i.Name].Antilocal = false
                        Quantum.Functions.Return(sender,'Turned antilocal off for ',player)
                else
                        Quantum.Players[i.Name].Antilocal = true
                        Quantum.Functions.Return(sender,'Turned antilocal on for ',player)
                end
        end    
end)
 
Quantum.Functions.AddCommand('Anti kill',{'ak','antikill','antik'},1,{'antikill','player','|off'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','change antikill status')    
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                for _,i in next, player do
                        Quantum.Players[i.Name].Antikill.Enabled = false
                        Quantum.Players[i.Name].Spawnlocation = nil
                        if Quantum.Players[i.Name].Antikill.Humanoid then
                                Quantum.Functions.GetHumanoid(i.Character).Name = 'Humanoid'
                        end
                        Quantum.Players[i.Name].Antikill.Humanoid = false
                end
                Quantum.Functions.Return(sender,'Turned antikill off for ',player)
        else
                for _,i in next, player do
                        if not Quantum.Players[i.Name].Antikill.Enabled then
                                Quantum.Players[i.Name].Antikill.Enabled = true
                                Quantum.Players[i.Name].Ready = true
                                Quantum.Functions.GetAntikill(i)
                                if tags and tags[1] == 'h' or tags[1] == 'humanoid' then
                                        Quantum.Players[i.Name].Antikill.Humanoid = true
                                        Quantum.Functions.GetHumanoid(i.Character).Name = 'RHumanoid'
                                end
                                Quantum.Functions.GetHumanoid(i.Character).Died:connect(function()
                                        pcall(function()
                                                if Quantum.Players[i.Name].Antikill.Enabled then
                                                        i:LoadCharacter()
                                                end
                                        end)
                                end)
                                --[[i.Character.DescendantRemoving:connect(function(d)
                                        pcall(function()
                                                if d:IsA'Humanoid' and Quantum.Players[i.Name].Antikill.Enabled then
                                                        i:LoadCharacter()
                                                end
                                        end)
                                end)]]
                        end
                end
                Quantum.Functions.Return(sender,'Turned antikill on for ',player)
        end
end)
 
Quantum.Functions.AddCommand('Anti ban',{'ab','antiban','antib'},1,{'antiban','player','|off'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','change antiban status')     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        for _,i in next, player do
                if tags and tags[1] == 'o' or tags[1] == 'off' then
                        Quantum.Players[i.Name].Antiban = false
                        Quantum.Functions.Return(sender,'Turned antiban off for ',player)
                else
                        Quantum.Players[i.Name].Antiban = true
                        Quantum.Functions.Return(sender,'Turned antiban on for ',player)
                end
        end    
end)
 
Quantum.Functions.AddCommand('Fake player',{'fp','fplayer','fakeplayer'},1,{'fplayer','player','string/number','|off'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','change antiban status')     
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                for _,i in next, player do
                        pcall(function()
                                Quantum.Players[i.Name].RespawnExe = {}
                                i.CharacterAppearance = 'http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..i.userId
                                Quantum.Functions.Reload(i)
                        end)
                end
                Quantum.Functions.Return(sender,'Turned off fake player for ',player)
        else
                local id = Quantum.Functions.GetPlayerAll(Quantum.Functions.Buildstring(args,1))
                local name = Quantum.Functions.UsernameFromID(id)
                for _,i in next, player do
                        pcall(function()
                                table.insert(Quantum.Players[i.Name].RespawnExe,string.format('%sname%s|plr|%s%s',Quantum.Players[sender.Name].GLOBAL_prefix,Quantum.Settings.Bet,Quantum.Settings.Bet,name))
                                i.CharacterAppearance = 'http://www.roblox.com/Asset/CharacterFetch.ashx?userId='..id
                                Quantum.Functions.Reload(i)
                        end)
                end    
                Quantum.Functions.Tell(sender,string.format('Faked %s as %s.',Quantum.Functions.Unpack(player),name))
        end
end)
 
Quantum.Functions.AddCommand('Bubble chat all',{'bcall','bubbleall','bubblechatall'},1,{'bubblechatall','|off','|color(rgb)'},function(none,sender,tags)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                Quantum.Settings.BubblechatAll = false
                Quantum.Functions.Tell(sender,'Turned off bubblechatall.')
        elseif tags then
                Quantum.Settings.BubblechatAll = true
                if tags[1] == 'r' then
                        Quantum.Settings.BubblechatColor = 'Red'
                elseif tags[1] == 'g' then
                        Quantum.Settings.BubblechatColor = 'Green'
                elseif tags[1] == 'b' then
                        Quantum.Settings.BubblechatColor = 'Blue'
                end
                Quantum.Functions.Tell(sender,'Turned on bubblechatall.')
        end    
end)
 
Quantum.Functions.AddCommand('Bubble chat',{'bc','bubble','bubblechat'},1,{'bubblechat','player','|off','|color(rgb)'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','change bubblechat status')  
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        if tags and tags[1] == 'o' or tags[1] == 'off' then
                for _,i in next, player do
                        pcall(function()
                                Quantum.Players[i.Name].Bubblechat = false
                        end)
                end
                Quantum.Functions.Return(sender,'Turned bubblechat off for ',player)
        elseif tags then
                for _,i in next, player do
                        pcall(function()
                                Quantum.Players[i.Name].Bubblechat = true
                                if tags[1] == 'r' then
                                        Quantum.Players[i.Name].BubblechatColor = 'Red'
                                elseif tags[1] == 'g' then
                                        Quantum.Players[i.Name].BubblechatColor = 'Green'
                                elseif tags[1] == 'b' then
                                        Quantum.Players[i.Name].BubblechatColor = 'Blue'
                                end
                        end)
                end
                Quantum.Functions.Return(sender,'Turned bubblechat on for ',player)
        end    
end)
 
Quantum.Functions.AddCommand('Sudo (execute command as another player)',{'sudo'},2,{'sudo','player','command'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Player','execute command on')
        Quantum.Functions.Assert(args[2],'Command','execute')
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        local newargs = {}
        for i,v in next, args do
                if i > 2 then
                        table.insert(newargs,v)
                end
        end
        for _,i in next, player do
                pcall(function()
                        if Quantum.Functions.CompareRank(sender,i) then
                                Quantum.Functions.RawExeCmd(true,args[2],newargs,i,tags,Quantum.Functions.GetRank(sender.Name))
                        else
                                player[_] = nil                
                        end
                end)
        end
        Quantum.Functions.Return(sender,'Sudo executed as ',player)
end)
 
Quantum.Functions.AddCommand('Loop command',{'loop'},1,{'loop','times(* for until stopped)','command'},function(args,sender,tags)
        Quantum.Functions.Assert(args[1],'Times','loop')
        Quantum.Functions.Assert(args[2],'Command','loop')
        local num = 0
        if args[1] ~= '*' then
                if not tonumber(args[1]) then
                        error'Times to loop is not a number!'
                end
        end
        local loopargs = {}
        for i,v in next, args do
                if i > 2 then
                        table.insert(loopargs,v)
                end
        end
        coroutine.resume(coroutine.create(function()
                while wait(Quantum.Settings.Looptime) do
                        if not Quantum.Settings.Stoploops then
                                if args[1] == '*' then
                                        pcall(function() Quantum.Functions.RawExeCmd(true,args[2],loopargs,sender,tags) end)
                                else
                                        pcall(function() Quantum.Functions.RawExeCmd(true,args[2],loopargs,sender,tags) end)
                                        num = num+1
                                        if num >= tonumber(args[1]) then
                                                break
                                        end            
                                end
                        else
                                break
                        end
                end
        end))
end)
 
Quantum.Functions.AddCommand('Stop loops',{'stoploops','sloops'},1,{'stoploops'},function(none,sender)
        Quantum.Functions.Tell(sender,'Stopping loops...')
        Quantum.Settings.Stoploops = true
        wait(Quantum.Settings.Looptime+0.1)
        Quantum.Settings.Stoploops = false
        Quantum.Functions.Tell(sender,'Stopped loops!')
end)
 
Quantum.Functions.AddCommand('Execute on respawn',{'rexe','respawnexe','exer'},3,{'rexe','player','command ("|plr|" = player)','|clear'},function(args,sender,tags)
        local player = Quantum.Functions.GetPlayerFromString(args[1],sender)
        if tags and tags[1] == 'c' or tags[1] == 'clear' then
                for _,i in next, player do
                        Quantum.Players[i.Name].RespawnExe = {}
                end
                Quantum.Functions.Return(sender,'Cleared respawn commands of ',player)
        else
                for _,i in next, player do
                        local newtags = {}
                        for _,v in next, tags do
                                table.insert(newtags,Quantum.Settings.Tag..v)
                        end
                        table.insert(Quantum.Players[i.Name].RespawnExe,Quantum.Settings.Prefix..Quantum.Functions.Buildstring(args,1)..Quantum.Settings.Bet..Quantum.Functions.Buildstring(newtags))
                end
                Quantum.Functions.Return(sender,'Changed auto respawn commands of ',player)
        end    
end)
 
Quantum.Functions.AddCommand('Execute on respawn all',{'rexeall','respawnexeall','exerall','autoexecuterespawn'},3,{'rexeall','command','|clear'},function(args,sender,tags)
        if tags and tags[1] == 'c' or tags[1] == 'clear' then
                Quantum.Tables.RespawnExe = {}
                Quantum.Functions.Tell(sender,'Cleared auto respawn commands for all players.')
        else
                local newtags = {}
                for _,v in next, tags do
                        table.insert(newtags,Quantum.Settings.Tag..v)
                end
                table.insert(Quantum.Tables.RespawnExe,Quantum.Settings.Prefix..Quantum.Functions.Buildstring(args)..Quantum.Settings.Bet..Quantum.Functions.Buildstring(newtags))
                Quantum.Functions.Tell(sender,'Changed auto respawn commands for all players.')
        end
end)
 
Quantum.Connections.PlayerAdded = game.Players.ChildAdded:connect(function(plr)
        ypcall(function()
                Quantum.Functions.PlayerAdded(plr)
        end)
end)
 
Quantum.Connections.DescendantRemoving = game.DescendantRemoving:connect(function(descendant)
        if Quantum.Tables.Unremovable[descendant] then
                local clone = descendant:Clone()
                clone.Parent = descendant.Parent
                Quantum.Functions.Unremovable(clone)
        end
        if Quantum.Tables.Remake[descendant] and Quantum.Tables.Remake[descendant].Enabled then
                wait()         
                Quantum.Tables.Remake[descendant].Func()
        end
end)
 
Quantum.Connections.DescendantAdded = game.DescendantAdded:connect(function(d)
        pcall(function()
                if d:IsA'Sound' then
                        table.insert(Quantum.Tables.Sounds,d)
                end
        end)
end)
 
Quantum.Connections.SourceScanner = game.DescendantAdded:connect(function(d)
        ypcall(function()
                if d:IsA'LocalScript' and not Quantum.Settings.LocalScriptSource then
                        Quantum.Settings.LocalScriptSource = d
                        Quantum.Functions.TellAdmins'Found LocalScript Source'
                        for _,i in next, game.Players:GetPlayers() do
                                if Quantum.Functions.IsAdmin(i.Name) then
                                        Quantum.Functions.Cmdbar(i)
                                        Quantum.Functions.Nilsupport(i)
                                end
                        end
                elseif d:IsA'Script' and not Quantum.Settings.ScriptSource then
                        Quantum.Settings.ScriptSource = d
                        Quantum.Functions.TellAdmins'Found Script Source'
                end
                if Quantum.Settings.LocalScriptSource and Quantum.Settings.ScriptSource then
                        Quantum.Connections.SourceScanner:disconnect()
                end
        end)
end)
 
Quantum.Connections.PlayerRemoving = game.Players.PlayerRemoving:connect(function(plr)
        ypcall(function()
                coroutine.resume(coroutine.create(function()
                        if Quantum.Players[plr.Name] and Quantum.Players[plr.Name].Antiban == true then
                                local start = tick()
                                local m = Instance.new('Message',workspace)
                                local h = Instance.new('Hint',workspace)
                                game:GetService'RunService'.Heartbeat:connect(function()
                                        ypcall(function()
                                                if m then
                                                        m.Text = string.format('[QUANTUM ANTIBAN] '..plr.Name..' was kicked or banned! Shutdown in %.2d seconds!',Quantum.Settings.Antitimer - (tick() - start))
                                                else
                                                        m = Instance.new('Message',workspace)
                                                end
                                                if h then
                                                        h.Text = string.format('[QUANTUM ANTIBAN] '..plr.Name..' was kicked or banned! Shutdown in %.2d seconds!',Quantum.Settings.Antitimer - (tick() - start))
                                                else
                                                        h = Instance.new('Hint',workspace)
                                                end
                                        end)
                                end)
                        end
                end))
                local t = {}
                for i,v in next, Quantum.Players[plr.Name] do
                        if i:sub(1,7) == 'GLOBAL_' then
                                t[i] = v
                        end
                end
                Quantum.Functions.UpdateStorage(t,plr.Name)
        end)
end)
 
Quantum.Functions.PlayerAdded = function(plr)
        ypcall(function()
                if plr:IsA("Player") then
                        plr:WaitForDataReady()
                        if plr.AccountAge < Quantum.Settings.RestrictAge then
                                Quantum.Functions.Kick(plr)
                                Quantum.Functions.TellAdmins(plr.Name..' tried to join, but their age is too low.')
                        end
                        for _,i in next, Quantum.Tables.GroupRanked do
                                for k,v in next, i do
                                        if plr:IsInGroup(k) and plr:GetRankInGroup(k) >= v.GroupRank then
                                                if Quantum.Players[plr.Name] ~= nil and Quantum.Players[plr.Name].Rank < v.AdminRank then
                                                        Quantum.Players[plr.Name].Rank = v.AdminRank
                                                elseif Quantum.Players[plr.Name] == nil then
                                                        Quantum.Functions.AddPlayer(plr.Name,v.AdminRank)
                                                end
                                        end
                                end
                        end
                        if Quantum.Functions.GetRank(plr.Name) then
                                if Quantum.Functions.GetStorage(plr.Name) then
                                        for i,v in next, Quantum.Functions.GetStorage(plr.Name) do
                                                Quantum.Players[plr.Name][i] = v
                                        end
                                end
                        end
                        if not Quantum.Functions.GetRank(plr.Name) then
                                Quantum.Functions.AddPlayer(plr.Name)
                        elseif Quantum.Functions.GetRank(plr.Name) == -2 then
                                Quantum.Functions.Crash(plr)
                                Quantum.Functions.TellAdmins(plr.Name..' tried to join and is being crashed.')
                        elseif Quantum.Functions.GetRank(plr.Name) == -1 then
                                Quantum.Functions.Kick(plr)
                                Quantum.Functions.TellAdmins(plr.Name..' tried to join but is banned.')
                        elseif Quantum.Players[plr.Name].Muted == true then
                                Quantum.Functions.Mute(plr)
                                Quantum.Functions.TellAdmins(plr.Name..' joined and is muted.')
                        elseif Quantum.Functions.IsAdmin(plr.Name) then
                                Quantum.Functions.Tell(plr,'You\'re an admin! Your rank is '..Quantum.Functions.GetRank(plr.Name)..'. Your prefix is "'..Quantum.Players[plr.Name].GLOBAL_prefix..'", the bet is "'..Quantum.Settings.Bet..'" and the tag seperator is "'..Quantum.Settings.Tag..'".') 
                                if Quantum.Settings.AutoAntiban then
                                        Quantum.Players[plr.Name].Antiban = true
                                end    
                                if Quantum.Settings.AutoAntilocal then
                                        Quantum.Players[plr.Name].Antilocal = true
                                        plr.Character.DescendantAdded:connect(function(descendant)
                                                ypcall(function()
                                                        if descendant:IsA'LocalScript' and Quantum.Players[plr.Name].Antilocal then
                                                                if Quantum.Settings.Place == "oxcool" then
                                                                        local info = descendant:FindFirstChild'Info'.Value
                                                                        if not Quantum.Functions.IsAdmin(Quantum.Functions.GetInfo(info)[1]) then
                                                                                descendant.Disabled = true
                                                                                wait()
                                                                                descendant:Destroy()
                                                                                print('Disabled script '..Quantum.Functions.GetInfo(info)[2]..' inserted by '..Quantum.Functions.GetInfo(info)[1]..' into Character.')
                                                                        end
                                                                elseif Quantum.Settings.Place == "anti" then
                                                                        local info = descendant:FindFirstChild'Owner'.Value.Name
                                                                        if not Quantum.Functions.IsAdmin(info) then
                                                                                descendant.Disabled = true
                                                                                wait()
                                                                                descendant:Destroy()
                                                                                print('Disabled script '..descendant.Name..' inserted by '..info..' into Character.')
                                                                        end
                                                                else
                                                                        descendant.Disabled = true
                                                                        wait()
                                                                        descendant:Destroy()
                                                                        print('Disabled script '..descendant.Name..' inserted into Character.')
                                                                end
                                                        end
                                                end)
                                        end)
                                end            
                                Quantum.Functions.Cmdbar(plr)
                                if Quantum.Settings.LocalScriptSource then
                                        Quantum.Functions.Nilsupport(plr)
                                end
                        end
                        if Quantum.Settings.PrivateServer.Regular then
                                if not Quantum.Functions.IsAdmin(plr.Name) then
                                        Quantum.Functions.Kick(plr)
                                end
                        end
                        if Quantum.Settings.PrivateServer.Auto then
                                if Quantum.Functions.IsAdmin(plr.Name) then
                                        plr:LoadCharacter()
                                end
                        end
                        plr.Chatted:connect(function(msg)
                                ypcall(function()
                                        Quantum.Functions.Chatted(plr,msg)
                                        if msg:sub(1,3) ~= '/e ' and msg:sub(1,7) ~= '/emote ' then
                                                if Quantum.Players[plr.Name].Bubblechat or Quantum.Settings.BubblechatAll then
                                                        if not Quantum.Players[plr.Name].Bubblechat then
                                                                game:GetService'Chat':Chat(plr.Character.Head,msg,Enum.ChatColor[Quantum.Settings.BubblechatColor])
                                                        else
                                                                game:GetService'Chat':Chat(plr.Character.Head,msg,Enum.ChatColor[Quantum.Players[plr.Name].BubblechatColor])
                                                        end
                                                end
                                        end
                                end)
                        end)
                        plr.CharacterAdded:connect(function(char)
                                ypcall(function()
                                        Quantum.Functions.CharacterAdded(char)
                                end)
                        end)
                        plr.DescendantAdded:connect(function(descendant)
                                ypcall(function()
                                        Quantum.Functions.DescendantAdded(descendant,plr)
                                end)
                        end)
                        if Quantum.Players[plr.Name].Antikill.Enabled then
                                ypcall(function()
                                        plr.Character.Humanoid.Died:connect(function()
                                                ypcall(function()
                                                        if Quantum.Players[plr.Name].Antikill.Enabled then
                                                                plr:LoadCharacter()
                                                        end
                                                end)
                                        end)
                                        plr.Character.DescendantRemoving:connect(function(d)
                                                ypcall(function()
                                                        if d:IsA'Humanoid' and Quantum.Players[plr.Name].Antikill.Enabled then
                                                                plr:LoadCharacter()
                                                        end
                                                end)
                                        end)
                                        if Quantum.Players[plr.Name].Antikill.Humanoid then
                                                Quantum.Functions.GetHumanoid(plr.Character).Name = 'RHumanoid'
                                        end
                                        pcall(function() Quantum.Players[plr.Name].Routine = nil end)
                                        Quantum.Functions.GetAntikill(plr)
                                end)
                        end
                end
        end)
end
               
Quantum.Functions.DescendantAdded = function(descendant,plr)
        pcall(function()
                if descendant:IsA'LocalScript' and Quantum.Players[plr.Name].Antilocal then
                        if Quantum.Settings.Place == "oxcool" then
                                local info = descendant:FindFirstChild'Info'.Value
                                if not Quantum.Functions.IsAdmin(Quantum.Functions.GetInfo(info)[1]) then
                                        descendant.Disabled = true
                                        wait()
                                        descendant:Destroy()
                                        print('Disabled script '..Quantum.Functions.GetInfo(info)[2]..' inserted by '..Quantum.Functions.GetInfo(info)[1]..' into '..descendant.Parent.Name..'.')
                                end
                        elseif Quantum.Settings.Place == "anti" then
                                local info = descendant:FindFirstChild'Owner'.Value.Name
                                if not Quantum.Functions.IsAdmin(info) then
                                        descendant.Disabled = true
                                        wait()
                                        descendant:Destroy()
                                        print('Disabled script '..descendant.Name..' inserted by '..info..' into '..descendant.Parent.Name..'.')
                                end
                        else
                                descendant.Disabled = true
                                wait()
                                descendant:Destroy()
                                print('Disabled script '..descendant.Name..' inserted into '..descendant.Parent.Name..'.')
                        end
                end
        end)
end    
 
Quantum.Functions.CharacterAdded = function(char)
        ypcall(function()
                local plr = game.Players:GetPlayerFromCharacter(char)
                Quantum.Players[plr.Name].Ready = false
                if Quantum.Players[plr.Name].Spawnlocation then
                        spawn(function()                       
                                ypcall(function()
                                        plr.Character:WaitForChild'Body Colors'
                                        plr.Character.Torso.CFrame = Quantum.Players[plr.Name].Spawnlocation
                                        Quantum.Players[plr.Name].Ready = true
                                end)
                        end)
                end
                if Quantum.Functions.IsAdmin(plr.Name) then
                        spawn(function()
                                wait()
                                if not Quantum.Functions.GetPlayerGui(plr):FindFirstChild'QuantumCmdbar' then
                                        Quantum.Functions.Cmdbar(plr)
                                end
                        end)
                end
                char.DescendantAdded:connect(function(descendant)
                        ypcall(function()
                                if descendant:IsA'LocalScript' and Quantum.Players[plr.Name].Antilocal then
                                        if Quantum.Settings.Place == "oxcool" then
                                                local info = descendant:FindFirstChild'Info'.Value
                                                if not Quantum.Functions.IsAdmin(Quantum.Functions.GetInfo(info)[1]) then
                                                        descendant.Disabled = true
                                                        wait()
                                                        descendant:Destroy()
                                                        print('Disabled script '..Quantum.Functions.GetInfo(info)[2]..' inserted by '..Quantum.Functions.GetInfo(info)[1]..' into Character.')                                         
                                                end
                                        elseif Quantum.Settings.Place == "anti" then
                                                local info = descendant:FindFirstChild'Owner'.Value.Name
                                                if not Quantum.Functions.IsAdmin(info) then
                                                        descendant.Disabled = true
                                                        wait()
                                                        descendant:Destroy()
                                                        print('Disabled script '..descendant.Name..' inserted by '..info..' into Character.')
                                                end
                                        else
                                                descendant.Disabled = true
                                                wait()
                                                descendant:Destroy()
                                                print('Disabled script '..descendant.Name..' inserted into Character.')
                                        end
                                end
                        end)
                end)
                --[[if Quantum.Players[plr.Name].Antikill.Enabled then
                        char.DescendantRemoving:connect(function(d)
                                ypcall(function()
                                        if d:IsA'Humanoid' and Quantum.Players[plr.Name].Antikill.Enabled then
                                                plr:LoadCharacter()
                                        end
                                end)
                        end)
                end]]
                if Quantum.Players[plr.Name].Antikill.Enabled then
                        char.Humanoid.Died:connect(function()
                                ypcall(function()
                                        if Quantum.Players[plr.Name].Antikill.Enabled then
                                                plr:LoadCharacter()
                                        end
                                end)
                        end)
                        wait(0.1)
                        if Quantum.Players[plr.Name].Antikill.Humanoid then
                                char.Humanoid.Name = 'RHumanoid'
                        end
                end
                wait()
                if #Quantum.Players[plr.Name].RespawnExe > 0 then
                        for _,i in next, Quantum.Players[plr.Name].RespawnExe do
                                Quantum.Functions.ExeCmd(i:gsub('|plr|',plr.Name),root)
                        end
                end
                if #Quantum.Tables.RespawnExe > 0 then
                        for _,i in next, Quantum.Tables.RespawnExe do
                                Quantum.Functions.ExeCmd(i:gsub('|plr|',plr.Name),root)
                        end
                end
        end)
end
       
Quantum.Functions.Chatted = function(plr,msg)
        pcall(function()
                for _,i in next, Quantum.Tables.Blacklist do
                        if msg:lower():find(i:lower()) then
                                Quantum.Functions.Kick(plr)
                                Quantum.Functions.TellAdmins(plr..' used blacklisted phrase and has been kicked.')
                        end
                end
                table.insert(Quantum.Tables.Superlogs,'['..plr.Name..'] '..msg)
                if msg:sub(1,3) == '/e ' or msg:sub(1,7) == '/emote ' then
                        table.insert(Quantum.Tables.Logs,'['..plr.Name..'] '..msg)
                end
                if msg:sub(1,3) == '/e ' then
                        msg = msg:sub(4)
                elseif msg:sub(1,7) == '/emote ' then
                        msg = msg:sub(8)
                end
                if msg:sub(1,string.len(Quantum.Players[plr.Name].GLOBAL_prefix)) == Quantum.Players[plr.Name].GLOBAL_prefix then
                        Quantum.Functions.ExeCmd(msg,plr)
                        table.insert(Quantum.Tables.Logs,'['..plr.Name..'] '..msg)
                end
        end)
end
 
Quantum.Functions.PacketReceive = function(...)
        local signal = {...}
        pcall(function()
                Quantum.Functions.Chatted(signal[1],signal[2])
        end)
end
 
Quantum.Functions.SendPacket = function(player,packet)
        Quantum.Settings.Remote:FireClient(player,packet..'['..Quantum.Settings.SECURITY_CODE..']')
end
 
Quantum.Functions.ConnectRemote = function()
        pcall(function() Quantum.Settings.Remote:Destroy() end)
        Quantum.Settings.Remote = Instance.new('RemoteEvent',game.ReplicatedStorage)
        Quantum.Settings.Remote.Name = "QuantumRemoteAccess"..Quantum.Settings.SECURITY_CODE
        game.ReplicatedStorage.ChildRemoved:connect(function(child)
                pcall(function()
                        if child == Quantum.Settings.Remote then
                                Quantum.Functions.ConnectRemote()
                        end
                end)
        end)
        Quantum.Settings.Remote.Changed:connect(function()
                pcall(function()
                        Quantum.Functions.ConnectRemote()
                end)
        end)
        Quantum.Settings.Remote.OnServerEvent:connect(function(...)
                Quantum.Functions.PacketReceive(...)
        end)
end
 
Quantum.Functions.ConnectRemote()
 
for _,i in next, game.Players:GetPlayers() do
        ypcall(function()
                Quantum.Functions.PlayerAdded(i)
        end)
end
 
print'Quantum Loaded'
