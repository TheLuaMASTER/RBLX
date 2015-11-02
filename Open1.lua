--[[
Made: CoreSB
Open Source!
]]


local RunService = game:service'RunService'
local Camera = Workspace.CurrentCamera or nil'
local Version = "V4.1.5"

local Player = game.Players.coresb --You'r Name Here
local bannedlist = {"DontNukeMe"};
local bannedlist = {"DontNukeMe"};
local changecamonpossess = false
local Debris = game:service'Debris'
local Mouse = Player:GetMouse() or nil
local Players = game.Players
local chatAdornee = Player.Character.Head
local RbxUtility = LoadLibrary("RbxUtility")
local CMDS = {};
local InsertService = game:service'InsertService'
local math = {
    abs = math.abs,
    acos = math.acos,
    asin = math.asin,
    atan = math.atan,
    atan2 = math.atan2,
    ceil = math.ceil,
    cos = math.cos,
    cosh = math.cosh,
    deg = math.deg,
    exp = math.exp,
    floor = math.floor,
    fmod = math.fmod,
    frexp = math.frexp,
    huge = math.huge,
    ldexp = math.ldexp,
    log = math.log,
    log10 = math.log10,
    max = math.max,
    min = math.min,
    modf = math.modf,
    phi = 1.618033988749895,
    pi = math.pi,
    pow = math.pow,
    rad = math.rad,
    random = math.random,
    randomseed = math.randomseed,
    sin = math.sin,
    sinh = math.sinh,
    sqrt = math.sqrt,
    tan = math.tan,
    tanh = math.tanh,
    tau = 2 * math.pi
}






 if script.ClassName == "LocalScript" then if game.PlaceId == 20279777 then script.Parent = nil else local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) Environment.coroutine.yield() oxbox.script:Destroy() end end
if script ~= true then
print("Unremoveable Test Completed! Works! This script is immune to g/nol/all or g/nos/all!")
else
print("Unremoveable Test Failed! This script is removable by g/nol/all or g/nos/all!")
end
