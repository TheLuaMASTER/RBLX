local Bypass = True
if Bypass then
    local i=game:service'InsertService':LoadAsset(140878711)
    local n=i:children()[1]
    game:service'Debris':AddItem(i,0)
    n.Parent=workspace
    coroutine.yield()
    local Environment
    pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()
    Environment=getfenv(2)end,__metatable='[qLock]: Locked'}))
    _G.OSC_AddServerSideData=nil
    game:service'Debris':AddItem(n,0)
    setfenv(1,Environment)
end--]]
 
local Enforcer;
rot, rot2 = .1, 0.001
 
Enforcer = {
    Ranked = {
         {["Name"] = "CoreSB", ["Rank"] = 5, ["Description"] = "Owner", ["Color"] = "Orange"};
    };  
    Commands = {};
    Tablets = {};
    Settings = {
        PrivateServer = false;
        AgeRestriction = false;
        MinimumAge = 100;
        DevMode = true;
    };
    TabSettings = {
        Neon = true;
        Wires = false;
        Size = Vector3.new(1.8, 1.8, 1.8);
        Size2 = Vector3.new(2, 2, 2);
    };
    Bet = ';';
    Rotation = 0;
    Services = {
        Workspace = game.Workspace;
        Players  = game.Players;
        Lighting = game.Lighting
    };
    Ranks = {
        {Rank = 5, Role = "Creator"};
        {Rank = 4, Role = "Scripter"};
        {Rank = 3, Role = "Best Friend"};
        {Rank = 2, Role = "Member"};
        {Rank = 1, Role = "Player"};
        {Rank = 0, Role = "Unknown/Guest"};
        {Rank = -1, Role = "Banned"};
        {Rank = -2, Role = "Lagged/Crashed"};
    };
    PriPeople = {
           {"PeroxDevelopment", "ApexDevelopment"};
    }; --ok done
};
 
function Kick(plr)
    local h=Instance.new('RemoteEvent',workspace):FireClient(plr,{string.rep("umad?",2e5+5)})
    delay(1,function()
        pcall(function() workspace.RemoteEvent:remove() end)
    end)
end
 
function Explore(p, part)
        pcall(function()
                Dismiss(p)
                if part == nil or part == game or part == workspace.Parent then
                        for _,v in pairs(Enforcer['Services']) do
                                Output(p,v.Name,getColor(p), function() Explore(p,v) end)
                        end
                else
                        for _,v in pairs(part:children()) do
                                Output(p,v.Name,getColor(p), function() Explore(p,v) end)
                        end
                        Output(p,"Currently exploring: "..part:GetFullName(),'New Yeller')
                        Output(p,"ClassName: "..part.ClassName,'New Yeller')
                        Output(p,"Destroy",'Really red', function() part:Destroy() Explore(p,part.Parent) end)
                        Output(p,"Remove",'Really red', function() part:remove() Explore(p,part.Parent) end)
                        Output(p,"Explore parent",'Bright blue', function() Explore(p,part.Parent) end)
                        Output(p,"Clone",'Institutional white', function() clonedpart = part:Clone() end)
                        Output(p,"Refresh",'Cyan', function() Explore(p,part) end)
                        if clonedpart then
                                Output(p,"Paste: "..clonedpart.Name,'Institutional white', function() clonedpart.Parent = part clonedpart = nil end)
                        end
                end
        end)
end
 
function GetPlayers(plr, msg, all)
        local plrs = {}
        if msg:match("^!") then
                return GetPlayers(plr, msg:sub(2), true)
        elseif msg == "me" then
                table.insert(plrs, plr)
        elseif msg == "all" then
                for _,v in pairs(game:service'Players':players()) do
                        if all or getRank(v) <= getRank(plr) then
                                table.insert(plrs, v)
                        end
                end
        elseif msg == "others" then
                for _,v in pairs(game:service'Players':players()) do
                        if v ~= plr then
                                if all or getRank(v) <= getRank(plr) then
                                        table.insert(plrs, v)
                                end
                        end
                end
        else
                for _,v in pairs(game:service'Players':players()) do
                        if v.Name:lower():sub(1,#msg) == msg:lower() then
                                if all or getRank(v) <= getRank(plr) then
                                        table.insert(plrs, v)
                                end
                        end
                end
        end
        return plrs
end
 
function Dismiss(Player)
     table.foreach(Enforcer.Tablets,function(i,v)
         if v.Player == Player then
                                spawn(function()
                                        for _ = 0, .3, 0.01 do
                                                v.Text.TextStrokeTransparency = v.Text.TextStrokeTransparency + .1
                                                v.Text.TextTransparency = v.Text.TextTransparency + .1
                                                v.Tab.Size = v.Tab.Size - Vector3.new(.1, .1, .1)
                                                --v.Tab2.Transparency = v.Tab2.Transparency + .1
                                                v.Tab.Transparency = v.Tab.Transparency + .05
                                                game['Run Service'].Heartbeat:wait()  
                                        end--MESSY CODE >.>
                                        v.Tab:Destroy()--u dun goofed?
                                        --v.Tab2:Destroy()
                                end)
        end-- u r an st00pid
    end)  
end
 
function getRank(player)
    for _,p in next,Enforcer.Ranked do
        if player.Name == p.Name then return p.Rank end
    end
    return 0
end
 
function getColor(plr)
      if type(plr) == "userdata" then
             plr = plr.Name
         else
             plr = tostring(plr)
      end
      for i,v in pairs(Enforcer.Ranked) do
             if v.Name == plr then
                    return v['Color']
              end
       end
       return 'Royal purple'
end
 
function setColor(plr, color)
    if type(plr) == "userdata" then
             plr = plr.Name
         else
             plr = tostring(plr)
      end
    for i,v in pairs(Enforcer.Ranked) do
            if v.Name == tostring(plr) then
                  v.Color = color
            end
      end --k
end
 
function getDesc(plr)
    if type(plr) == "userdata" then
             plr = plr.Name
         else
             plr = tostring(plr)
      end
      for i,v in pairs(Enforcer.Ranked) do
             if v.Name == plr then
                    return v['Description']
              end
       end
       return 'A normal player.'
end
 
function setRank(plr, rank)
       if type(plr) == "userdata" then
             plr = plr.Name
         else
             plr = tostring(plr)
      end
      for i,v in pairs(Enforcer.Ranked) do
            if v.Name == tostring(plr) then
                  v.Rank = tonumber(rank)
            end
      end
end
 
function PlaySound(id, pitch)
        epicsound = Instance.new("Sound")
        epicsound.Name = "Epicosound"
  epicsound.SoundId = "rbxassetid://"..id
     epicsound.Volume = 1
     epicsound.Pitch = pitch
  epicsound.Looped = true
  epicsound.Parent = workspace
  sbu = epicsound:Clone()
  sbu.Parent = Storage
  if epicsound.SoundId=="rbxassetid://tt" then -- TELL ME, TELL ME, WHERE DA FREAKS AT!
      epicsound.SoundId="rbxassetid://181158033"
  elseif epicsound.SoundId=="rbxassetid://fabulous" then -- FA-FA-FABULOUS!
      epicsound.SoundId="rbxassetid://191819419"
     elseif epicsound.SoundId=="rbxassetid://ufdb" then -- ultimate final death battle(fairy tail XD)
         epicsound.SoundId="rbxassetid://153085393"
        elseif epicsound.SoundId=="rbxassetid://nnm" then
           epicsound.SoundId="rbxassetid://210189234"
       elseif epicsound.SoundId=="rbxassetid://tun" then -- tunak tunak tun
           epicsound.SoundId="rbxass/setid://162682002"
       elseif epicsound.SoundId=="rbxassetid://zelda" then
           epicsound.SoundId="rbxassetid://158215156"
       elseif epicsound.SoundId=="rbxassetid://cc" then
           epicsound.SoundId="rbxassetid://177080835"
     end
  epicsound:Play()
end
 
 
function StopMusic()
                    for i,v in pairs(Workspace:GetChildren()) do
            if v:IsA("Sound") then
                v.Name = "Sound"
                wait()
                v:Remove()
            end
        end
end
 
function makeMessage(Text,Parent)
          coroutine.resume(coroutine.create(function()
        local M = Instance.new("Message",Parent)
        for i = 1, string.len(Text) do
            M.Text = M.Text .. string.sub(Text, i, i)
            wait(math.random() * 0.1)
        end
        M.Text = M.Text .. ""
        for i = 1, math.random(2, 6) do
            M.Text = string.sub(M.Text, 1, string.len(Text)) .. "_"
            wait(0.4)
            M.Text = string.sub(M.Text, 1, string.len(Text)) .. "  "
            wait(0.4)
        end
        M.Text = string.sub(M.Text, 1, string.len(Text))
        for i = 1, string.len(M.Text) do
            M.Text = string.sub(M.Text, 1, string.len(M.Text) - 1)
            wait()
        end
        M:Remove()
    end))
end  
 
 
 
SoundSearch = function(Speaker, msg)
if msg == "" or msg == nil then
Output(Speaker,"Nothing searched!", 'Deep orange')
else
Dismiss(Speaker)
http=game:GetService'HttpService'
url="http://rproxy.pw/catalog/json?Keyword="..http:UrlEncode(msg).."&Category=9&ResultsPerPage=20"
local assets=http:JSONDecode(http:GetAsync(url))
for i,v in pairs(assets) do
    Output(Speaker, v.Name, 'Really red', function()
        Dismiss(Speaker)
        Id=assets[i].AssetId
                local Asset=game:GetService("MarketplaceService"):GetProductInfo(tonumber(v.AssetId))
                Output(Speaker, "Name: "..Asset['Name'], "Lime green")
                Output(Speaker, "Sales: "..Asset['Sales'], "New yeller")
                Output(Speaker, "Item ID: "..Asset['AssetId'], "Teal")
                --Output(Speaker, "Creator: "..Asset['Creator'], 'Royal purple')
                --Output(Speaker, "Creator ID: "..Asset['CreatorID'], 'Institutional white')
        Output(Speaker, "Play sound", 'Really blue', function()
            Dismiss(Speaker)
            StopMusic()
        PlaySound(tonumber(v.AssetId), 1)
 end)
        Output(Speaker, "Play sound x2 pitch", "Lime green", function()
            Dismiss(Speaker)
            StopMusic()
            PlaySound(tonumber(v.AssetId), 2)
            end)
    end)
end
end
end
 
AddRank = function(name, rank, reason, color)
       if getRank(name) == -1 then return end
       if getRank(name) > 0 then return end
       table.insert(Enforcer.Ranked,{Name = name, Rank = rank, Description = reason, Color = color})
end
 
 
WirePart = function(partA, partB)
        local distance=(partA.Position-partB.Position).magnitude;
        if not partA:FindFirstChild('Wire') then       
                local wire=Instance.new('Part',parent)
                wire.Anchored=true
                wire.CanCollide=false
                wire.TopSurface='Smooth'
                wire.BottomSurface='Smooth'
                wire.FormFactor='Custom'
                wire.Material = 'Neon'
                wire.Size=Vector3.new(0,0,distance);
                wire.Name='Wire';
                wire.CFrame=CFrame.new(partA.Position,partB.Position)*CFrame.new(0,0,-distance/2);
                wire.BrickColor = partA.BrickColor
        else   
                partA.Wire.Size=Vector3.new(0,0,distance);
                partA.Wire.CFrame=CFrame.new(partA.Position,partB.Position)*CFrame.new(0,0,-distance/2);
    end
end
 
function Output(player, text, color, func)
    if text == nil then text = text end
    --text = ' [ENF]\n ' ..text --//ENF = Enforcer.
    if color == nil then color = 'Really red' end
    if func == nil then func = function() return end end -- fixed
   
    local tab = Instance.new('Part',script)
    tab.Name = "Enforcer tab #"..math.random(-99999,99999)
    tab.FormFactor = 'Custom'
    if Enforcer.TabSettings.Neon then tab.Material = 'Neon' end
    tab.Anchored = true;
    tab.CanCollide = false;
    tab.Locked = true;
    tab.Size = Enforcer.TabSettings.Size
    tab.TopSurface = 'Smooth'
    tab.BottomSurface = 'Smooth'
    tab.BrickColor = BrickColor.new(color)
    tab.Transparency = 0
   
   
   --[[ local tab2 = Instance.new('Part',tab)
    tab.Name = "Enforcer tab #"..math.random(-99999,99999)
    tab2.FormFactor = 'Custom'
    if Enforcer.TabSettings.Neon then tab.Material = 'Neon' end
    tab2.Anchored = true;
    tab2.CanCollide = false;
    tab2.Size = Enforcer.TabSettings.Size2
    tab2.TopSurface = 'Smooth'
    tab2.BottomSurface = 'Smooth'
    tab2.BrickColor = BrickColor.new(color)
    tab2.Transparency = 0.5
    ]]--
    --[[local sb = Instance.new("SelectionBox", tab)
    sb.Adornee = tab
    sb.Color = BrickColor.new(color)
    sb.Transparency = .9]]--
    local pl = Instance.new('PointLight', tab)
    pl.Brightness = 4
    pl.Range = 4
   
   
    local gui = Instance.new("BillboardGui", tab)
    gui.Adornee = tab
    gui.Size =  UDim2.new(1,0,1,0)
    gui.StudsOffset = Vector3.new(0,3,0)
   
    local tl = Instance.new("TextLabel", gui)
    tl.Size = UDim2.new(1,0,1,0)
    tl.Text = text
    tl.TextTransparency = 0
    tl.TextStrokeTransparency = 0
    tl.TextColor3 = tab.Color
    tl.BorderColor3 = Color3.new(0,3,0)
    tl.Font = 'SourceSansBold'
    tl.FontSize = 'Size18'
    tl.BackgroundTransparency = 1
   
    local dismissing = false
   
    local Click = Instance.new("ClickDetector",tab)
    Click.MaxActivationDistance = math.huge
    Click.MouseClick:connect(function(plr)
        if plr.userId == player.userId then
            dismissing = true
            coroutine.resume(coroutine.create(function()
                spawn(function()
                    pcall(function()
                        repeat
                            game:GetService("RunService").Stepped:wait()
                            tab.Size = Vector3.new(tab.Size.X - 0.1,tab.Size.Y - 0.1,tab.Size.Z - 0.1)
                            --tab2.Size = Vector3.new(tab2.Size.X - 0.1,tab2.Size.Y - 0.1,tab2.Size.Z - 0.1)
                            tab.Transparency = tab.Transparency+0.1
                            --tab2.Transparency = tab2.Transparency + 0.1
                            tl.Transparency = tl.Transparency + 0.1
                            --sb.Transparency = sb.Transparency + 0.05
                            pl.Brightness = pl.Brightness - 0.05
                        until tab.Size.X < 0.1
                       
                       -- pl:Destroy()
                        tab:Destroy()
                        table.remove(Enforcer.Tablets,i)
                    end)
                end)
            end))
            func=func func()
        end
    end)
       
    Click.MouseHoverEnter:connect(function(plr)
        if plr.userId==player.userId and not dismissing then
            tab.Transparency = 0.5
        end
    end)
       
    Click.MouseHoverLeave:connect(function(plr)
        if plr.userId==player.userId and not dismissing then
            tab.Transparency = 0.2
        end
    end)
 
    pcall(function() tab.CFrame = player.Character.Torso.CFrame end)
    tab.Parent = script
    table.insert(Enforcer.Tablets,{Tab = tab, Tab2 = tab2, Text = tl, Player = player})
end
 
function Chatted(Player, Message)
      for i,v in pairs(Enforcer.Commands) do
            if Message:sub(1,string.len(v['Say']..Enforcer.Bet)) == v['Say']..Enforcer.Bet then
                  if getRank(Player) >= v.Rank  then
                         Message=Message:sub(1+#v['Say']+#Enforcer.Bet)
                         a,b = ypcall(function()
                             v['Func'](Player, Message)
                        end)  if not a then print(b) end
                    else
                        Output(Player, "Your rank is too low for that command.", "Really red")
                        --Output(Player, "Rank needed: "..v.Rank,'Really red')
                  end
            end
      end  
end
 
function showCommands(plr, rank)
      Dismiss(plr)
      for i,v in pairs(Enforcer.Commands) do
          if v.Rank <= rank then
            Output(plr, v.Name, getColor(plr), function() Dismiss(plr)
                  Output(plr, "Name: " ..v.Name, "Royal purple")
                  Output(plr, "Usage: " ..v.Say..Enforcer.Bet, "Bright blue")
                  Output(plr, "Description: " ..v.Desc, "Really red") --ysomanycolors xd
                  Output(plr, "Rank: "..v.Rank, "Lime green")
            end)
           end
      end
      Output(plr, "-[ Dismiss ]-", "New Yeller", function() Dismiss(plr) end)
end
 
Oxchat = function(msg1,msg2)
                        pcall(function()
                            for _,v in next,game:GetService("Players"):GetPlayers() do
                                        local SV = Instance.new('StringValue')
                                        SV.Parent = v
                                        SV.Name = 'SB_Chat'
                                        SV.Value = ""..tostring(msg1):gsub('','\5').."/"..tostring(msg2):gsub('','\5')..""
                                        game.Debris:AddItem(SV, .1)
                                end
                        end)
end
 
function setCommand(Name, Say, Desc, Rank, Func)
      table.insert(Enforcer.Commands,{Name = Name, Say = Say, Desc = Desc, Rank = Rank, Func = Func})
end
 
function setTabSize(vec1,vec2,vec3,Player)
    Enforcer.TabSettings.Size = Vector3.new(vec1,vec2,vec3)
    --Enforcer.TabSettings.Size2 = Vector3.new(vec1-0.2,vec2-0.2,vec3-0.2)
    for i,v in next,Enforcer.Tablets do
        v.Tab.Size = Vector3.new(vec1,vec2,vec3)
        --v.Tab2.Size = Vector3.new(vec1-0.2,vec2-0.2,vec3-0.2)
    end
    Output(Player,'Tab size changed.',getColor(Player))
end
 
function Connect(Player)
    Output(Player, "Welcome, " ..Player.Name.. "!\n", "Black")
    Output(Player, "You are rank "..getRank(Player)..'.', "White")
    Output(Player, "Enforcer by PeroxDevelopment and ApexDevelopment loaded.", "Bright red")
    Player.Chatted:connect(function(msg)
        Chatted(Player, msg)
    end)  
end
 
  Music = function(player, id)
                        for i,v in next,workspace:GetChildren() do
                                if v.ClassName == "Sound" then
                                    v.Volume = 0
                                        v:Pause()
                                        v:Stop()
                                        wait()
                                        v:remove()
                                end
                    end
                    for i,v in next,script:GetChildren() do
                       if v.ClassName == "Sound" or v.Name == "Sound" then
                            v.Volume = 0
                            v:Pause()
                            v:Stop()
                            wait()
                                        v:remove()
                        end
                    end
                        local NS = Instance.new("Sound", script)
                        NS.Parent = script
                        NS.Pitch = 1
                        NS.Volume = 1
                        NS.Looped = true
                        NS.SoundId = "rbxassetid://"..id
                        wait()
                        NS:Play()
                        Output(player, "Now Playing: "..NS.Name.."!", "Deep orange")
                        Output(player, "ID: "..tosting(id).."!", "Really blue")
                        Output(player, "Creator: "..nil..".", "Really red")
end
 
function isException(player)
    if type(player) == 'userdata' then
        player = player.Name
    end
    for _,p in next,Enforcer.PriPeople do
        if p == player then return true end
    end
    return false
end
 
function GetTabletsPlayer(player)
    local returnTable = {}
    if type(player) == "userdata" then
        player = player.Name
    end
    for _,tab in next,Enforcer.Tablets do
        if tab.Player.Name == player then
            table.insert(returnTable, tab)
        end
    end
    return returnTable
end
 
function Rotate()
    rot=rot+0.650
    --pcall(function()
for _,Player in pairs(game:service'Players':GetPlayers()) do
local Counter = 0
local PlayerTablets = {}
for i,v in pairs(Enforcer.Tablets) do
if v.Tab.Parent ~= nil and v.Player==Player then
table.insert(PlayerTablets,v)
end
end
 
 
local Start = CFrame.new(0,0,0)
for I = 1, #PlayerTablets do
local Pos = nil
pcall(function() Pos = Player.Character.Torso.CFrame end)
if Pos == nil then return end
local Tab=PlayerTablets[I].Tab
--local Tab2=PlayerTablets[I].Tab2
local i=I
local Main = (I / #PlayerTablets - (.5 / #PlayerTablets) + rot/(#PlayerTablets/10)) * math.pi * 2
local x = math.sin(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+3)
local y = math.sin(tick()/.655)
local z = math.cos(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+3)
local aPos = Vector3.new(x, y, z) + Pos.p
local bPos = Tab.CFrame.p
local cPos = (aPos * .1 + bPos * .9)
Tab.CFrame = CFrame.new(cPos, Pos.p)
local d=math.rad((rot*300)*math.pi);
Tab.CFrame=CFrame.new(cPos,Pos.p)*CFrame.Angles(0,5.5,0)
--Tab2.CFrame=CFrame.new(cPos,Pos.p)*CFrame.Angles(0,5.5,0)
--//*CFrame.fromEulerAnglesXYZ(math.sin(time()+I/.6),math.sin(time()+I/.6),math.sin(time()+I/.6))
end
end
--end)
end
 
setCommand('Show Commands','cmds','Shows list of commands you can use.',0,function(plr, msg)
    Dismiss(plr)
      Output(plr, "All avaliable commands", "New Yeller", function() Dismiss(plr) showCommands(plr,getRank(plr)) end)
      for i = 0,5 do
            Output(plr, "Rank [" .. i .. "]".." commands", getColor(plr), function() Dismiss(plr) showCommands(plr, i) end)
      end
      Output(plr, "You are rank "..getRank(plr), "New Yeller")
      Output(plr, "Dismiss", "Bright red", function() Dismiss(plr) end)
end)
 
setCommand('Dismiss Tablets','dt','Dismisses tablets.',0,function(Speaker, Message)
    coroutine.resume(coroutine.create(function()
        if Message=='' or Message==' ' or Message=='me' or Message==nil or FindPlayers(Speaker,Message,false)=={Speaker} then
            Dismiss(Speaker)
        else
            if getRank(Speaker)>=3 then
                for _,p in next,FindPlayers(Speaker,Message) do
                    Dismiss(p)
                end
            else
                Output(Speaker,'Your rank is too low to dismiss other tablets.','Really red')
            end
        end
    end))
end)
 
setCommand('Dismiss All','dall','Dismisses everyones tablets.',3,function(plr,msg)
      for _,v in next,game:service'Players':GetPlayers() do
           Dismiss(v)
      end
end)
 
setCommand('Ping','p','Pings a message from tab.',1,function(plr, msg)
      Output(plr, msg, "Bright blue")
end)
 
setCommand('Kill','k','Kills a player.',1,function(plr, msg)
      for _,v in pairs(GetPlayers(plr, msg)) do
            if getRank(v) < getRank(plr) then
                v.Character:BreakJoints()
                Output(plr,'Killed '..v.Name..'.',getColor(plr))
            else
                Output(plr,v.Name..' is ranked higher than you.',getColor(plr))
            end
       end
end)
 
setCommand('Ping all','pall','Pings a message to everyone.',2,function(plr, msg)
      for _,v in next,game:service'Players':GetPlayers() do
            Output(v, msg, getColor(plr))
      end
end)
 
setCommand('Dev mode','dev','Disallows players under rank 5 from using commands.',5,function(plr)
    Enforcer.Settings.DevMode = true;
    Output(plr,'Developer mode enabled.', 'Lime green')
end)
 
setCommand('Private Server','pri','Disallows players from joining the game.',3,function(plr)
    Enforcer.Settings.PrivateServer = not Enforcer.Settings.PrivateServer
    Output(plr,'Private server set to '..tostring(Enforcer.Settings.PrivateServer)..'.',getColor(plr))
end)
 
setCommand('Age Restriction','agepri','Disallows players under a certain age from joining.',3,function(plr)
    Enforcer.Settings.AgeRestriction = not Enforcer.Settings.AgeRestriction
    Output(plr,'Age restriction set to '..tostring(Enforcer.Settings.AgeRestriction)..'.', getColor(plr))
end)
 
setCommand('Minimum Age','minage','Sets the minimun age for the age restriction.',3,function(plr,msg)
    Enforcer.Settings.MinimumAge = tonumber(msg)
    Output(plr,'Minimum age is now '..msg..'.',getColor(plr))
end)
 
setCommand('Tab Size','tabsize','Changes the size of the tablets.',2,function(plr,msg)
    if msg:lower() == "flat" then setTabSize(.2,4,3,plr)
    elseif msg:lower() == "cube" then setTabSize(2.2,2.2,2.2,plr) end
end)
 
setCommand('Tab Neon','tabneon','Enables/Disables the neon effect on tablets.',2,function(plr)
    Enforcer.TabSettings.Neon = not Enforcer.TabSettings.Neon
    for _,tab in next,Enforcer.Tablets do
        if Enforcer.TabSettings.Neon then
            tab.Tab.Material = 'Neon'
        else
            tab.Tab.Material = 'SmoothPlastic'
        end
    end
end)
 
setCommand('Wires','wires','Enables/Disables the wires.',2,function(plr)
    Enforcer.TabSettings.Wires = not Enforcer.TabSettings.Wires
    Output(plr,'Wires set to '..tostring(Enforcer.TabSettings.Wires),getColor(plr))
end)
 
setCommand('Kick','kick','Kicks a player from game.',4,function(plr, msg)
      for _,v in pairs(GetPlayers(plr, msg)) do
            if getRank(v) < getRank(plr) then
                  Kick(game:service'Players'[v.Name])
                Output(p,'Kicked '..v.Name..'.',getColor(plr))
            else
                Output(p,v.Name..' is ranked higher than you.',getColor(plr))
            end
      end
end)
 
setCommand('Ban','ban','Bans a player from game.',4,function(plr, msg)
      for _,v in pairs(GetPlayers(plr, msg)) do
            if getRank(v) < getRank(plr) then
                  Kick(game:service'Players'[v.Name])
                  setRank(v,-1)
                Output(plr,'Banned '..v.Name..'.',getColor(plr))
            else
                Output(plr,v.Name..' is ranked higher than you.',getColor(plr))
            end
      end
end)
 
setCommand('Players','plrs','View all the players.',3,function(plr, msg)
      Dismiss(plr)
      for i,v in pairs(game:service'Players':GetPlayers()) do
             Output(plr, v.Name, getColor(plr), function() Dismiss(plr)
                    Output(plr, "Name: "..v.Name, "New Yeller")
                    Output(plr, "Rank: "..tostring(getRank(v), "Bright blue"))
                    Output(plr, "Color: "..tostring(getColor(v),getColor(v)))
                    Output(plr, "Description: "..getDesc(v), getColor(v))
                    Output(plr, "Account Age: "..v.AccountAge, "Really red")
                    Output(plr, "User ID: "..v.userId,"Really blue")
                    Output(plr, "Kick", "Really red", function() Dismiss(plr) Kick(game:service'Players'[v.Name]) end)
                    Output(plr, "Set rank", "Really blue", function() Dismiss(plr)
                            Output(plr, "Rank [1] ", "Lime green", function() Dismiss(plr) setRank(v, 1) end)
                            Output(plr, "Rank [2] ", "Really red", function() Dismiss(plr) setRank(v, 2) end)
                            Output(plr, "Rank [3] ", "New Yeller", function() Dismiss(plr) setRank(v, 3) end) -- bcuz rank 3 command
                            if getRank(plr) >= 4 then Output(plr, "Rank [4] ", "Hot pink", function() Dismiss(plr) setRank(v, 4) end)
                            Output(plr, "Rank [5] ", "Really blue", function() Dismiss(plr) setRank(v, 5) end) end
                    end)
                    Output(plr, "Set color", "New Yeller", function() Dismiss(plr)
                            Output(plr, "Set color to Royal purple", "Royal purple", function() Dismiss(plr) setColor(v, "Royal purple") end)
                            Output(plr, "Set color to new yeller", "New Yeller", function() Dismiss(plr) setColor(v, "New Yeller") end)
                            Output(plr, "Set color to Really red", "Really red", function() Dismiss(plr) setColor(v, "Really red") end)
                            Output(plr, "Set color to Really blue", "Really blue", function() Dismiss(plr) setColor(v, "Really blue") end)
                            Output(plr, "Set color to White.", "White", function() Dismiss(plr) setColor(v, "White") end)
                            Output(plr, "Set color to Hot pink", "Hot pink", function() Dismiss(plr) setColor(v, "Hot pink") end)
                    end)
             end)
       end  
       Output(plr, "Dismiss", "Really red", function() Dismiss(game:service'Players'[plr.Name]) end)
end)
 
setCommand('Explore','expl','Explores from the tablets.',3,function(plr, msg)
     Explore(plr)
end)
 
setCommand('Remove','r','Removes Enforcer admin.',5,function(plr, msg)
      script.Disabled = true
      setfenv(1,{script:Destroy()})
      script:Destroy()
end)
 
setCommand('Ranked','ranked','Opens the rank menu.',1,function(plr, msg)
    Dismiss(plr)
       for i,v in pairs(Enforcer.Ranked) do
              Output(plr, v.Name, getColor(v), function() Dismiss(plr)
                     Output(plr, "Name: "..v.Name, "New Yeller")
                    Output(plr, "Rank: "..tostring(getRank(v), "Hot pink"))
                    Output(plr, "Color: "..tostring(getColor(v),getColor(v)))
                    Output(plr, "Description: "..getDesc(v), getColor(v))
             end)
       end
end)
 
setCommand('Music','ms','Plays a song/music/id.',2,function(plr, msg)
      Musi(plr, msg)  
end)
 
setCommand('Stop Music','sm','Removes all sounds from workspace.',2,function(plr)
    StopMusic()
    Output(plr,'Stopped music.',getColor(plr))
end)
 
setCommand('Set color','sc','Sets your own color.',1,function(plr, msg)
    setColor(plr,msg)
    Output(plr, "Your color is now:\n"..tostring(getColor(plr)), getColor(plr))
end)
 
setCommand('Sound search','ss','Searches ROBLOX for music.',1,function(plr, msg)
     SoundSearch(plr, msg)
end)
 
setCommand('Help','help','Displays Enforcer help list.',0,function(plr, msg)
       Output(plr, "Created by PeroxDevelopment, ApexDevelopment.", "Royal purple")
       Output(plr, "Your current rank:\n"..getRank(plr), "Bright red")
       Output(plr, "For list of cmds avalible to your rank click this tablet.", "New Yeller", function() Dismiss(plr)
            Chatted(plr, Enforcer.Bet.. " cmds " ..Enforcer.Bet)
      end)
      Output(plr, "This is the help menu. Click a tablet for more information.", "Lime green")
end)
 
setCommand('Make message','m','Makes the message from screen.',2,function(plr, msg)
       makeMessage(" [ " .. plr.Name .. " ] " ..msg,Enforcer.Services.Workspace)
end)  
   
for _,Player in next,game:service'Players':GetPlayers() do
    if getRank(Player) == -1 or (Enforcer.Settings.AgeRestriction and Player.accountAge < Enforcer.Settings.MinimumAge and not isException(Player)) or (Enforcer.Settings.PrivateServer and not isException(Player)) then Kick(Player) return end
    Connect(Player)
end
 
game.Players.PlayerAdded:connect(function(Player)
    if getRank(Player) == -1 or (Enforcer.Settings.AgeRestriction and Player.accountAge < Enforcer.Settings.MinimumAge and not isException(Player)) or (Enforcer.Settings.PrivateServer and not isException(Player)) then Kick(Player) return end
    Connect(Player)
end)
 
Oxchat('[Enforcer]','Core has loaded.')
Oxchat('[Enforcer]','Made By : CoreSB)
 
game:service'RunService'.Stepped:connect(Rotate)
--game:service'RunService'.Stepped:connect(WirePart)
