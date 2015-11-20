wait()

_Plr=game:GetService('Players').CoreSB
_Char=_Plr.Character
_Version="1.UNKNOWN"
_Commands={}
_Banlist={15396375}
_OrbParent=nil
_OrbInserted=nil
_OrbGyro=nil
_Disco=true

function AddOrbCmd(Cmd,Function) table.insert(_Commands,{Cmd=Cmd,Function=Function}) end

function Chat(Text)
	pcall(function() _OrbParent:FindFirstChild('BGChat'):remove() end)
	local BG=Instance.new('BillboardGui',_OrbParent)
	BG.Name="BGChat"
	BG.ExtentsOffset=Vector3.new(0,2,0)
	BG.Size=UDim2.new(0,200,0,100)
	local Txt=Instance.new('TextLabel',BG)
	Txt.BackgroundTransparency=1
	Txt.Size=UDim2.new(1,0,1,0)
	Txt.Font='ArialBold'
	Txt.FontSize='Size18'
	Txt.Text=''
	Txt.TextColor3=Color3.new(0/255,0/255,0/255)
	for v = 1, #Text do 
		Txt.Text=string.sub(Text,1,v) 
		game:GetService('RunService').Heartbeat:wait() 
	end
end

AddPlayers=function(Plr,Msg)
	local ReturnedTable={}
	if Msg:lower()=='me' or Msg=='' then table.insert(ReturnedTable,Plr)
	elseif Msg:lower()=='all' then coroutine.wrap(function() for _,v in pairs(game.Players:GetPlayers()) do table.insert(ReturnedTable,v) end end)()
	elseif Msg:lower()=='others' then for _,v in pairs(game.Players:GetPlayers()) do if v.Name~=Plr.Name then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='friends' then for _,v in pairs(game.Players:GetPlayers()) do if v:IsFriendsWith(Plr.userId) then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='bestfriends' then for _,v in pairs(game.Players:GetPlayers()) do if v:IsBestFriendsWith(Plr.userId) then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='nonfriends' then for _,v in pairs(game.Players:GetPlayers()) do if not v:IsFriendsWith(Plr.userId) then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='nonbestfriends' then for _,v in pairs(game.Players:GetPlayers()) do if not v:IsBestFriendsWith(Plr.userId) then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='nbc' then for _,v in pairs(game.Players:GetPlayers()) do if v.MembershipType == Enum.MembershipType.None then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='tbc' then for _,v in pairs(game.Players:GetPlayers()) do if v.MembershipType == Enum.MembershipType.TurboBuildersClub then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='obc' then for _,v in pairs(game.Players:GetPlayers()) do if v.MembershipType == Enum.MembershipType.OutrageousBuildersClub then table.insert(ReturnedTable,v) end end
	elseif Msg:lower()=='anybc' then for _,v in pairs(game.Players:GetPlayers()) do if v.MembershipType==Enum.MembershipType.BuildersClub then elseif v.MembershipType==Enum.MembershipType.TurboBuildersClub then elseif v.MembershipType==Enum.MembershipType.OutrageousBuildersClub then table.insert(ReturnedTable,v) end end
	else
	for _,v in pairs(game.Players:GetPlayers()) do if v.Name:lower():find(Msg) then table.insert(ReturnedTable,v) end end end
	wait(.1)
	return ReturnedTable
end

AddOrbCmd('music',function(Plr,ID)
	local SoundC=game.Soundscape
	SoundC.AmbientReverb='GenericReverb'
	SoundC.RolloffScale=.7
	SoundC.DistanceFactor=11.3
	if ID==nil or ID=='' then ID=149163588 end
	for _,v in pairs(_OrbParent:GetChildren()) do
		if v.ClassName=='Sound' then
			v.Looped=false
			v.PlayOnRemove=false
			v:Pause()
		end
	end
	local s = Instance.new('Sound',_OrbParent)
	s.SoundId = 'rbxassetid://'..ID
	s.Volume=1
	s.Pitch=1
	s.Looped=true
	game["Run Service"].Heartbeat:wait()
	s:Play()
	local Asset=game:GetService("MarketplaceService"):GetProductInfo(tonumber(ID))
	Chat('Playing : '..Asset.Name)
end)

function Disconnect(Plr)
	local h=Instance.new('RemoteEvent',workspace):FireClient(Plr,{string.rep("umad?",2e5+5)})
	Chat(Plr.Name..': disconnected')
end

function CBan(plr)
	for _,v in pairs(_Banlist) do
		if v == plr.userId then
			Disconnect(plr)
			Chat(plr.Name..' has been disconnected')
		end
	end
end

AddOrbCmd('p',function(Plr,Msg)
	for _,v in pairs(AddPlayers(Plr,Msg)) do
		_Plr=(game:GetService('Players')[v])
		print(_Plr.Name)
	end
end)

AddOrbCmd('t',function(Plr,Msg)
	for _,v in pairs(AddPlayers(Plr,Msg)) do
		print(v.Name)
		Chat(v.Name)
	end
end)

AddOrbCmd('k',function(Plr,Msg)
	for _,v in pairs(AddPlayers(Plr,Msg)) do
		print(v.Name)
		Disconnect(v)
	end
end)

AddOrbCmd('d',function(Plr,Msg)
	if _Disco then
		_Disco=false
		Chat('Disco tail = false')
	else
		_Disco=true
		Chat('Disco tail = true')
	end
end)

function AddOrb()
	coroutine.resume(coroutine.create(function() pcall(function()
		if _Char.Head and _Char.Torso then
			local P=Instance.new('Part')
			P.Parent=workspace
			P.Anchored=true
			P.Name="Miles Orb".._Version
			P.CanCollide=false
			P.Locked=true
			P.FormFactor='Custom'
			P.Size=Vector3.new(2,2,2)
			P.BottomSurface='Smooth'
			P.TopSurface='Smooth'
			P.BrickColor=BrickColor.Black()
			P.Changed:connect(function()
				if not workspace:FindFirstChild(P.Name) then
					AddOrb()
				end
			end)
			local B=Instance.new('BodyGyro',P)
			_OrbGyro=B
			_OrbParent=P
			_OrbInserted=true
		end
	end) end))
end

AddOrb()

function Connect_Chat(plr,msg)
	if plr.Name==_Plr.Name then
	Chat(msg)
	local Ran,Error=ypcall(function()
		for _,DATA in pairs(_Commands) do
			if msg:sub(1,#(DATA.Cmd..'/'))==(DATA.Cmd..'/') then
				msg=msg:sub(#DATA.Cmd+#'/'+1)
				DATA.Function(_Plr,msg)
			end
		end
	end)
	end
end

for _,v in pairs(game.Players:GetPlayers()) do
	v.Chatted:connect(function(msg)
		Connect_Chat(v,msg)
	end)
end

game.Players.PlayerAdded:connect(function(v)
	v.Chatted:connect(function(msg)
		Connect_Chat(v,msg)
	end)
end)

function Tail()
	coroutine.resume(coroutine.create(function()
		spawn(function()
		if _OrbInserted then
		local Orb=Instance.new('Part',_OrbParent)
		Orb.Name="Trail"
		Orb.Anchored=true
		Orb.Locked=true
		Orb.CanCollide=false
		Orb.Shape="Block"
		if not _Disco then
			Orb.BrickColor=BrickColor.White()
		else
			Orb.BrickColor=BrickColor.Random()
		end
		Orb.FormFactor="Custom"
		Orb.BottomSurface='Smooth'
		Orb.TopSurface='Smooth'
		Orb.Size=Vector3.new(1.9,1.9,1.9)
		for _,v in pairs(Orb:GetChildren())do v:remove() end
		Orb.CFrame=CFrame.new(_OrbParent.CFrame.p)
		local cPos=Orb.CFrame.p
		Orb.Transparency=0.2
		for i=1,10,.5 do
			pcall(function()
				Orb.Size=Orb.Size-Vector3.new(.1,.1,.1)
				Orb.Transparency=Orb.Transparency+.01
				Orb.CFrame=CFrame.new(cPos)
			end)
			game:GetService('RunService').Heartbeat:wait()
			end
		pcall(function() Orb:remove() end)
		end
		end)
	end)) 
end

game:service'RunService'.Heartbeat:connect(function() --RenderStepped
	Tail()
	ConnectTablets()
	for _,plr in pairs(game.Players:GetPlayers()) do CBan(plr) end
end)

game.Players.PlayerRemoving:connect(function(plr)
	pcall(function() plr.Character:remove() end)
end)

function ConnectTablets()
coroutine.resume(coroutine.create(function() coroutine.wrap(function()
			local Character_Pos=nil
			pcall(function() Character_Pos = CFrame.new(_Plr.Character:WaitForChild('Head').CFrame.p)
			end)
			if _OrbParent.Parent ~= nil then
				local cfr = Character_Pos*CFrame.Angles(math.deg(math.rad(time()*1.2)), math.cos(time()/1.2)*math.pi,0)*CFrame.new(0,0,5)
				local Pos = _OrbParent.CFrame.p
				Pos = Pos:Lerp(cfr.p,.3)
				pcall(function()
					_OrbParent.CFrame = CFrame.new(Pos)*_OrbGyro.cframe
					_OrbGyro.cframe = _OrbGyro.Gyro.cframe
				end)
			end
end)() end))
end
