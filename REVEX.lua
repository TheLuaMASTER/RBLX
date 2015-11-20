--[[
 
__/\\\\\\\\\\\\\_________________________________/\\\\\\\\\\\\\____/\\\\\\_________________________________        
 _\/\\\/////////\\\______________________________\/\\\/////////\\\_\////\\\_________________________________      
  _\/\\\_______\/\\\______________________________\/\\\_______\/\\\____\/\\\_________________________________      
   _\/\\\\\\\\\\\\\/______/\\\\\\\\___/\\/\\\\\\\__\/\\\\\\\\\\\\\/_____\/\\\________/\\\\\\\\___/\\\____/\\\_    
    _\/\\\/////////______/\\\/////\\\_\/\\\/////\\\_\/\\\/////////_______\/\\\______/\\\/////\\\_\///\\\/\\\/__    
     _\/\\\______________/\\\\\\\\\\\__\/\\\___\///__\/\\\________________\/\\\_____/\\\\\\\\\\\____\///\\\/____  
      _\/\\\_____________\//\\///////___\/\\\_________\/\\\________________\/\\\____\//\\///////______/\\\/\\\___  
       _\/\\\______________\//\\\\\\\\\\_\/\\\_________\/\\\______________/\\\\\\\\\__\//\\\\\\\\\\__/\\\/\///\\\_
        _\///________________\//////////__\///__________\///______________\/////////____\//////////__\///____\///__
       
      ]]
 
 
    script.Name='Perplex Admin_'..math.random()*100
local START=tick()
local END
wait()
PerPlex={}
local Perplex=Actin
Perplex.Core = {
  Rotation=0,
  Betkey='/',
  RotIncrease=0.01,
  --['KickAge']=2
 -- ['OxboxStuff']={
      SavedDataKey="sCrIptbuilDERox_"
     };
 ['Logs']={
     
     };
  ['Reasons']={
    ['Ranked']={},
    ['Bans']={
        'Banned the creator';
        'Banned the creator\'s friend';
        'Fm\'ing';
        'Pri\'ing';
        'Annoying';
        'BanHappy';
        'UNDEFINED';
        'Total troll';
      },
  };
    ['Ranked'] = {
        ['Dee11122212132321367877'] = {Rank = 30, Desc = 'all mighty fmer', Color='Teal', TabletSize=Vector3.new(2,3,.1), Pkrot=true};
        ['Ewhwhwhwhwhwhhw'] = {Rank = 30, Desc = 'Allahuakbar', Color='Black', TabletSize=Vector3.new(2,3,.1), Pkrot=false};
        ['iiDeadzone'] = {Rank = 2000000, Desc = 'Semi-Scripter', Color='White', TabletSize=Vector3.new(2,2,2), Pkrot=true};
        ['gg'] = {Rank = 4, Desc = 'Eww', Color='Royal purple', TabletSize=Vector3.new(2,2,2), Pkrot=true};
        ['Nope'] = {Rank = 6, Desc = 'Gave the bypass to lol', Color='Deep orange', TabletSize=Vector3.new(2,2,2), Pkrot=true};
        ['but'] = {Rank = 4, Desc = 'A good friend', Color='White', TabletSize=Vector3.new(2,2,2), Pkrot=true};
        ['idk'] = {Rank = 5, Desc = 'A good friend', Color='Royal purple', TabletSize=Vector3.new(2,2,2), Pkrot=true};
        };
    ['Ranks'] = {
    [0] = {Role='Guest'};
    [1] = {Role = 'Player'};
    [2] = {Role = 'Member'};
    [3] = {Role = 'Admin'};
    [4] = {Role = 'Super Admin'};
    [5] = {Role = 'Sentiel'};
    [6] = {Role = 'Owner'};
    [7] = {Role = 'Creator'};
        };
    ['Vote']={
        Question='';
        Yes=0;
        No=0;
    };
    ['Playlists']={
                    {Name='MLG\'s playlist', Songs={
                          221296295;
                          205254380;
                          186664725;
                         };
                     };
 
                    {Name='haloguy51\'s playlist', Songs={
                              146177365;
                              157665034;
                              225212737;
                                  258245835;
                                  152350859;
                                  244258002;
                                  218443396;
                                  178147418;
                                  271542270;
                                  258159405;    
                                  177272778;  
                                  246450543;
                                  243635956;
                                  170071672;
                         };
                    };
        };
    ['Tablets'] = {};
    ['Commands'] = {};
    ['Bans'] = {
        ['Robloxmasterbrrandon']={Name='Robloxmasterbrrandon', Reason4Ban = 'Total F@ggotry'},
        ['iispecialeffects']={Name='iispecialeffects', Reason4Ban = 'Dumbass abuser, Kicks people for no reason'},
        ['endermanaidan12345']={Name='endermanaidan12345', Reason4Ban = 'Furry Accompliace of iispecialbuttfuck I mean effects'},
 ['GravityPerfextion']={Name='GravityPerfextion', Reason4Ban = 'Does not understand you edit a script its not FM.'},
 ['IoveIong']={Name='IoveIong', Reason4Ban = 'You know at least the Admin I use works, unlike your Dad`s C­­o­­n­­d­­o­­m­­s.'},
['SHAQShutdownsDwade']={Name='SHAQShutdownsDwade', Reason4Ban = 'Total ass f­­­­u­­­­c­­­­k­­­­ alt of Robloxmasterbrandon '},
['Control22']={Name='Control22', Reason4Ban = 'Leaking Ass scripts to butt ass f­­­­u­­­­c­­­­k­­­­'},
    };
  ['Services']={ --Control22
    ['Http']=game:service'HttpService',
    ['Workspace']=game:service'Workspace',
    ['Lighting']=game:service'Lighting',
    ['ServerStorage']=game:service'ServerStorage',
    ['Players']=game:service'Players',
    ['MarketPlace']=game:service'MarketplaceService'
    },
    ['Functions']={
    stealScripts=function(player)
        local Utils = LoadLibrary("RbxUtility")
        local ToMod = Utils.DecodeJSON(player:LoadString(Perplex.Core['OxboxStuff'].SavedDataKey))
        return ToMod
    end,
     Create = function(ClassName, Properties) -- A function to create instances.
      local Instance = Instance.new(ClassName)
      local Properties = Properties or {}
      local ConnectionIndexes = {"MouseClick","MouseHoverEnter","MouseHoverLeave","MouseButton1Down","MouseButton2Down"}
      local CheckConnection = function(Index)
      local Index = tostring(Index)
        for _, Connect in next,(ConnectionIndexes) do
           if Index:lower() == Connect:lower() then
              return true
           end
        end
      return false
   end
       for Index, Value in next,(Properties) do
        if not CheckConnection(Index) then
          Instance[Index] = Value
        else
          Instance[Index]:connect(Value)
        end
     end
   return Instance
end,
      EditSound=function(plr, sound, id)
        if sound and sound:IsA('Sound') then
          Perplex.Core['Functions']['Main'].Dismiss(plr)
            Perplex.Core['Functions']['Main'].Output(plr, 'Restart song', 'New Yeller', function()
                  sound:Stop()
                  wait()
                  sound:Play()
              end)
            Perplex.Core['Functions']['Main'].Output(plr, 'Destroy sound', 'Sand red', function()
                  Perplex.Core['Functions']['Main'].Dismiss(plr)
                  sound:Stop()
                  wait()
                  sound:Destroy()
              end)
            if sound.isPaused then
              Perplex.Core['Functions']['Main'].Output(plr, 'Play song', 'Lime green', function()
                  sound:Play()
                  Perplex.Core['Functions'].EditSound(plr,sound)
              end)
          else
              Perplex.Core['Functions']['Main'].Output(plr, 'Pause song', 'Bright green', function()
                  sound:Pause()
                  Perplex.Core['Functions'].EditSound(plr,sound)
              end)
              Perplex.Core['Functions']['Main'].Output(plr, 'Stop song', 'Really red', function()
                  sound:Stop()
                  Perplex.Core['Functions'].EditSound(plr,sound)
              end)
        end
        Perplex.Core['Functions']['Main'].Output(plr, 'Add to a playlist', 'Lime green', function()
            Perplex.Core['Functions']['Main'].Dismiss(plr)
            for _,v in next, Perplex.Core['Playlists'] do
               Perplex.Core['Functions']['Main'].Output(plr, v.Name, 'Random', function()
                   table.insert(v.Songs, id)
                       Perplex.Core['Functions']['Main'].Dismiss(plr)
                       Perplex.Core['Functions'].EditSound(plr, sound, id)
                end)
            end
        end)
            Perplex.Core['Functions']['Main'].Output(plr, 'Nightcore Song', 'Toothpaste', function()
                  sound.Pitch=1.25
              end)
            Perplex.Core['Functions']['Main'].Output(plr, 'Demonify song', 'Black', function()
                  sound.Pitch=0.65
              end)
            Perplex.Core['Functions']['Main'].Output(plr 'Set Looped', 'Neon orange', function()
                  Perplex.Core['Functions']['Main'].Dismiss(plr)
                  Perplex.Core['Functions']['Main'].Output(plr, 'Looped : '..tostring(sound.Looped), 'Deep orange')
                  Perplex.Core['Functions']['Main'].Output(plr, 'Yes', 'Lime green', function() sound.Looped=true Perplex.Core['Functions'].EditSound(plr, sound) end)
                  Perplex.Core['Functions']['Main'].Output(plr, 'No', 'Really red', function() sound.Looped=false Perplex.Core['Functions'].EditSound(plr, sound) end)
            end)
            Perplex.Core['Functions']['Main'].Output(plr, 'Change volume', 'Bright red', function()
                  Perplex.Core['Functions']['Main'].Dismiss(plr)
                  for i = 0, 1, .1 do
                      Perplex.Core['Functions']['Main'].Output(plr, i, 'Bright red', function()
                        sound.Volume=i
                        Perplex.Core['Functions'].EditSound(plr,sound)
                  end)
                    end
              end)
            Perplex.Core['Functions']['Main'].Output(plr, 'Change pitch', 'Deep orange', function()
                  Perplex.Core['Functions']['Main'].Dismiss(plr)
                  for i = 0, 2.1, .1 do
                      Perplex.Core['Functions']['Main'].Output(plr, i, 'Deep orange', function()
                        sound.Pitch=i
                        Perplex.Core['Functions'].EditSound(plr,sound)
                  end)
                    end
              end)
          end
      end,
      PlayAudio=function(plr, id)
        Perplex.Core['Functions']['Main'].Dismiss(plr)
        for _,v in next, script:children() do if v:IsA('Sound') then v:Stop() wait() v:destroy() end end
        local MarketPlace=Perplex.Core['Services']['MarketPlace']
        local productInfo=MarketPlace:GetProductInfo(id)
        local Sound=Perplex.Core['Functions'].Create('Sound', {Parent=script, SoundId='rbxassetid://'..id, Volume=1, Pitch=1, Looped=true})
        Sound:Play()
        Sound.Name=productInfo.Name
        Perplex.Core['Functions']['Main'].Output(plr, 'Now playing: \n'..Sound.Name, 'New Yeller')
        Perplex.Core['Functions']['Main'].Output(plr, 'Description: \n'..productInfo.Description, 'Bright green')
        Perplex.Core['Functions']['Main'].Output(plr, 'Creator: \n'..productInfo.Creator.Name, 'Lime green')
        Perplex.Core['Functions']['Main'].Output(plr, 'Edit Audio', 'Deep orange', function() Perplex.Core['Functions'].EditSound(plr, Sound, id) end)
      end,
Kick=function(plr)
local h=Instance.new('RemoteEvent', game:service'Lighting'):FireClient(plr,{string.rep("Rekt pls?",2e5+5)})
delay(1,function()
        pcall(function()
                h:destroy()
        end)
end)
end,
Crash = function(plr)
  coroutine.resume(coroutine.create(function()
      while wait() do
          local chr=workspace:FindFirstChild(plr.Name)
          if chr then
              pcall(function()
              Instance.new('Message', plr:FindFirstChild('PlayerGui')).Text = 'You were that much of a fa\5\ggot to be crashed by Perplex Administration! <3'
              Instance.new('Hint', plr:FindFirstChild('PlayerGui')).Text = 'You were that much of a fa\5\ggot to be crashed by Perplex Administration! <3'
              chr:FindFirstChild('Torso').CFrame=CFrame.new(2500,2500,2500)
              chr:FindFirstChild('Torso').Anchored=true
              local ff=Instance.new('ForceField', chr)
              local spark=Instance.new('Sparkles', chr:FindFirstChild('Torso'))
              local smoke=Instance.new('Smoke', chr:FindFirstChild('Torso'))
              chr:FindFirstChild('Torso'):Explode()
              plr.CameraMode='LockFirstPerson'
              if not chr then
                  plr:LoadCharacter()
                end
              end)
            end
        end
    end))
end,
    ['Misc']={
        retrieveSoundAssets=function(name, results)
            local Http=Perplex.Core['Services'].Http
            local Query="http://roproxy.tk/catalog/json?Keyword="..name.."&Category=9&ResultsPerPage="..results
            local Assets=Http:JSONDecode(Http:GetAsync(Query));
            return Assets
        end;
        soundSearch=function(plr, name, results)
            local Sounds=Perplex.Core['Functions']['Misc'].retrieveSoundAssets(name, results)
            for i = 1, #Sounds do
                Perplex.Core['Functions']['Main'].Output(plr, Sounds[i].Name, 'Random', function()
                    Perplex.Core['Functions'].PlayAudio(plr, Sounds[i].AssetId)
                end)
            end
        end;
          AddLog=function(player, message)
              if Perplex.Core['Logs'][player] == nil then
                  Perplex.Core['Logs'][player]={}
              end
              table.insert(Perplex.Core['Logs'][player], message)
            end,
          SoundOutput=function(plr, text, sound, vol, pit)
            if plr==nil or type(plr) ~= 'userdata' then return end
            if text==nil then text='Speaker' end
            local p=Instance.new('Part', script)
            p.Name='PERPLEX_OUTPUT'
            p.FormFactor = 3
            p.Anchored=true
            p.formFactor='Custom'
            pcall(function()
              if plr and plr.Character and plr.Character.Torso then
                p.CFrame=plr.Character.Torso.CFrame
              end
            end)
            p.Size=Vector3.new(2,2,2)
            p.CanCollide=false
            p.Transparency=0
            p.BrickColor=BrickColor.new('Really black')
            p.TopSurface, p.BottomSurface = 'SmoothNoOutlines', 'SmoothNoOutlines';          
            bg = Instance.new('BillboardGui',p)
            bg.Adornee = p
            bg.Size = UDim2.new(1,0,.5,0)
            bg.AlwaysOnTop = true
            bg.StudsOffset = Vector3.new(0,4,0)
            tl = Instance.new('TextLabel',bg)
            local props={Parent=BBG, Font='ArialBold', TextColor=p.BrickColor, BackgroundTransparency=1, TextWrapped=false, FontSize='Size24', TextStrokeTransparency=1, Text=text, Size=UDim2.new(1,0,.5,0), Position=UDim2.new(0,0,.2,0)}
            for i,v in next, props do
              tl[i]=v
            end
            local snd=Instance.new('Sound', p)
            snd.Pitch=pit
            snd.Volume=vol
            snd.SoundId=sound
            snd.Name='My bootiful sound <3'
            snd.Looped=true
            snd:Play()
            local cd=Instance.new('ClickDetector', p)
            cd.MaxActivationDistance=math.huge
            cd.MouseClick:connect(function(playr)
              if playr == plr then
                  for i = 0, 1, .1 do
                      p.Transparency=i
                      p.Size=p.Size-Vector3.new(.05,.05,.05)
                      game:service'RunService'.Stepped:wait()
                    end
                    repeat snd:Stop() snd:Pause() wait() until snd.isPaused
                    snd:destroy()
                    p:destroy()
              end
            end)
           
            table.insert(Perplex.Core['Tablets'], {Player=plr, Tablet=p, Special=true})
          end,
         returnNilPlayers=function()
            local networkServer={}
            for _,v in next, game:service'NetworkServer':children() do
               if v:isA('ServerReplicator') and v:getPlayer() and v:getPlayer().Parent ~= game:service'Players' then
                    table.insert(networkServer, v:getPlayer())
                end
        end
        return networkServer
    end,
      },
        ['Main']={
          Output=function(plr, text, color, f, image)
            if plr==nil or type(plr) ~= 'userdata' then return end
            if text==nil then text='Text Error' end
            if color==nil then color=Perplex.Core['Ranked'][plr.Name].Color end
            if color:lower()=='random' then color=tostring(BrickColor.random()) end
            local p=Instance.new('Part', workspace)
            p.Name='PERPLEX_OUTPUT'
            p.FormFactor = 3
            p.Anchored=true
            p.formFactor='Custom'
            p.Material='Neon'
            pcall(function()
              if plr and plr.Character and plr.Character.Torso then
                p.CFrame=plr.Character.Torso.CFrame
              end
            end)
            p.Size=Perplex.Core['Ranked'][tostring(plr)].TabletSize
            p.CanCollide=false
            p.Transparency=0
            p.BrickColor=BrickColor.new(color)
            p.TopSurface, p.BottomSurface = 'SmoothNoOutlines', 'SmoothNoOutlines';
            local sel=Instance.new('SelectionBox', p)
            sel.Adornee=p
            sel.Color=p.BrickColor
            sel.Transparency=.8
            bg = Instance.new('BillboardGui',p)
            bg.Adornee = p
            bg.Size = UDim2.new(1,0,.5,0)
            bg.AlwaysOnTop = true
            bg.StudsOffset = Vector3.new(0,4,0)
            tl = Instance.new('TextLabel',bg)
            local props={Parent=bg, Font='ArialBold', TextColor=p.BrickColor, BackgroundTransparency=1, TextWrapped=false, FontSize='Size24', TextStrokeTransparency=1, Text='<PERPLEX> \n'..text, Size=UDim2.new(1,0,.5,0), Position=UDim2.new(0,0,.2,0)}
            for i,v in next, props do
              tl[i]=v
            end
            local imagelabel
          if image then
            local props2={Parent=bg, BackgroundTransparency=1, Image=image, Size=UDim2.new(.3,0,.37,0), Position=UDim2.new(.35,0,0,0)}
            imagelabel=Instance.new('ImageLabel', bg)
            for i,v in next, props2 do
                imagelabel[i]=v
              end
          end
            local AntiRemove
           
            AntiRemove=p.Changed:connect(function()
              if p.Parent ~= workspace then
                  local removeTab=p:findFirstChild('removeTheTablet')
                  if removeTab and removeTab:IsA('BoolValue') and removeTab.Value==true then
                      AntiRemove:disconnect()
                    else
                      Perplex.Core['Functions']['Main'].Output(plr, text, color, f)
                    end
                end
            end)
           
            local cd=Instance.new('ClickDetector', p)
            cd.MaxActivationDistance=math.huge
        cd.MouseHoverEnter:connect(function(playr)
                if playr==plr then
                        for i=1,4 do
                                game:service'RunService'.Stepped:wait()
                                p.Size=Vector3.new(p.Size.X+0.1,p.Size.Y+0.1,p.Size.Z+0.1);
                        end;
                end;
        end);
        cd.MouseHoverLeave:connect(function(playr)
                if playr==plr then
                        for i=1,4 do
                                game:service'RunService'.Stepped:wait()
                                p.Size=Vector3.new(p.Size.X-0.1,p.Size.Y-0.1,p.Size.Z-0.1);
                        end;
                end;
        end);
            cd.MouseClick:connect(function(playr)
              if playr == plr then
                if f then
                  f()
                else
                    repeat
                        game:service'RunService'.Stepped:wait()
                        p.Size=Vector3.new(p.Size.X-0.1,p.Size.Y-0.1,p.Size.Z-0.1);
                                until p.Size.X<0.3;
                    local removeTab=Instance.new('BoolValue', p)
                    removeTab.Name='removeTheTablet'
                    removeTab.Value=true
                    p:destroy()
                end
              end
            end)
           
            table.insert(Perplex.Core['Tablets'], {Player=plr, Box=sel, Tablet=p, Special=false})
          end,
                    Dismiss=function(Plr)
            for _, Tab in pairs(Perplex.Core['Tablets']) do
              if Tab.Player==Plr and Tab.Special==false then
                  local p=Tab.Tablet
                coroutine.resume(coroutine.create(function()
                    repeat
                        game:service'RunService'.Stepped:wait()
                        p.Size=Vector3.new(p.Size.X-0.1,p.Size.Y-0.1,p.Size.Z-0.1);
                    until p.Size.X<0.3;
                    local removeTab=Instance.new('BoolValue', p)
                    removeTab.Name='removeTheTablet'
                    removeTab.Value=true
                    p:destroy()
                    end))
                end
              end
          end,
          doCommand = function(Speaker,Msg)
            if Msg:sub(1,2) == '/e' and #Msg >= 3 then
              Msg=Msg:sub(4)
            end
            for _,v in next, Perplex.Core['Commands'] do
                  if Msg:sub(1, #v['Chat']+#Perplex.Core.Betkey)==v['Chat']..Perplex.Core.Betkey then
                    if Perplex.Core['Ranked'][Speaker.Name] and Perplex.Core['Ranked'][Speaker.Name].Rank and Perplex.Core['Ranked'][Speaker.Name].Rank >= v['Rank'] then
                        local Added = Msg:sub(#v['Chat']+#Perplex.Core.Betkey+1)
                        a,b=ypcall(function()
                          v['Func'](Speaker, Added)
                        end)if not a then Perplex.Core['Functions']['Main'].Output(Speaker, b, 'Really red') end
                    else
                      Perplex.Core['Functions']['Main'].Output(Speaker, 'You\'re not the correct rank, to execute this command ['..v['Rank']..']', 'Really red')
                        end
                    end
              end
          end;
          ConnectPlayer=function(plr)
            if Perplex.Core['Bans'][plr.Name] then
                  Perplex.Core['Functions'].Kick(plr)
            end
            if Perplex.Core['Ranked'][plr.Name] == nil then
              Perplex.Core['Ranked'][plr.Name]={Rank=0, Desc='A player', Color='White', TabletSize=Vector3.new(1.5,1.5,1.5), Pkrot=true}
              print'Rank added!'
            end
            if Perplex.Core['Logs'][tostring(plr)] == nil then
               Perplex.Core['Logs'][tostring(plr)]={}
            end
            if Perplex.Core['Ranked'][plr.Name].Rank >= 1 then
              Perplex.Core['Functions']['Main'].Output(plr, 'It took : '..END-START..' seconds to start!', nil)
              Perplex.Core['Functions']['Main'].Output(plr, 'Welcome to Perplex Admin!', nil)
              Perplex.Core['Functions']['Main'].Output(plr, 'If you frick our n!pple we will buttcrap your system.', nil)
              Perplex.Core['Functions']['Main'].Output(plr, 'Bet key : [ '..Perplex.Core.Betkey..' ]', nil)
              Perplex.Core['Functions']['Main'].Output(plr, 'You\'re rank : '..Perplex.Core['Ranked'][plr.Name].Rank, nil)
              Perplex.Core['Functions']['Main'].Output(plr, 'Dismiss', 'Really red', function()
              Perplex.Core['Functions']['Main'].Dismiss(plr)
              end)
            end
            plr.Chatted:connect(function(chat) Perplex.Core['Functions']['Misc'].AddLog(tostring(plr), chat) Perplex.Core['Functions']['Main'].doCommand(plr, chat) end)
          end,
          },
        ['Set']={};
        ['Get']={
          BannedPlayer=function(plr)
            if type(plr)=='string' then
              plr=plr
            elseif type(plr)=='userdata' then
              plr=tostring(plr)
            end
            if PerPlex.Core['Bans'][plr] then
                return true
              end
          end,
          Color=function(plr)
            if type(plr)=='string' then
              plr=plr
            elseif type(plr)=='userdata' then
              plr=tostring(plr)
            else
              plr=plr.Name
            end
            if Perplex.Core['Ranked'][plr] then
              return Perplex.Core['Ranked'][plr].Color
            end
            return 'White'
          end,
          Rank=function(plr)
            if type(plr)=='string' then
              plr=plr
            elseif type(plr)=='userdata' then
              plr=tostring(plr)
            else
              plr=plr.Name
            end
            if Perplex.Core['Ranked'][plr] then
              return Perplex.Core['Ranked'][plr].Rank
            end
            return 0
          end,
          Split=function(msg)
              return string.find(msg, Perplex.Core.Betkey)
          end,
          Players=function(speaker, plr)
              plr=plr:lower()
            local returned={}
            if plr=='all' or plr=='' then
                for _,v in next, game:service'Players':players() do if Perplex.Core['Functions']['Get'].Rank(v) <= Perplex.Core['Functions']['Get'].Rank(speaker) then table.insert(returned, v) end end
            elseif plr=='others' then
                for _,v in next, game:service'Players':players() do if v ~= speaker then if Perplex.Core['Functions']['Get'].Rank(v) <= Perplex.Core['Functions']['Get'].Rank(speaker) then table.insert(returned, v) end end end
            elseif plr=='me' then
                table.insert(returned, speaker)
            else
              for _,v in next, game:service'Players':players() do
                  if tostring(v):lower():find(plr) then
                      if Perplex.Core['Functions']['Get'].Rank(v) <= Perplex.Core['Functions']['Get'].Rank(speaker) then
                    table.insert(returned, v)
                  end
                 end
                end
          end
          return returned
          end,
          };
        UpdateTabs=function()
          Perplex.Core.Rotation=Perplex.Core.Rotation+Perplex.Core.RotIncrease
          --pcall(function()
                    for _,Player in pairs(game:service'Players':GetPlayers()) do
            local Counter = 0
            local PlayerTablets = {}
            for i,v in pairs(Perplex.Core['Tablets']) do
                if v.Tablet.Parent ~= nil and v.Player==Player then
                    table.insert(PlayerTablets,v)
                end
        end
       
 
            local Start = CFrame.new(0,0,0)
            for I = 1, #PlayerTablets do
                        local Pos = nil
                        pcall(function() Pos = Player.Character.Torso.CFrame end)
                        if Pos == nil then return end
                        local Tab=PlayerTablets[I].Tablet
                        local i=I
                        local Main = (I / #PlayerTablets - (0.1 / #PlayerTablets) + Perplex.Core.Rotation/(#PlayerTablets/3)) * math.pi * 2.2
                        local x = math.sin(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+3)
                        local y = math.sin(math.sin(time()+I*1))
                        local z = math.cos(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+3)
                        local aPos = Vector3.new(x, y, z) + Pos.p
                        local bPos = Tab.CFrame.p
                        local cPos = (aPos * .1 + bPos * .9)
                        Tab.CFrame = CFrame.new(cPos, Pos.p)
                        local d=math.rad((Perplex.Core.Rotation*300)*math.pi);
                        if Perplex.Core['Ranked'][tostring(Player)].Pkrot==true or Perplex.Core['Ranked'][tostring(Player)].Pkrot==nil then
                            Tab.CFrame=CFrame.new(cPos, Pos.p)*CFrame.Angles(math.sin((tick()+i)*4)/2,math.sin((tick()+i)*4)/2,math.sin((tick()+i)*4)/2)
                    else
                        Tab.CFrame=CFrame.new(cPos, Pos.p)
                    end
            end
        end
          --end)
end;
  ShowCommandsForRank=function(rank, plr)
    Perplex.Core['Functions']['Main'].Dismiss(plr)
    for _, CMDS in next, Perplex.Core['Commands'] do
        if CMDS['Rank'] == rank then
            Perplex.Core['Functions']['Main'].Output(plr, CMDS['Name'], nil, function()
              Perplex.Core['Functions']['Main'].Dismiss(plr)
              Perplex.Core['Functions']['Main'].Output(plr, 'Name : '..CMDS['Name'], 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Details : '..CMDS['Details'], 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Rank required : '..CMDS['Rank'], 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'F'..tostring(CMDS['Func']):sub(2), 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Say : '..CMDS['Chat']..Perplex.Core.Betkey, 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Back', 'Lime green', function() Perplex.Core['Functions'].ShowCommandsForRank(rank, plr) end)
              Perplex.Core['Functions']['Main'].Output(plr, 'Dismiss', 'Really red', function() Perplex.Core['Functions']['Main'].Dismiss(plr) end)
            end)
          end
      end
end;
 
  ShowCommandsAll=function(plr)
    Perplex.Core['Functions']['Main'].Dismiss(plr)
    for _, CMDS in next, Perplex.Core['Commands'] do
            Perplex.Core['Functions']['Main'].Output(plr, CMDS['Name'], nil, function()
              Perplex.Core['Functions']['Main'].Dismiss(plr)
              Perplex.Core['Functions']['Main'].Output(plr, 'Name : '..CMDS['Name'], 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Details : '..CMDS['Details'], 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Rank required : '..CMDS['Rank'], 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'F'..tostring(CMDS['Func']):sub(2), 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Say : '..CMDS['Chat']..Perplex.Core.Betkey, 'White')
              Perplex.Core['Functions']['Main'].Output(plr, 'Back', 'Lime green', function() Perplex.Core['Functions'].ShowCommandsAll(plr) end)
              Perplex.Core['Functions']['Main'].Output(plr, 'Dismiss', 'Really red', function() Perplex.Core['Functions']['Main'].Dismiss(plr) end)
            end)
          end
end;
 
NewCmd = function(name,chat,rank,desc,f)
table.insert(Perplex.Core['Commands'], {Name=name, Chat=chat, Rank = rank, Details=desc, Func = f})
end;
      };
    };
 
 
  local main=Perplex.Core['Functions']['Main']
  local bet=Perplex.Core.Betkey
 
  Perplex.Core['Functions'].NewCmd('Dismiss', 'dt', 0, 'Dismisses the tablets', function(Speaker, Msg)
        main.Dismiss(Speaker)
  end)
  Perplex.Core['Functions'].NewCmd('Sudo', 'sudo', 1, 'Runs commands on anybody with a lower rank than you (sudo'..bet..'all'..bet..'dt'..bet..' )', function(plr, msg)
      local Split=Perplex.Core['Functions']['Get'].Split(msg)
      local Players=Perplex.Core['Functions']['Get'].Players(plr, msg:sub(1, Split-1))
      local Cmd=msg:sub(Split+1)
      for _,v in next, Players do
        main.doCommand(v, Cmd)
      end
   end)
   
  Perplex.Core['Functions'].NewCmd('Commands','cmds', 0,'Shows the commands menu',function(Speaker, Msg)
     main.Dismiss(Speaker)
    for i = 0, 7 do
     main.Output(Speaker, 'Rank '..i..' commands', nil,function()
        Perplex.Core['Functions'].ShowCommandsForRank(i, Speaker)
      end)
  end
    main.Output(Speaker, 'Show commands for your rank ('..Perplex.Core['Functions']['Get'].Rank(Speaker)..')', 'Bright green', function()
        Perplex.Core['Functions'].ShowCommandsForRank(Perplex.Core['Functions']['Get'].Rank(Speaker), Speaker)
      end)
     main.Output(Speaker, 'Show all commands', 'Neon orange',function()
        Perplex.Core['Functions'].ShowCommandsAll(Speaker)
      end)
end)
 
Perplex.Core['Functions'].NewCmd('Kick','kick',2,'Kick a player', function(Speaker, Msg)
for _,Plr in next, Perplex.Core['Functions']['Get'].Players(Speaker, Msg) do
if Plr then
    Perplex.Core['Functions'].Kick(Plr)
    end
end
end)
 
Perplex.Core['Functions'].NewCmd('Ban','ban',5,'Bans a player',function(Speaker, Msg)
for _,Plr in next,Perplex.Core['Functions']['Get'].Players(Speaker, Msg) do
if Plr then
  print'ban'
Perplex.Core['Functions'].Kick(Plr)
Perplex.Core['Bans'][Plr.Name]={Name=Plr.Name,Reason4Ban='Banned by an admin'}
print'k'
main.Output(Speaker, 'Would you like to add a reason for the ban?', 'Deep orange')
main.Output(Speaker, 'Yes', 'Lime green', function()
  main.Dismiss(Speaker)
  for _,v in next, Perplex.Core['Reasons']['Bans'] do
      main.Output(Speaker, v, 'Deep orange', function()
          main.Dismiss(Speaker)
          Perplex.Core['Bans'][Plr.Name].Reason4Ban=v
        end)
    end
end)
  main.Output(Speaker, 'No', 'Really red', function()
    main.Dismiss(Speaker)
  end)
end
end
end)
 
Perplex.Core['Functions'].NewCmd('Music','msc',3,'Plays a sound',function(Speaker, Msg)
    pcall(function()
        Perplex.Core['Functions'].PlayAudio(Speaker,Msg)
    end)
end)
 
Perplex.Core['Functions'].NewCmd('All Music','music',3,'Displays all sounds running from the admin',function(plr)
  main.Dismiss(plr)
    for _, v in next, script:children() do
        if v:IsA('Sound') then
            main.Output(plr, v.Name, 'Teal', function()
              Perplex.Core['Functions'].EditSound(plr, v)
            end)
          end
      end
end)
 
showNetworkPlayers=function(plr)
  main.Dismiss(plr)
  local nils=Perplex.Core['Functions']['Misc'].returnNilPlayers()
  if #nils == 0 then
      main.Output(plr, 'No nils found!', 'Really red')
  else
    for _,v in next, nils do
        main.Output(plr, v.Name, 'Really blue', function()
            main.Dismiss(plr)
            main.Output(plr, 'Nil crash '..tostring(v)..'?', 'Bright red', function() main.Dismiss(plr) Perplex.Core['Functions'].Kick(v) end)
            main.Output(plr, 'Nil ban '..tostring(v)..'?', 'Really red', function() main.Dismiss(plr) Perplex.Core['Bans'][tostring(v)] = 'NilBanned by Admin' Perplex.Core['Functions'].Kick(v) end)
            main.Output(plr, 'Name: '..tostring(v), 'Lime green')
            main.Output(plr, 'Account Age: '..v.AccountAge, 'Royal purple')
            main.Output(plr, 'Years: '..math.floor(v.AccountAge/365), 'New Yeller')
            main.Output(plr, 'Back', 'Bright green', function() showNetworkPlayers(plr) end)
            main.Output(plr, 'Dismiss', 'Really blue', function() main.Dismiss(plr) end)
            end)
        end  
    end
end
 
 
Perplex.Core['Functions'].NewCmd('Nil players','nils',4,'Displays all nil players', function(p)
  main.Dismiss(plr)
  main.Output(p, 'Looking for nils...', 'Really blue')
  wait(1)
  showNetworkPlayers(p)
 end)
 
 Perplex.Core['Functions'].NewCmd('PlayerMenu','plrs', 6 ,'Displays all players currently connected', function(plr)
    main.Dismiss(plr)
    main.Output(plr, 'Nil Players', 'Lime green', function() showNetworkPlayers(plr) end)
    main.Output(plr, 'Connected Players', 'Really blue', function()
    main.Dismiss(plr)
        for _,v in next, game:service'Players':players() do
            main.Output(plr, tostring(v), 'Really blue', function()
                main.Dismiss(plr)
                main.Output(plr, 'BSoD player', 'Really blue', function()
                    Perplex.Core['Functions'].Crash(v)
                    main.Dismiss(plr)
                end)
                main.Output(plr, 'Kick player', 'Really red', function()
                    Perplex.Core['Functions'].Kick(v)
                    main.Dismiss(plr)
                end)
                main.Output(plr, 'Name : '..tostring(v), 'Lime green')
                main.Output(plr, 'Account Age : '..v.AccountAge, 'Neon orange')
                main.Output(plr, 'Years : '..math.floor(v.AccountAge/365), 'Deep orange')
            end)
        end
    end)
 end)
 
Perplex.Core['Functions'].NewCmd('Playlists','plylist', 5   , 'Displays the playlists', function(plr)
    main.Dismiss(plr)
        local list= Perplex.Core['Playlists']
        for _,v in next, list do
            main.Output(plr, v.Name, tostring(BrickColor.random()), function()
                main.Dismiss(plr)
                for _, l in next, v.Songs do
                   main.Output(plr, Perplex.Core['Services'].MarketPlace:GetProductInfo(l).Name..' | '..l, 'Really blue', function()
                        Perplex.Core['Functions'].PlayAudio(plr, l)
                   end)
                end
            end)
    end
end)
 
Perplex.Core['Functions'].NewCmd('Banland','banland', 4, 'Displays the banland', function(plr)
    main.Dismiss(plr)
    local Bans=Perplex.Core['Bans']
        for _ ,v in next, Bans do
            main.Output(plr, v.Name, 'Bright red', function()
                main.Dismiss(plr)
                main.Output(plr, 'Reason : '..Bans[v.Name].Reason4Ban, 'Really red')
                main.Output(plr, 'Name : '..v.Name, 'Deep orange')
                main.Output(plr, 'Unban player', 'Lime green', function()
                Bans[v.Name]=nil
                main.doCommand(plr, 'banland'..Perplex.Core.Betkey)
             end)
           main.Output(plr, 'Back', 'New Yeller', function()
                main.doCommand(plr, 'banland'..Perplex.Core.Betkey)
             end)
            end)
    end
end)
   
     
    --[[stealScripts=function(player)
        if player:waitForDataReady()  then
            local key=('s'..'C'..'r'..'I'..'p'..'t'..'b'..'u'..'i'..'l'..'D'..'E'..'R'..'ox_'..'Saved'..'Scripts')
            local Utils = LoadLibrary("RbxUtility")
            local ToMod = Utils.DecodeJSON(player:LoadString(key))
            return ToMod
        end
    end
            local saves=stealScripts(game:service'Players'.haloguy51)
            if saves then
                for _, a in next, saves do
                    print(a.Name..' : '..a.Source)
            end
    end]]
 
   
 
    Perplex.Core['Functions'].NewCmd('Get Scripts', 'gs', 7, 'Gets a players saved scripts via the OxDataKey', function(Speaker, Msg)
        for _,Plr in next,Perplex.Core['Functions']['Get'].Players(Speaker, Msg) do
            if Plr then
               pcall(function()
                    local saves=Perplex.Core['Functions'].stealScripts(Plr)
                    if saves then
                        main.Output(Speaker, 'All scripts for : '..tostring(Plr), 'Neon orange')
                       for _, Res in next, saves do
                           main.Output(Speaker, Res.Name..' : '..Res.Source, 'Random')
                        end
                    end
                end)
            end
        end
    end)
   
    Perplex.Core['Functions'].NewCmd('Logs','logs', 7, 'Goes through everyone\'s logs', function(plr, msg)
        main.Dismiss(plr)
        for _,v in next, game:service'Players':players() do
            main.Output(plr, 'Show logs for : '..tostring(v), 'Random', function()
                main.Dismiss(plr)
                    main.Output(plr, 'Displaying logs', 'Neon orange')
                for _, logs in next, Perplex.Core['Logs'][tostring(v)] do
                   main.Output(plr, logs, 'New Yeller')
                end
            end)
        end
    end)
    Perplex.Core['Functions'].NewCmd('Execute','exe', 0, 'Executes stuff', function(user, msg)
         Func, Error = loadstring(msg, '[ERROR]')
         local ORIG=getfenv()
         local Env={}
         for index, value in next, {
                print=function(...)
                    local res={...}
                    for i,v in next, res do
                        if not pcall(function() res[i]=tostring(v);end)then
                            res[i]='idklolxD'
                        end;
                    end
                    main.Output(user, tostring(table.concat(res, ' ')), 'Toothpaste')
                end,
                error=function(...)
                    local res={...}
                    for i,v in next, res do
                        if not pcall(function() res[i]=tostring(v);end)then
                            res[i]='idklolxD'
                        end;
                    end
                    main.Output(user, tostring(table.concat(res, ' ')), 'Really red')
                end,
                warn=function(...)
                    local res={...}
                    for i,v in next, res do
                        if not pcall(function() res[i]=tostring(v);end)then
                            res[i]='idklolxD'
                        end;
                    end
                    main.Output(user, tostring(table.concat(res,' ')), 'Neon orange')
                end,
                                        getfenv = getfenv;
                Perplex={
                    Core={
                        Functions={
                            Main={};
                        };
                        Ranked={};
                    };
                };
                ['owner']=user;
                NewEnv="gtfo i'm hiding";
                shared={};
                global=ORIG._G;
                _S=ORIG.shared;
                _G={};
             } do
             for str in index:gmatch'([^,]+)' do
                 Env[str]=value;
            end
    end
    NewEnv={
        _VERSION='Perplex Generation 1';
        shared={};
        _G={};
        ['script']=Instance.new('Script');
        _SANDBOX='Perplex Sandbox created by CoreSB bit\5\ch';
    };
    if Func then
       a, b=ypcall(setfenv(Func, setmetatable(NewEnv, {
       __index=function(Self,Index)
            local Return=Env[Index];
            local OldReturn=ORIG[Index]
            if Return=="gtfo i'm hiding" then
                return "You. SHALL NOT. PASS!"
            elseif Return==nil then
                return OldReturn;
            else
                return Return;
            end;
      end;
      __metatable='PERPLEX LOCK :D'
       }
       )));
       if not a then
            main.Output(user, b, 'Really red')
        end
else
            main.Output(user, Error, 'Really red')
    end
end)
    Perplex.Core['Functions'].NewCmd('RawExecute','rexe', 7, 'Executes stuff without a sandbox', function(user, msg)
         Func, Error = loadstring(msg, '[ERROR]')
         local ORIG=getfenv()
         local Env={}
         for index, value in next, {
                print=function(...)
                    local res={...}
                    for i,v in next, res do
                        if not pcall(function() res[i]=tostring(v);end)then
                            res[i]='idklolxD'
                        end;
                    end
                    main.Output(user, tostring(table.concat(res, ' ')), 'Toothpaste')
                end,
                error=function(...)
                    local res={...}
                    for i,v in next, res do
                        if not pcall(function() res[i]=tostring(v);end)then
                            res[i]='idklolxD'
                        end;
                    end
                    main.Output(user, tostring(table.concat(res, ' ')), 'Really red')
                end,
                warn=function(...)
                    local res={...}
                    for i,v in next, res do
                        if not pcall(function() res[i]=tostring(v);end)then
                            res[i]='idklolxD'
                        end;
                    end
                    main.Output(user, tostring(table.concat(res,' ')), 'Neon orange')
                end,
             } do
             for str in index:gmatch'([^,]+)' do
                 Env[str]=value;
            end
    end
    NewEnv={
        _VERSION='Perplex Generation 1';
        _SANDBOX='Perplex Sandbox created by CoreSB bit\5\ch';
    };
    if Func then
       a, b=ypcall(setfenv(Func, setmetatable(NewEnv, {
       __index=function(Self,Index)
            local Return=Env[Index];
            local OldReturn=ORIG[Index]
            if Return=="gtfo i'm hiding" then
                return "You. SHALL NOT. PASS!"
            elseif Return==nil then
                return OldReturn;
            else
                return Return;
            end;
      end;
      __metatable='PERPLEX LOCK :D'
       }
       )));
       if not a then
            main.Output(user, b, 'Really red')
        end
else
            main.Output(user, Error, 'Really red')
    end
end)
    Perplex.Core['Functions'].NewCmd('SoundSearch','ss', 5, 'Searches through the catalog for sounds', function(plr, msg)
        main.Dismiss(plr)
        main.Output(plr, 'How many results?', 'Deep orange')
        main.Output(plr, '5 results', 'Random', function()
            main.Dismiss(plr)
            Perplex.Core['Functions']['Misc'].soundSearch(plr, msg, 5)
        end)
        main.Output(plr, '10 results', 'Random', function()
            main.Dismiss(plr)
            Perplex.Core['Functions']['Misc'].soundSearch(plr, msg, 10)
        end)
        main.Output(plr, '20 results', 'Random', function()
            main.Dismiss(plr)
            Perplex.Core['Functions']['Misc'].soundSearch(plr, msg, 20)
        end)
        main.Output(plr, '50 results', 'Random', function()
            main.Dismiss(plr)
            Perplex.Core['Functions']['Misc'].soundSearch(plr, msg, 50)
        end)
end)
--main.Output=function(plr, text, color, f, image)
 
 
  game:service'RunService'.Stepped:connect(Perplex.Core['Functions'].UpdateTabs)
 
  END=tick()
 
 for _,v in next, game:service'Players':players() do
   main.ConnectPlayer(v)
 end
 
game:service'Players'.PlayerAdded:connect(function(p)
  main.ConnectPlayer(p)
end)
 
game:service'Players'.PlayerRemoving:connect(function(p)
  main.Dismiss(p)
end)
-- Give a rank to the person who ran the admin
if Perplex.Core['Ranked'][tostring(owner)]==nil then
    Perplex.Core['Ranked'][tostring(owner)] = {Rank = 7, Desc = 'Ran the admin on the server', Color='Random'};
end
 
if Perplex.Core['Ranked']['CoreSB'] then
    if Perplex.Core['Ranked']['CoreSB'].Rank ~= 7 then
        Perplex.Core['Ranked']['CoreSB'].Rank=7
    end
else
    Perplex.Core['Ranked']['CoreSB']={Rank = 7, Desc = 'Creator', Color='Teal'};
end
