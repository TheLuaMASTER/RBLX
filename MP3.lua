print 'Loading Playlist'

local hint = Instance.new('Hint', Workspace) -- Insert a new hint in the Workspace.
hint.Text = "CoreSB MP3 Player with 12 Songs V.0.4 WIP" -- Set the text of the hint to "Hello World!".

------------------------------------[[PLAYLIST]---------------------------------------------------------------------------------------------------------------------

song1 = "http://www.roblox.com/asset/?id=142720946" --insert the ID number after the "/?id="
song2 = "http://www.roblox.com/asset/?id=152779074"
song3 = "http://www.roblox.com/asset/?id=143959455"
song4 = "http://www.roblox.com/asset/?id=142351244"
song5 = "http://www.roblox.com/asset/?id=155425213"
song6 = "http://www.roblox.com/asset/?id=142683453"
song7 = "http://www.roblox.com/asset/?id=146812220"
song8 = "http://www.roblox.com/asset/?id=142489916"
song9 = "http://www.roblox.com/asset/?id=145579822"
song10 = "http://www.roblox.com/asset/?id=145915908"
song11 = "http://www.roblox.com/asset/?id=146180801"
song12 = "http://www.roblox.com/asset/?id=148492408"

-----------------------------------[[SUGGESTIONS]]----------------------------------------------------------------------------------------------------------------------------------

--[[Here are some suggested ID's for you, Note these are mostly club/Dubstep songs
	1.145060711
	2.146180801
	3.152357361
	4.152357361	
	5.145579822
	6.148492408
	7.142720946
	8.142372565
	9.152779074
	10.145915908
	11.138855854
--]]

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
print 'Creating a Source of Audio'
local music = Instance.new("Sound") -- This creates the sound. Since this is an Independent Variable, You should not change it at all.
music.Archivable = true -- This MUST be true or you may have some problems.
print 'Inspecting the Configurable Variables'

------------------------------------------CONFIGURABLE VARIABLES]]------------------------------------------------------------------------------

music.Parent = script.Parent -- This is where the sound will be placed. If you want the sound to be heard everywhere, don't change it or put it into Workspace.
-- 										 If you want the sound to be heard in one spot, put it in a brick
--
music.Pitch = 1 -- Pitch manages the Pitch and Speed of the Sound. Pitch 1 is the normal sound, although some sounds have a problem that they are slow, increase this
--                 value so you can hear the original. There is a list of official pitches for songs named "Official Pitches".
--                 Adding multiple Pitches will require a bit of work, so if your a beginner, just stick with one pitch for now.
--
music.Volume = 1 -- This determines how loud the music will be. If this is being heard in one spot, this can configure how far you can hear the sound.
--                    The maximum is 1. Volumes set above 1 will be unaffected. 
--                    For music heard across the game, if you have other sounds, put this to 0.9 or 1, otherwise you won't hear your music because of the other sounds
--
music.Looped = false -- This determines if the sound will repeat forever. If you have more than one sound, you MUST set this to false, otherwise you will be able to
--                     have problems with pausing and playing
--
music.Name = "Player" -- This determines the name of the source of Audio. Name it whatever you want.
--
--
-------------------[[SONGS PLAYER]]---------------------------------------------------------------------------

--Only touch if you need to change the length of wait for a song.

print 'Loading MP4 1.0'
while (true) do
	print 'Playing Sound 1'
music.SoundId = song1 

music:play()
wait(130) 
	--2--
	print 'Playing Sound 2'
music.SoundId = song2
music:play() 
wait(130)
	--3--
	print 'Playing Sound 3'
music.SoundId = song3
music:play() 
wait(130)
	--4--
	print 'Playing Sound 4'
music.SoundId = song4
music:play() 
wait(130)
	--5--
        print 'Playing Sound 5'
music.SoundId = song5
music:play() 
wait(130)
	--6--
	print 'Playing Sound 6'
music.SoundId = song6
music:play() 
wait(130)
	--7--
	print 'Playing Sound 7'
music.SoundId = song7
music:play() 
wait(130)
	--8--
	print 'Playing Sound 8'
music.SoundId = song8
music:play() 
wait(130)
	--9--
	print 'Playing Sound 9'
music.SoundId = song9
music:play() 
wait(130)
	--10--
	print 'Playing Sound 10'
music.SoundId = song10
music:play() 
wait(130)
	--11--
	print 'Playing Sound 11'
music.SoundId = song11
music:play() 
wait(130)
--12--
	print 'Playing Sound 12'
music.SoundId = song12
music:play() 
wait(130)

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{
--Made by NotSoNorm, If you have any questions or concerns just shoot me a PM via Roblox or Twitter.
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~{

end

