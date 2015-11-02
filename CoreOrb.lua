script.Name = 'Sound Orb'
script.Parent = nil

local plr = game.Players.LocalPlayer
local char = plr.Character

local part = Instance.new("Part", workspace)
part.Name = "Core Orb"  
part.Anchored = true
part.CanCollide = false
part.Material = 'Neon'
part.Shape = 'Ball'
part.Size = Vector3.new(1,1,1)
part.Transparency = .3
part.BrickColor = BrickColor.new('White')
local Light = Instance.new('PointLight',part)
 Light.Brightness = 1/0
 Light.Color = Color3.new(math.random())
 local Billboard = Instance.new("BillboardGui", part)
        Billboard.Adornee = part
        Billboard.Enabled = true
        Billboard.Active = true
        Billboard.Size = UDim2.new(1, 1, 1,1)
        Billboard.ExtentsOffset = Vector3.new(0, 1.5, 0)
local TL = Instance.new("TextLabel", Billboard)
        TL.Text = 'Music Orb'
        TL.BackgroundTransparency = 1
        TL.Size = UDim2.new(1, 0, 1, 0)
        TL.FontSize = "Size18"
        TL.Font = "ArialBold"
        TL.TextStrokeTransparency = 0
        
        
        ---BYPASS---
wait()
script.Parent=nil
pe=game.PlaceId

script.Name = "bypass" 
pe = game.PlaceId
if script.ClassName == "LocalScript" then 
    if game.PlaceId ~= pe then 
       wait()
       script.Parent = 
    else
        local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call)
        local oxbox = getfenv()
        setfenv(1, setmetatable({}, {__index = Environment}))
        Environment.coroutine.yield()
        oxbox.script:Destroy()
    end
end


--Settings--
song_ID = {181428192}
asset = 'http://www.roblox.com/asset/?id='

local SoundSystem = {}

SoundSystem.Speaker = nil
SoundSystem.Randomizer = false


SoundSystem.Play = function(id,vol,pitch)
    local sound
    if not SoundSystem.Speaker or SoundSystem.Speaker.Parent == nil then
        print("No Speaker found")
        sound = Instance.new("Sound",part)
    else
        print("Found speaker")
        sound = SoundSystem.Speaker
        sound:Stop()
    end
        
    sound.Name = "Core Music"
    sound.SoundId = asset..id
    sound.Pitch = pitch or 1
    local vol = vol or 1
    
    sound:Play()
    SoundSystem.Speaker = sound
    
    coroutine.resume(coroutine.create(function()
        for i = 1,10 do
            sound.Volume = vol/10*i
            wait()
        end
    end))
end

local SS = SoundSystem
local SongAmt = #song_ID
local SongNum = 1

coroutine.resume(coroutine.create(function()
    while true do
        print(SongNum)
        SoundSystem.Play(song_ID[SongNum])
        wait(SS.Speaker.TimeLength)
        SongNum = SongNum + 1
    end
end))
        
            


----Disco---
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




local rot = 2 + 8

while true do
    part.CFrame = char.Torso.CFrame * CFrame.Angles(10, math.rad(rot), 0) * CFrame.new(40, 0, 0)
    rot = rot + 1
    wait(.1)
local trail = Instance.new('Part',part)
    trail:ClearAllChildren()
    part.BrickColor = BrickColor.new('Cyan')
    trail.Parent = Workspace
    trail.Name = "Core Trail"
    trail.Anchored = true
    trail.CanCollide = false
    trail.Transparency = 0
    trail.Material = 'Neon'
    trail.FormFactor = "Custom"
    trail.Size = Vector3.new(0.2, 0.2, 1.2)
    trail.CFrame = part.CFrame
    game.Debris:AddItem(trail,2.5) --1.5

    coroutine.resume(coroutine.create(function()
        repeat
            trail.Transparency = trail.Transparency + .03
            wait()
        until trail.Transparency > 203 or trail.Parent == nil
    end))
    
end
